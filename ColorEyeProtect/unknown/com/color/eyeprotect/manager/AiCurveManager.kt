package com.color.eyeprotect.manager

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.os.Handler
import android.os.Message
import android.os.UserHandle
import android.view.Choreographer
import com.color.common.util.LogUtil
import com.color.eyeprotect.ColorEyeProtectApp
import com.color.eyeprotect.R
import com.color.eyeprotect.curve.AICurveModel
import com.color.eyeprotect.model.CCTEntity
import com.color.eyeprotect.util.*
import com.color.eyeprotect.util.EyeProtectConstant.DEFAULT_THRESHOLD
import com.color.eyeprotect.util.EyeProtectConstant.ENABLE_ANIMATION_DURATION
import com.color.eyeprotect.util.EyeProtectConstant.EYE_START_TEMP
import com.color.eyeprotect.util.EyeProtectConstant.MIN_TEMP
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

class AiCurveManager {
    private lateinit var mAiCurveModel: AICurveModel
    private lateinit var mContext: Context
    private var mSpline: Spline? = null
    private var mCurrentCCT = ColorEyeProtectController.getDefaultTemp()
    private var mTargetValue = 0
    private var mAnimatedValue = 0
    private var isInit = false
    private var mRate = 0
    private var mMode = EyeProtectConstant.NORMAL_MODE
    private var mEnable = false;
    private var mAnimating = false
    private var mChoreographer:Choreographer = Choreographer.getInstance()

    private constructor()

    companion object {
        private const val TAG = "AiCurveManager"
        private const val AI_NODE_NAME = R.xml.screen_temperature_data
        private const val VSYNC_TIME = 16.6666

        val instance: AiCurveManager by lazy {
            var temp = AiCurveManager()
            temp.mContext = ColorEyeProtectApp.getsApplicationContext()
            temp.mSpline = AiCCTParseUtil.getAiSpline(temp.mContext, AI_NODE_NAME)
            temp
        }
    }

    private fun initAiCurveModel() {
        mAiCurveModel = AICurveModel(mContext, TAG)
        mAiCurveModel.setCallbackHandler(CallbackHandler(mContext))
        isInit = true
    }

    private fun setCCTByEnvironment(cct: Float) {
        if (isInit) {
            mAiCurveModel.setCCTFromEnvironment(cct)
        }
    }

    fun setCCTByUser(cct: Float) {
        if (isInit) {
            mAiCurveModel.setCCTByUser(cct)
        }
    }

    @JvmOverloads fun changeColorTemperatureRegulation(userId: Int = UserHandle.USER_CURRENT, forceClose: Boolean = false) {
        if (!forceClose && !isInit && ProtectEyesUtil.isOpenSettingColorTemperature(mContext.contentResolver, userId)) {
            initAiCurveModel()
            registerSensor()
        } else if (isInit) {
            unregisterSensor()
            release()
        }
    }

    private fun release() {
        mAiCurveModel.release()
        isInit = false
        update()
    }

    private fun registerSensor() {
        LogUtil.logD(TAG, "registerSensor")
        val manager = mContext.getSystemService(Context.SENSOR_SERVICE) as SensorManager?
                ?: return
        manager.registerListener(sensorEvent, manager.getDefaultSensor(EyeProtectConstant.SENSOR_COLOR_TEMPERATURE),
                SensorManager.SENSOR_DELAY_NORMAL)
    }

    private fun unregisterSensor() {
        LogUtil.logD(TAG, "unRegisterSensor")
        val manager = mContext.getSystemService(Context.SENSOR_SERVICE) as SensorManager?
                ?: return
        manager.unregisterListener(sensorEvent)
    }

    class CallbackHandler(context: Context) : Handler() {
        private var mContext = context.applicationContext
        override fun handleMessage(msg: Message) {
            when (msg.what) {
                AICurveModel.MSG_ON_TARGET_BRIGHTNESS_CHANGED -> {
                    val cct = (msg.obj as Float).toInt()
                    LogUtil.logD(TAG, "msg_on_target_changed_ai: $cct")
                    ProtectEyesUtil.setSettingColorTemperatureValue(mContext.contentResolver, cct)
                    instance.update()
                }
            }
        }
    }

    fun isAnimation():Boolean {
        return mAnimating
    }

    fun updateMode(mode:Int) {
        this.mMode = mode
        this.mEnable = ProtectEyesUtil.isProtectEyesOpen(mContext.contentResolver)
    }

    private fun update() {
        var mode = EyeProtectConstant.NORMAL_MODE
        var enable:Boolean
        var eyeProtectCCT =
                if (ProtectEyesUtil.isProtectEyesOpen(mContext.contentResolver)) {
                    enable = true
                    mode = ColorEyeProtectController.getInstance(mContext).mode
                    ColorEyeProtectController.getInstance(mContext).levelToCCT(ProtectEyesUtil.getEyeProtectSavedLevel(mContext.contentResolver).toDouble())
                } else {
                    enable = false
                    var displayLevel = ProtectEyesUtil.getDisplayLevel(mContext)
                    ColorEyeProtectController.getInstance(mContext).levelToCCT(displayLevel.toDouble())
                }

        var cctEntity = CCTEntity(enable, mode, eyeProtectCCT, ENABLE_ANIMATION_DURATION)
        updateCCT(cctEntity)
    }

    fun updateCCT(cctEntity: CCTEntity) {
        LogUtil.logD(TAG, "update cctEntity-->$cctEntity   default:${ColorEyeProtectController.getDefaultTemp()}")
        if (!cctEntity.byUserDrag && abs(cctEntity.mEyeProtectCCT - ColorEyeProtectController.getDefaultTemp()) <= DEFAULT_THRESHOLD) {
            cctEntity.mEyeProtectCCT = CCTEntity.DEFAULT_CCT
        }
        var autoTemperature = if (ProtectEyesUtil.isOpenSettingColorTemperature(mContext.contentResolver, cctEntity.userId)) {
            ProtectEyesUtil.getSettingColorTemperatureValue(mContext.contentResolver, ColorEyeProtectController.getDefaultTemp(), cctEntity.userId)
        } else {
            CCTEntity.DEFAULT_CCT
        }
        LogUtil.logD(TAG, "update autoTemperature-->$autoTemperature")

        var eyeProtectCCT = cctEntity.mEyeProtectCCT

        if (autoTemperature != CCTEntity.DEFAULT_CCT && eyeProtectCCT != CCTEntity.DEFAULT_CCT) {
            eyeProtectCCT = autoScreenTemperatureAndByUser(autoTemperature, eyeProtectCCT)
        } else if (autoTemperature != CCTEntity.DEFAULT_CCT) {
            eyeProtectCCT = mSpline?.interpolate(autoTemperature.toFloat())?.toInt() ?: CCTEntity.DEFAULT_CCT
        }

        if (eyeProtectCCT == CCTEntity.DEFAULT_CCT) {
            eyeProtectCCT = ColorEyeProtectController.getDefaultTemp()
        }
        LogUtil.logD(TAG, "mapping after CCT:$eyeProtectCCT")
        mMode = cctEntity.mMode;
        mEnable = cctEntity.mEnable
        if (cctEntity.mAnimationDuring == CCTEntity.NO_ANIMATION) {
            mCurrentCCT = eyeProtectCCT
            showCCTToScreen(eyeProtectCCT)
        } else {
            animation(eyeProtectCCT, cctEntity.mAnimationDuring)
        }
    }

    private fun animation(targetCCT: Int, animationDuring:Long) {
        mTargetValue = targetCCT
        mRate = (abs(mTargetValue - mCurrentCCT) * VSYNC_TIME / animationDuring).toInt()
        if (mRate == 0) {
            mRate = 1
        }
        LogUtil.logD(TAG, "current: $mCurrentCCT  target:$mTargetValue  mRate:$mRate")
        if (!mAnimating && mCurrentCCT != mTargetValue) {
            mAnimating = true
            mAnimatedValue = mCurrentCCT
            postAnimationCallback()
        } else if (!mAnimating) {
            showCCTToScreen(mTargetValue)
        }
    }

    private fun autoScreenTemperatureAndByUser(autoScreenTemperatureCCT: Int, byUserCCT: Int): Int {
        var cct = (byUserCCT - (byUserCCT - 1200) / 5.0 * (6500 - autoScreenTemperatureCCT) / 3800.0).toInt()
        if (byUserCCT in MIN_TEMP..EYE_START_TEMP) {
            var autoShowLevel = mSpline?.interpolate(autoScreenTemperatureCCT.toFloat())?.toInt()
                    ?: autoScreenTemperatureCCT
            cct = if (cct > autoShowLevel) autoShowLevel else cct
        }
        return cct
    }

    private val sensorEvent = object : SensorEventListener {
        override fun onSensorChanged(sensorEvent: SensorEvent) {
            if (sensorEvent.values != null && sensorEvent.values.isNotEmpty()) {
                setCCTByEnvironment(sensorEvent.values[0])
            }
        }

        override fun onAccuracyChanged(sensor: Sensor, value: Int) {
            LogUtil.logD(TAG, "onAccuracyChanged: $value")
        }
    }

    private fun postAnimationCallback() {
        mChoreographer.postCallback(Choreographer.CALLBACK_ANIMATION, mAnimationCallback, null)
    }

    private val mAnimationCallback = Runnable {
        mAnimatedValue = if (mTargetValue > mCurrentCCT) {
            min(mAnimatedValue + mRate, mTargetValue)
        } else {
            max(mAnimatedValue - mRate, mTargetValue)
        }
        val oldCurrentValue = mCurrentCCT
        mCurrentCCT = if (mAnimatedValue < 0) 0 else mAnimatedValue
        if (oldCurrentValue != mCurrentCCT) {
            val rgb = CCTCoefficientUtil.interpolate(mCurrentCCT.toFloat())
            ColorReduceSaturationUtil.setRGB(rgb.red, rgb.green, rgb.blue, mContext, if (!mEnable) EyeProtectConstant.NORMAL_MODE else mMode)
        }
        if (mTargetValue !== mCurrentCCT) {
            postAnimationCallback()
        } else {
            mAnimating = false
            showCCTToScreen(mTargetValue)
        }
    }

    private fun showCCTToScreen(cct:Int) {
        var mode = if (!mEnable) EyeProtectConstant.NORMAL_MODE else mMode
        if (abs(cct - ColorEyeProtectController.getDefaultTemp()) <= DEFAULT_THRESHOLD) {
            ColorReduceSaturationUtil.setDefaultMatrix(mContext)
            LogUtil.logD(TAG, "setDefalut CCT")
        } else {
            val rgb = CCTCoefficientUtil.interpolate(cct.toFloat())
            ColorReduceSaturationUtil.setRGB(rgb.red, rgb.green, rgb.blue, mContext, mode)
            LogUtil.logD(TAG, "setCCT $cct    mode:$mode")
        }
    }
}