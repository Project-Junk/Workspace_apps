/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - PhoneStatusBarViewEx.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/07/23
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/07/12     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.phone

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.content.Context
import android.content.res.Configuration
import android.content.res.Configuration.ORIENTATION_PORTRAIT
import android.content.res.Configuration.ORIENTATION_UNDEFINED
import android.os.Handler
import android.os.Looper
import android.util.AttributeSet
import android.view.Gravity
import android.view.MotionEvent
import android.view.Surface
import android.view.animation.PathInterpolator
import android.widget.LinearLayout
import com.android.systemui.Dependency
import com.android.systemui.R
import com.android.systemui.statusbar.phone.PhoneStatusBarView
import com.coloros.common.util.LogUtil
import com.coloros.systemui.common.helper.ScreenSizeHelper
import com.coloros.systemui.common.manager.ColorOSSystemUiManager
import com.coloros.systemui.common.statusbar.feature.StatusBarFeatureOption
import com.coloros.systemui.common.util.ScreenUtils
import com.coloros.systemui.notification.NotificationCenterManager
import com.coloros.systemui.notification.helper.PanelPullHelper
import com.coloros.systemui.statusbar.helper.StatusBarHelper
import com.coloros.systemui.statusbar.utils.Anim5GController
import com.coloros.systemui.statusbar.policy.CirCleBatteryController
import com.coloros.systemui.statusbar.utils.StatusBarUtils
import com.coloros.systemui.statusbar.widget.CircleBatteryView
import kotlinx.android.synthetic.oppo.status_bar.view.*
import kotlinx.android.synthetic.main.coloros_system_icons.view.*

class PhoneStatusBarViewEx(context: Context, attrs: AttributeSet) :
        PhoneStatusBarView(context, attrs), Anim5GController.Callback, CircleBatteryView.BatteryChangeListener {
    companion object {
        private const val TAG = "PhoneStatusBarViewEx"
    }

    private var mLeftMargin = 0
    private var mRightMargin = 0
    private var mLayoutParamsLeftMargin = 0
    private var mLayoutParamsRightMargin = 0
    private val mStatusBarHeight: Int by lazy { ScreenUtils.getStatusBarHeight(mContext) }
    private val mHoleHeight: Int by lazy { StatusBarUtils.getScreenHoleHeight() }
    private val mHoleRight: Int by lazy { StatusBarUtils.getScreenHoleRight()}
    private val mHoleLeft: Int by lazy { StatusBarUtils.getScreenHoleLeft()}
    private val mHoleTop: Int by lazy { StatusBarUtils.getScreenHoleTop()}
    private var mPhysicScreenWidth = ColorOSSystemUiManager.getInstance().getComponent(ScreenSizeHelper::class.java).stableDisplayWidthSize
    private var mLastBaseScreenWidth = 0
    private var mAnimRunning = false
    private var mObjAnimSet: AnimatorSet? = null

    //#ifdef COLOROS_EDIT
    //Wen.Zhang@ROM.SysApp.HRO,2019/11/5, Add for 2528308
    private var mLastDirection = LAYOUT_DIRECTION_UNDEFINED
    private var mLastRotation = ORIENTATION_UNDEFINED
    //#endif /* COLOROS_EDIT */

    private val mAnimatorListener = object : Animator.AnimatorListener {
        override fun onAnimationStart(animator: Animator) {}

        override fun onAnimationEnd(animator: Animator) {
            resetState()
        }

        override fun onAnimationCancel(animator: Animator) {
            resetState()
        }

        override fun onAnimationRepeat(animator: Animator) {}
    }

    private val mWorkHandler: Handler by lazy { Handler(Dependency.get(Dependency.BG_LOOPER)) }

    private val mUIHandler: Handler  by lazy { Handler(Looper.getMainLooper()) }

    private val mWorkRunnable: Runnable  by lazy {
        Runnable {
            initObjAnimation()
            mUIHandler.removeCallbacks(mUIRunnable)
            mUIHandler.post(mUIRunnable)
        }
    }

    private val mUIRunnable: Runnable  by lazy {
        Runnable {
            startObjAnimation()
        }
    }

    override fun isColorOS() = true

    override fun onTouchEvent(event: MotionEvent): Boolean {
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "onTouchEvent: action = " + event.action)
        //#ifdef COLOROS_EDIT
        //Feng.Xu@ROM.SysApp.SystemUI,2019.09.22,add disable panelView on keyguard
        return if (mBar.isKeyguardShowing && NotificationCenterManager.getInstance()
                        .getHelper(PanelPullHelper::class.java).disablePullStatusBarOnShade) {
            false
        } else {
            ColorOSSystemUiManager.getInstance().getComponent(StatusBarHelper::class.java).onTouchEvent(event, mContext) ||
                    super.onTouchEvent(event)
        }
        //#endif /* COLOROS_EDIT */
    }

    override fun updateContentsPadding(orientation: Int) {
        if (orientation == ORIENTATION_PORTRAIT) {
            updatePortraitPadding()
        } else {
            updateLandscapePadding()
        }
    }

    override fun onBatteryVisibilityChanged() {
        var orientation = mContext.resources.configuration.orientation
        if (orientation != ORIENTATION_PORTRAIT) {
            return
        }
        updateHolePadding(orientation)
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG,
                "onBatteryVisibilityChanged: mLeftMargin = $mLeftMargin,mRightMargin$mRightMargin")
        updatePortraitPadding()
    }

    private fun updateHolePadding(orientation: Int) {
        if (orientation != ORIENTATION_PORTRAIT) {
            return
        }
        var isLeftHole = ColorOSSystemUiManager.getInstance().getComponent(CirCleBatteryController::class.java).isLeftHole
        var padding = 0;
        if (isLeftHole) {
            padding = ColorOSSystemUiManager.getInstance().getComponent(CirCleBatteryController::class.java).circleBatteryRight
            mLeftMargin = if (padding > mHoleRight) {
                padding + resources.getDimensionPixelSize(R.dimen.circle_power_view_margin)
            } else {
                mLayoutParamsLeftMargin;
            }
        } else {
            var left = ColorOSSystemUiManager.getInstance().getComponent(CirCleBatteryController::class.java).circleBatteryLeft
            padding = mContext.resources.displayMetrics.widthPixels - left
            mRightMargin = if (padding > mHoleLeft) {
                padding + resources.getDimensionPixelSize(R.dimen.circle_power_view_margin)
            } else {
                mLayoutParamsLeftMargin
            }
        }
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "updateHolePadding :isLeftHole = $isLeftHole,padding =" +
                "$padding,mRightMargin = $mRightMargin,mLeftMargin = $mLeftMargin")
    }

    override fun updateSafeInsets(layoutParams: LayoutParams, orientation: Int) {
        LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG,
                "updateSafeInsets(), leftMargin = " + layoutParams.leftMargin +
                        ", rightMargin = " + layoutParams.rightMargin)
        mLeftMargin = layoutParams.leftMargin
        mRightMargin = layoutParams.rightMargin
        mLayoutParamsLeftMargin = mLeftMargin
        mLayoutParamsRightMargin = mRightMargin

        if (StatusBarFeatureOption.isCircleBatteryView()) {
            updateHolePadding(orientation)
        }

        if (mLeftMargin > 0) {
            layoutParams.leftMargin = 0
        }

        if (mRightMargin > 0) {
            layoutParams.rightMargin = 0
        }

        if (orientation == ORIENTATION_PORTRAIT) {
            updatePortraitPadding()
        }
    }

    //#ifdef COLOROS_EDIT
    //Wen.Zhang@ROM.SysApp.HRO,2019/11/5, Add for 2528308
    override fun onConfigurationChanged(newConfig: Configuration) {
        if (updateOrientationAndCutout(newConfig.orientation)
                || newConfig.layoutDirection != mLastDirection
                || display.rotation != mLastRotation) {
            mLastDirection = newConfig.layoutDirection
            mLastRotation = display.rotation
            updateLayoutForCutout()
            updateContentsPadding(newConfig.orientation)
            requestLayout()
        }
        updateViewParams()
    }
    //#endif /* COLOROS_EDIT */

    private fun updateViewParams() {
        if (mHoleHeight > 0 ) {
            var baseScreenWidth = ColorOSSystemUiManager.getInstance().getComponent(ScreenSizeHelper::class.java).baseDisplayWidthSize
            if (mLastBaseScreenWidth == baseScreenWidth) {
                return
            }
            mLastBaseScreenWidth = baseScreenWidth
            var lp = status_bar_contents.layoutParams as LayoutParams
            if (mPhysicScreenWidth != baseScreenWidth){
                lp.height = mHoleHeight * baseScreenWidth / mPhysicScreenWidth
                lp.topMargin = mHoleTop * baseScreenWidth / mPhysicScreenWidth
            } else {
                lp.height = mHoleHeight
                lp.topMargin = mHoleTop
            }

            LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG,"updateViewParams :currentScreenWidth = "
                    + baseScreenWidth
                    + ",physicScreenWidth = " + mPhysicScreenWidth
                    + ",height = " + lp.height
                    + ",topMargin = " + lp.topMargin)
            lp.gravity = Gravity.TOP
        }
    }

    private fun updatePortraitPadding() {
        var statusBarPaddingStart = resources.getDimensionPixelSize(R.dimen.stat_padding_start)
        var statusBarPaddingEnd = resources.getDimensionPixelSize(R.dimen.stat_padding_end)
        /*val pdStart = mLeftMargin - statusBarPaddingStart
        val pdEnd = mRightMargin - statusBarPaddingEnd*/
        /*if (mLeftMargin <= 0 && mRightMargin <= 0) {
            return
        }*/
        //#ifdef COLOROS_EDIT
        //Wen.Zhang@ROM.SysApp.HRO,2019/11/5, Modify for 2528308
        /*status_bar_left_side?.setPadding(
                (if (pdStart > 0 && !isRtl()) pdStart else 0),
                0,
                (if (pdEnd > 0 && isRtl()) pdEnd else 0),
                0)
        system_icons?.setPadding(
                (if (pdStart > 0 && isRtl()) pdStart else 0),
                0,
                (if (pdEnd > 0 && !isRtl()) pdEnd else 0),
                0)*/
        status_bar_contents?.setPadding(if (mLeftMargin > 0) mLeftMargin else statusBarPaddingStart,
                0,
                if (mRightMargin > 0) mRightMargin else statusBarPaddingEnd ,
                0)
        if (mHoleHeight > 0) {
            var baseScreenWidth = ColorOSSystemUiManager.getInstance().getComponent(ScreenSizeHelper::class.java).baseDisplayWidthSize
            var systemIconAreaLp = system_icon_area.layoutParams as LinearLayout.LayoutParams
            systemIconAreaLp.width = baseScreenWidth / 2 - resources.getDimensionPixelSize(R.dimen.stat_padding_start)
        }
        //#endif /* COLOROS_EDIT */
    }

    //#ifdef COLOROS_EDIT
    //Wen.Zhang@ROM.SysApp.HRO,2019/11/5, Add for 2528308
    private fun isRtl() = resources.configuration.layoutDirection == LAYOUT_DIRECTION_RTL
    //#endif /* COLOROS_EDIT */

    private fun updateLandscapePadding() {
        var statusBarPaddingEnd = resources.getDimensionPixelSize(R.dimen.stat_padding_end)
        //#ifdef COLOROS_EDIT
        //Wen.Zhang@ROM.SysApp.HRO,2019/11/5, Modify for 2528308
        LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG,
                "updateLandscapePadding display.rotation= " + display.rotation +
                        ", isRtl = " + isRtl())
        if (display.rotation == Surface.ROTATION_90) {
            /*status_bar_left_side?.setPadding((if (!isRtl()) mStatusBarHeight else 0), 0, 0, 0)
            system_icons?.setPadding((if (isRtl()) mStatusBarHeight else 0), 0, 0, 0)*/
            status_bar_contents?.setPadding(mStatusBarHeight, 0, statusBarPaddingEnd, 0)
        } else {
            /*status_bar_left_side?.setPadding(0, 0, (if (isRtl()) mStatusBarHeight else 0), 0)
            system_icons?.setPadding(0, 0, (if (!isRtl()) mStatusBarHeight else 0), 0)*/
            status_bar_contents?.setPadding(statusBarPaddingEnd, 0, mStatusBarHeight, 0)
        }
        if (mHoleHeight > 0) {
            var baseScreenHeight = ColorOSSystemUiManager.getInstance().getComponent(ScreenSizeHelper::class.java).baseDisplayHeightSize
            var systemIconAreaLp = system_icon_area.layoutParams as LinearLayout.LayoutParams
            systemIconAreaLp.width = baseScreenHeight / 2 - resources.getDimensionPixelSize(R.dimen.stat_padding_start)
        }
        //#endif /* COLOROS_EDIT */
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        Anim5GController.getInstance().initController()
        Anim5GController.getInstance().addCallback(this)
        if (StatusBarFeatureOption.isCircleBatteryView()) {
            ColorOSSystemUiManager.getInstance().getComponent(CirCleBatteryController::class.java).setBatteryChangeListener (this)
        }
        updateViewParams()
    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        Anim5GController.getInstance().removeCallback(this)
        if (StatusBarFeatureOption.isCircleBatteryView()) {
            ColorOSSystemUiManager.getInstance().getComponent(CirCleBatteryController::class.java).removeBatterChangeListener (this)
        }
        cancelAnimation()
    }

    override fun startAnimation() {
        if (!mAnimRunning) {
            mAnimRunning = true
            mWorkHandler.removeCallbacks(mWorkRunnable)
            mWorkHandler.post(mWorkRunnable)
        }
    }

    override fun cancelAnimation() {
        if (mAnimRunning) {
            mObjAnimSet?.cancel()
            mWorkHandler.removeCallbacks(mWorkRunnable)
            mUIHandler.removeCallbacks(mUIRunnable)
        }
    }

    private fun startObjAnimation() {
        mObjAnimSet?.start()
    }

    private fun initObjAnimation() {
        mObjAnimSet = AnimatorSet()

        val animOutAlpha = ObjectAnimator.ofFloat(this@PhoneStatusBarViewEx, "alpha", 1f, 0f)
        animOutAlpha.duration = 83L
        animOutAlpha.interpolator = PathInterpolator(0.17f, 0.17f, 0.58f, 1f)

        val animInAlpha = ObjectAnimator.ofFloat(this@PhoneStatusBarViewEx, "alpha", 0f, 1f)
        animInAlpha.duration = 83L
        animInAlpha.interpolator = PathInterpolator(0.17f, 0.17f, 0.58f, 1f)
        animInAlpha.startDelay = 2850L

        mObjAnimSet?.playTogether(animOutAlpha, animInAlpha)
        mObjAnimSet?.addListener(mAnimatorListener)
    }

    private fun resetState() {
        this@PhoneStatusBarViewEx.alpha = 1F
        mAnimRunning = false
        mObjAnimSet?.removeAllListeners()
        mObjAnimSet = null
    }
}
