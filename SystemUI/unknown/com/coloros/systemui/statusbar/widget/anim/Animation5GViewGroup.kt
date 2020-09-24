/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - Animation5GViewGroup.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/09/19
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/09/19     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.widget.anim

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.content.Context
import android.os.Handler
import android.os.Looper
import android.os.Message
import android.util.AttributeSet
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.animation.PathInterpolator
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import com.android.systemui.Dependency
import com.android.systemui.R
import com.coloros.common.util.LogUtil
import com.coloros.systemui.keyguard.view.ColorAnimationDrawable
import com.coloros.systemui.statusbar.utils.Anim5GController


class Animation5GViewGroup @JvmOverloads constructor(
        context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr), Anim5GController.Callback {
    companion object {
        private const val TAG = "Animation5GViewGroup"
        private const val OBJ_ANIMATION_START = 1
        private const val FRAME_ANIMATION_START = 2
    }

    private var mBgView: View? = null
    private var mAnimation5GImageView: Animation5GImageView? = null
    private var mTextView: TextView? = null

    private var mObjAnimSet: AnimatorSet? = null

    private var mFrameAnimDrawable: ColorAnimationDrawable? = null

    private var mAnimRunning = false

    private val mAnimatorListener: Animator.AnimatorListener by lazy {
        object : Animator.AnimatorListener {
            override fun onAnimationStart(animation: Animator) {
            }

            override fun onAnimationEnd(animation: Animator) {
                resetState()
            }

            override fun onAnimationCancel(animation: Animator) {
                resetState()
            }

            override fun onAnimationRepeat(animation: Animator) {
            }
        }
    }

    private val mWorkHandler: Handler by lazy {
        Handler(Dependency.get(Dependency.BG_LOOPER))
    }
    private val mWorkRunnable: Runnable  by lazy {
        Runnable {
            initObjAnimation()
            initFrameAnimation()

            mUIHandler.removeCallbacksAndMessages(null)
            mUIHandler.sendEmptyMessage(OBJ_ANIMATION_START)

            mUIHandler.sendEmptyMessageDelayed(FRAME_ANIMATION_START, 167L)
        }
    }

    private val mUIHandler: Handler by lazy {
        object : Handler(Looper.getMainLooper()) {
            override fun handleMessage(msg: Message) {
                when (msg.what) {
                    OBJ_ANIMATION_START -> {
                        startObjAnimation()
                    }
                    FRAME_ANIMATION_START -> {
                        startFrameAnimation()
                    }
                }
            }
        }
    }

    init {
        initViews()
    }

    private fun initViews() {
        mBgView = View(context)
        mBgView?.setBackgroundResource(R.drawable.stat_anim_5g_bg)
        mBgView?.alpha = 0F

        mAnimation5GImageView = Animation5GImageView(context)
        mAnimation5GImageView?.scaleType = ImageView.ScaleType.MATRIX
        mAnimation5GImageView?.visibility = View.GONE

        mTextView = TextView(context)
        mTextView?.setTextColor(context.getColor(R.color.light_mode_icon_color_single_tone))
        mTextView?.setTextSize(TypedValue.COMPLEX_UNIT_PX,
                context.resources.getDimensionPixelSize(R.dimen.stat_anim_5g_text_size).toFloat())
        mTextView?.alpha = 0F
        mTextView?.scaleX = 0F
        mTextView?.scaleY = 0F

        addView(mBgView, LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT))
        addView(mAnimation5GImageView, LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT))
        addView(mTextView, LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER))
    }

    private fun resetState() {
        mBgView?.alpha = 0F
        mBgView?.visibility = View.GONE

        mTextView?.alpha = 0F
        mTextView?.scaleX = 0F
        mTextView?.scaleY = 0F
        mTextView?.translationY = 0F
        mTextView?.visibility = View.GONE

        mAnimation5GImageView?.visibility = View.GONE

        mAnimRunning = false
        mObjAnimSet?.removeAllListeners()
        mObjAnimSet = null
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
            mAnimation5GImageView?.cancelAnimation(mFrameAnimDrawable)
            mFrameAnimDrawable = null
            mWorkHandler.removeCallbacks(mWorkRunnable)
            mUIHandler.removeCallbacksAndMessages(null)
        }
    }

    private fun initObjAnimation() {
        if (mBgView == null || mTextView == null) {
            LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "5g child view is null")
            return
        }

        val height = context.resources.getDimensionPixelSize(R.dimen.status_bar_height).toFloat()

        //bg anim in
        val animBgInAlpha = ObjectAnimator.ofFloat(mBgView!!, "alpha", 0F, 0.8F)
        animBgInAlpha.duration = 167L
        animBgInAlpha.interpolator = PathInterpolator(0.17F, 0.17F, 0.58F, 1F)

        //bg anim out
        val animBgOutAlpha = ObjectAnimator.ofFloat(mBgView!!, "alpha", 0.8F, 0F)
        animBgOutAlpha.duration = 167L
        animBgOutAlpha.interpolator = PathInterpolator(0.17F, 0.17F, 0.58F, 1F)
        animBgOutAlpha.startDelay = 2600L

        //text anim in
        val animTextInAlpha = ObjectAnimator.ofFloat(mTextView!!, "alpha", 0F, 1F)
        animTextInAlpha.duration = 167L
        animTextInAlpha.interpolator = PathInterpolator(0.17F, 0.17F, 0.24F, 1F)
        animTextInAlpha.startDelay = 1267L

        val animTextInScaleX = ObjectAnimator.ofFloat(mTextView!!, "scaleX", 0F, 1F)
        animTextInScaleX.duration = 167L
        animTextInScaleX.interpolator = PathInterpolator(0.17F, 0.12F, 0.24F, 1F)
        animTextInScaleX.startDelay = 1267L

        val animTextInScaleY = ObjectAnimator.ofFloat(mTextView!!, "scaleY", 0F, 1F)
        animTextInScaleY.duration = 167L
        animTextInScaleY.interpolator = PathInterpolator(0.17F, 0.12F, 0.24F, 1F)
        animTextInScaleY.startDelay = 1267L

        //text anim out
        val animTextOutTranslationY = ObjectAnimator.ofFloat(mTextView!!, "translationY", 0F, -height)
        animTextOutTranslationY.duration = 167L
        animTextOutTranslationY.interpolator = PathInterpolator(0.52F, 0F, 0.58F, 1F)
        animTextOutTranslationY.startDelay = 2600L

        mObjAnimSet = AnimatorSet()
        mObjAnimSet?.playTogether(animBgInAlpha, animTextInAlpha, animTextInScaleX, animTextInScaleY
                , animBgOutAlpha, animTextOutTranslationY)
        mObjAnimSet?.addListener(mAnimatorListener)
    }

    private fun initFrameAnimation() {
        val name = mContext.resources.getString(R.string.stat_5g_anim_name)
        val frames = mContext.resources.getInteger(R.integer.stat_5g_anim_frames)
        val rate = mContext.resources.getInteger(R.integer.stat_5g_anim_rate)
        val option = ColorAnimationDrawable.Options(name, frames, rate, true)
        mFrameAnimDrawable = ColorAnimationDrawable(mContext, option)
        mFrameAnimDrawable?.isOneShot = true
    }

    private fun startObjAnimation() {
        mTextView?.text = context.resources.getString(R.string.stat_anim_5g)
        mBgView?.visibility = View.VISIBLE
        mTextView?.visibility = View.VISIBLE
        mObjAnimSet?.start()
    }

    private fun startFrameAnimation() {
        mAnimation5GImageView?.startAnimation(mFrameAnimDrawable)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        Anim5GController.getInstance().initController()
        Anim5GController.getInstance().addCallback(this)
    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        Anim5GController.getInstance().removeCallback(this)
        cancelAnimation()
    }

    override fun setVisibility(i: Int) {
        if (visibility != i) {
            super.setVisibility(i)
        }
    }
}