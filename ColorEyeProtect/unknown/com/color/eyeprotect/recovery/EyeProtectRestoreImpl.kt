package com.color.eyeprotect.recovery

import android.content.Context
import com.color.common.recovery.ICommonRestoreInterface
import com.color.common.util.LogUtil
import com.color.eyeprotect.util.EyeProtectConstant

class EyeProtectRestoreImpl : ICommonRestoreInterface {
    companion object {
        const val TAG = "EyeProtectRestoreImpl"
    }

    private lateinit var mRecoveryData: EyeProtectRestoreData
    override fun onRestore(context: Context) {
        if (::mRecoveryData.isInitialized) {
            EyeProtectXmlComposer.restoreEyeProtectData(context, mRecoveryData)
            LogUtil.logD(TAG, "onRestore finish")
        } else {
            LogUtil.logD(TAG, "onRestore error")
        }
    }

    override fun onRestoreTempData(context: Context, line: String) {
        if (!::mRecoveryData.isInitialized) {
            mRecoveryData = EyeProtectRestoreData()
            LogUtil.logD(TAG, "onRestoreTempData-->mIsRecovery change to true")
        } else {
            LogUtil.logD(TAG, "onRestoreTempData")
        }
        val splitLength = EyeProtectXmlComposer.DATA_SPLIT.length
        when {
            line.startsWith(EyeProtectConstant.SETTING_ENABLE_COLOR_TEMPERATURE_REGULATION) -> mRecoveryData.autoColorTemperatureEnable = line.substring(EyeProtectConstant.SETTING_ENABLE_COLOR_TEMPERATURE_REGULATION.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.COLOR_EYEPROTECT_SAVED_LEVEL) -> mRecoveryData.colorEyeProtectSaveLevel = line.substring(EyeProtectConstant.COLOR_EYEPROTECT_SAVED_LEVEL.length + splitLength).toFloat()
            line.startsWith(EyeProtectConstant.EYEPROTECT_ENABLE) -> mRecoveryData.eyeProtectEnable = line.substring(EyeProtectConstant.EYEPROTECT_ENABLE.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.DISPLAY_MODE_CHANGE) -> mRecoveryData.displayModeChange = line.substring(EyeProtectConstant.DISPLAY_MODE_CHANGE.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.EYEPROTECT_START_VALUE_KEY) -> mRecoveryData.startLevel = line.substring(EyeProtectConstant.EYEPROTECT_START_VALUE_KEY.length + splitLength).toFloat()
            line.startsWith(EyeProtectConstant.EYEPROTECT_NORMAL_ENABLE) -> mRecoveryData.normalEnable = line.substring(EyeProtectConstant.EYEPROTECT_NORMAL_ENABLE.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.EYEPROTECT_GRAY_ENABLE) -> mRecoveryData.grayEnable = line.substring(EyeProtectConstant.EYEPROTECT_GRAY_ENABLE.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.FIX_TIME_STATE) -> mRecoveryData.fixTimeState = line.substring(EyeProtectConstant.FIX_TIME_STATE.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.EYEPROTECT_BEGIN_TIME_HOUR) -> mRecoveryData.beginTimeHour = line.substring(EyeProtectConstant.EYEPROTECT_BEGIN_TIME_HOUR.length + splitLength).toInt()
            line.startsWith(EyeProtectConstant.EYEPROTECT_BEGIN_TIME_MIN) -> mRecoveryData.beginTimeMin = line.substring(EyeProtectConstant.EYEPROTECT_BEGIN_TIME_MIN.length + splitLength).toInt()
            line.startsWith(EyeProtectConstant.EYEPROTECT_END_TIME_HOUR) -> mRecoveryData.endTimeHour = line.substring(EyeProtectConstant.EYEPROTECT_END_TIME_HOUR.length + splitLength).toInt()
            line.startsWith(EyeProtectConstant.EYEPROTECT_END_TIME_MIN) -> mRecoveryData.endTimeMin = line.substring(EyeProtectConstant.EYEPROTECT_END_TIME_MIN.length + splitLength).toInt()
            line.startsWith(EyeProtectConstant.EYEPROTECT_FIX_TIME_CHANGE) -> mRecoveryData.fixTimeChange = line.substring(EyeProtectConstant.EYEPROTECT_FIX_TIME_CHANGE.length + splitLength).toBoolean()
            line.startsWith(EyeProtectConstant.EYEPROTECT_TIMER_ACTIVE_TIME) -> mRecoveryData.activeTime = line.substring(EyeProtectConstant.EYEPROTECT_TIMER_ACTIVE_TIME.length + splitLength)
            line.startsWith(EyeProtectConstant.SHOW_PROTECT_EYES_GUIDE_DIALOG) -> mRecoveryData.showGuidDialog = line.substring(EyeProtectConstant.SHOW_PROTECT_EYES_GUIDE_DIALOG.length + splitLength).toInt()
            line.startsWith(EyeProtectConstant.EYEPROTECT_ENABLE_TIME) -> mRecoveryData.eyeProtectEnableTime = line.substring(EyeProtectConstant.EYEPROTECT_ENABLE_TIME.length + splitLength).toLong()
        }
    }
}