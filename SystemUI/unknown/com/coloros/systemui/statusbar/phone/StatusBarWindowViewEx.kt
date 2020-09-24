/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - StatusBarWindowViewEx.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/11/06
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/11/06    1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.phone

import android.content.Context
import android.content.Intent
import android.util.AttributeSet
import android.view.Surface
import com.android.systemui.fragments.FragmentHostManager
import com.android.systemui.statusbar.phone.StatusBarWindowView
import com.coloros.systemui.common.receiver.IReceiverListener
import com.coloros.systemui.common.receiver.ThemeReceiver
import com.oppo.content.OppoIntent

class StatusBarWindowViewEx(context: Context?, attrs: AttributeSet?) : StatusBarWindowView(context, attrs), IReceiverListener {

    //add for show landscape status bar in full screen
    override fun getLeftInset(leftInset: Int): Int {
        return if (Surface.ROTATION_90 == display.rotation) {
            0
        } else {
            leftInset
        }
    }

    //add for show landscape status bar in full screen
    override fun getRightInset(rightInset: Int): Int {
        return if (Surface.ROTATION_270 == display.rotation) {
            0
        } else {
            rightInset
        }
    }

    //add for global theme
    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        ThemeReceiver.getInstance().addListener(this)
    }

    //add for global theme
    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        ThemeReceiver.getInstance().removeListener(this)
    }

    //add for global theme
    override fun onReceive(context: Context?, intent: Intent?) {
        if (OppoIntent.ACTION_SKIN_CHANGED == intent?.action) {
            FragmentHostManager.get(this).reloadFragments()
            mService.onOverlayChanged()
        }
    }
}