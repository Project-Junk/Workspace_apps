/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - Anim5GController.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/11/27
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/11/27    1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.utils

import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import com.android.systemui.Dependency
import com.android.systemui.Prefs
import com.android.systemui.statusbar.policy.ConfigurationController
import com.android.systemui.statusbar.policy.NetworkController
import com.coloros.common.util.LogUtil
import com.coloros.systemui.common.manager.ColorOSSystemUiManager
import com.coloros.systemui.common.receiver.IReceiverListener
import com.coloros.systemui.common.receiver.TestModeReceiver
import com.coloros.systemui.common.statusbar.feature.StatusBarFeatureOption
import java.lang.ref.WeakReference

class Anim5GController private constructor() : NetworkController.SignalCallback
        , ConfigurationController.ConfigurationListener, IReceiverListener {

    companion object {
        private const val TAG = "Anim5GController"
        private const val ONE_DAY = 86400000L
        private const val SHOW_TIMES_LIMIT = 1
        private const val SP_ANIM_CNT = "Anim5GShowCount"
        private const val SP_ANIM_LAST_TIME = "Anim5GShowLastTime"
        private val instance = Anim5GController()
        fun getInstance() = instance
    }

    private val mCallbacks = mutableListOf<WeakReference<Callback>>()

    private var mTestMode = false
    private var mLastConnected = false
    private var mDisable = false
    private var mRusDisable = false

    private var mLastAnimTime = 0L
    private var mAnimCnt = 0

    init {
        Dependency.get(NetworkController::class.java).addCallback(this)
        Dependency.get(ConfigurationController::class.java).addCallback(this)
        TestModeReceiver.instance.addListener(this)
    }

    fun initController() {
        ColorOSSystemUiManager.getInstance().context?.let {
            mAnimCnt = Prefs.getInt(it, SP_ANIM_CNT, 0)
            mLastAnimTime = Prefs.getLong(it, SP_ANIM_LAST_TIME, 0L)
        }
    }

    private fun resetAnimCnt() {
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG,
                "getIntervalTimeMillis() > ONE_DAY = " + (getIntervalTimeMillis() > ONE_DAY))
        if (getIntervalTimeMillis() > ONE_DAY) {
            mAnimCnt = 0
            ColorOSSystemUiManager.getInstance().context?.let { Prefs.putInt(it, SP_ANIM_CNT, mAnimCnt) }
        }
    }

    private fun setLastAnimTime() {
        if (mAnimCnt == 0) {
            mLastAnimTime = System.currentTimeMillis()
            ColorOSSystemUiManager.getInstance().context?.let { Prefs.putLong(it, SP_ANIM_LAST_TIME, mLastAnimTime) }
        }
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "mAnimCnt = $mAnimCnt, mLastAnimTime = $mLastAnimTime")
    }

    private fun isAnimCntEnable() = mAnimCnt < SHOW_TIMES_LIMIT

    private fun getIntervalTimeMillis(): Long {
        val currentTime = System.currentTimeMillis()
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "currentTime = $currentTime, mLastAnimTime = $mLastAnimTime")
        if (currentTime - mLastAnimTime < 0) {
            mLastAnimTime = currentTime
            ColorOSSystemUiManager.getInstance().context?.let { Prefs.putLong(it, SP_ANIM_LAST_TIME, mLastAnimTime) }
        }
        return (currentTime - mLastAnimTime)
    }

    override fun onConfigChanged(newConfig: Configuration) {
        if (newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
            mCallbacks.forEach { it.get()?.cancelAnimation() }
            if (!mDisable) {
                mDisable = true
            }
        } else {
            if (mDisable) {
                mDisable = false
            }
        }
    }

    override fun on5gConnected(connected: Boolean) {
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG,
                "on5gConnected = $connected, mTestMode = $mTestMode, mDisable = $mDisable")
        if (!StatusBarFeatureOption.isStatusbar5gAnimEnable() || mTestMode || mDisable || connected == mLastConnected) {
            return
        }
        mRusDisable = StatusBarAnimBlackList.isBlackListValue(StatusBarAnimBlackList.ANIM_5G)
        LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "mRusDisable = $mRusDisable")
        if (mRusDisable) {
            return
        }

        mLastConnected = connected
        if (connected) {
            resetAnimCnt()
            setLastAnimTime()
            LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "isAnimCntEnable = " + isAnimCntEnable())
            if (isAnimCntEnable()) {
                mAnimCnt += 1
                ColorOSSystemUiManager.getInstance().context?.let { Prefs.putInt(it, SP_ANIM_CNT, mAnimCnt) }
                mCallbacks.forEach { it.get()?.startAnimation() }
            }
        } else {
            mCallbacks.forEach { it.get()?.cancelAnimation() }
        }
    }

    /**
     * add for test anim
     * adb shell am broadcast -a oppo.action.open.TEST_MODE --es type anim_5g --es test 1 --es show 1
     * adb shell am broadcast -a oppo.action.open.TEST_MODE --es type anim_5g --es test 0
     */
    override fun onReceive(context: Context?, intent: Intent?) {
        if (TestModeReceiver.ACTION_TEST_MODE == intent?.action &&
                TestModeReceiver.EXTRA_TEST_MODE_TYPE_5G_ANIM == intent.getStringExtra(TestModeReceiver.EXTRA_TEST_MODE_TYPE)) {
            mTestMode = intent.getStringExtra(TestModeReceiver.EXTRA_TEST_MODE_TEST) == "1"
            mRusDisable = StatusBarAnimBlackList.isBlackListValue(StatusBarAnimBlackList.ANIM_5G)
            LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "StatusBarAnimBlackList = " + StatusBarAnimBlackList.getStatusBarAnimBlackList().toString())
            if (!StatusBarFeatureOption.isStatusbar5gAnimEnable() || !mTestMode || mDisable || mRusDisable) {
                return
            }

            val connected = intent.getStringExtra(TestModeReceiver.EXTRA_TEST_MODE_SHOW) == "1"
            if (connected) {
                resetAnimCnt()
                setLastAnimTime()
                LogUtil.internal(LogUtil.TAG_STATUSBAR, TAG, "isAnimCntEnable = " + isAnimCntEnable())
                if (isAnimCntEnable()) {
                    mAnimCnt += 1
                    ColorOSSystemUiManager.getInstance().context?.let { Prefs.putInt(it, SP_ANIM_CNT, mAnimCnt) }
                    mCallbacks.forEach { it.get()?.startAnimation() }
                }
            } else {
                mCallbacks.forEach { it.get()?.cancelAnimation() }
            }
        }
    }

    private fun addCallback(callback: WeakReference<Callback>) {
        mCallbacks.add(callback)
    }

    private fun removeCallback(callback: WeakReference<Callback>) {
        // Removes also if the callback is null
        mCallbacks.removeIf { it.get()?.equals(callback.get()) ?: true }
    }

    fun addCallback(callback: Callback) {
        addCallback(WeakReference(callback))
    }

    fun removeCallback(callback: Callback) {
        removeCallback(WeakReference(callback))
    }

    fun onDestroy() {
        mCallbacks.clear()
        Dependency.get(NetworkController::class.java).removeCallback(this)
        Dependency.get(ConfigurationController::class.java).removeCallback(this)
        TestModeReceiver.instance.removeListener(this)
    }

    interface Callback {
        fun startAnimation()

        fun cancelAnimation()
    }
}