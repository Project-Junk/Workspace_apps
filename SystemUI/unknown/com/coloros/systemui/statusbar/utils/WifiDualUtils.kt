/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - WifiDualUtils.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/10/10
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version>     <desc>
 * *     Yonghong.Zhang       2019/10/10     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.utils

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkInfo
import android.net.wifi.WifiInfo
import android.net.wifi.WifiManager
import android.net.wifi.WifiSsid
import android.provider.Settings
import com.coloros.common.util.LogUtil

object WifiDualUtils {
    private const val DUAL_STA_SETTINGS_ENABLED = "dual_sta_switch_on"
    private const val DUAL_STA_STATE_ENABLED = 1

    private const val TAG = "WifiDualUtils"
    private var sWifiManager: WifiManager? = null

    private fun getWifiManagerInstance(context: Context): WifiManager? {
        if (sWifiManager != null) {
            return sWifiManager
        }

        val application = context.applicationContext
        if (application != null) {
            sWifiManager = application.getSystemService(Context.WIFI_SERVICE) as WifiManager
        } else {
            LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "getWifiManagerInstance, application = null.")
        }

        return sWifiManager
    }

    fun isWifiStateConnected(tag: String, info: NetworkInfo?): Boolean {
        if (info == null) {
            return false
        }
        LogUtil.normal(LogUtil.TAG_STATUSBAR, tag, "isWifiStateConnected, info= $info")
        return info.type == ConnectivityManager.TYPE_WIFI && info.detailedState == NetworkInfo.DetailedState.CONNECTED
    }

    private fun isDualStaEnabled(context: Context): Boolean {
        try {
            return Settings.Global.getInt(context.contentResolver, DUAL_STA_SETTINGS_ENABLED,
                    DUAL_STA_STATE_ENABLED) == DUAL_STA_STATE_ENABLED
        } catch (e: Exception) {
            LogUtil.trace(LogUtil.TAG_STATUSBAR, TAG, "isDualStaEnabled, exception= ", e)
        }

        return false
    }

    private fun isDualStaSupport(context: Context): Boolean {
        val wifiManager = getWifiManagerInstance(context)
        if (wifiManager == null) {
            LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "isDualStaSupport, wifimanager = null.")
            return false
        }

        try {
            var supported = false
            val wifiManagerClass = wifiManager.javaClass
            val method = wifiManagerClass.getMethod("isDualStaSupported")
            if (method != null) {
                supported = method.invoke(wifiManager) as Boolean
            } else {
                LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "isDualStaSupport，not found method")
            }
            LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "isDualStaSupport, supported = $supported")
            return supported
        } catch (e: Exception) {
            LogUtil.trace(LogUtil.TAG_STATUSBAR, TAG, "isDualStaSupport, exception= ", e)
        } catch (error: Error) {
            LogUtil.trace(LogUtil.TAG_STATUSBAR, TAG, "isDualStaSupport, error= ", error)
        }

        return false
    }

    fun isDualWifiConnected(context: Context?): Boolean {
        if (context == null) {
            return false
        }
        val wifiManager = getWifiManagerInstance(context)
        try {
            if (wifiManager != null && isDualStaSupport(context) && isDualStaEnabled(context)) {
                val wifiInfo1 = wifiManager.connectionInfo
                val wifiInfo2 = getOppoSta2ConnectionInfo(context)
                if (wifiInfo1 != null && wifiInfo2 != null
                        && WifiSsid.NONE != wifiInfo2.ssid) {
                    LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "isDualWifiConnected = true")
                    return true
                }
            }
        } catch (e: Exception) {
            LogUtil.trace(LogUtil.TAG_STATUSBAR, TAG, "isDualWifiConnected, exception= ", e)
        }

        return false
    }

    private fun getOppoSta2ConnectionInfo(context: Context): WifiInfo? {
        val wifiManager = getWifiManagerInstance(context)
        if (wifiManager == null) {
            LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "getOppoSta2ConnectionInfo, wifimanager = null.")
            return null
        }

        try {
            var wifiInfo: WifiInfo? = null
            val wifiManagerClass = wifiManager.javaClass
            val method = wifiManagerClass.getMethod("getOppoSta2ConnectionInfo")
            if (method != null) {
                wifiInfo = method.invoke(wifiManager) as WifiInfo
            } else {
                LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "getOppoSta2ConnectionInfo, not found method")
            }
            LogUtil.normal(LogUtil.TAG_STATUSBAR, TAG, "getOppoSta2ConnectionInfo, info = " + wifiInfo!!)
            return wifiInfo
        } catch (e: Exception) {
            LogUtil.trace(LogUtil.TAG_STATUSBAR, TAG, "getOppoSta2ConnectionInfo, exception = ", e)
        } catch (error: Error) {
            LogUtil.trace(LogUtil.TAG_STATUSBAR, TAG, "getOppoSta2ConnectionInfo. error = ", error)
        }

        return null
    }
}
