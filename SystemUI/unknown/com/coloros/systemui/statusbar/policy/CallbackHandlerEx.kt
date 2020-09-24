/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - CallbackHandlerEx.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/10/10
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/10/10     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.policy

import com.android.systemui.statusbar.policy.CallbackHandler

class CallbackHandlerEx : CallbackHandler() {
    override fun setWifiDouble(doubleWifi: Boolean) {
        post {
            for (signalCluster in mSignalCallbacks) {
                signalCluster.setWifiDouble(doubleWifi)
            }
        }
    }

    override fun on5gConnected(connected: Boolean) {
        post {
            for (signalCluster in mSignalCallbacks) {
                signalCluster.on5gConnected(connected)
            }
        }
    }
}