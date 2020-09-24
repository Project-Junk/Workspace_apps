/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: NavBarUtils.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2020/3/3
 * * Author: zengyu@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>       <data>         <version >     <desc>
 * *     zengyu         2020/3/3       1.0            build this module
 *****************************************************************************/
package com.coloros.systemui.common.util

import android.content.Context
import android.graphics.Color
import com.coloros.systemui.common.settingsvalue.NavBarSettingsValueProxy

/**
 * Created by 80245089 on 2020/3/3
 */
class NavBarUtils {
    companion object {
        fun isGesturalMode(context: Context): Boolean {
            val navState = NavBarSettingsValueProxy.getNavState(context)
            return (navState == NavBarSettingsValueProxy.NAV_STATE_SWIPE_UP_GESTURE)
                    || (navState == NavBarSettingsValueProxy.NAV_STATE_SWIPE_SIDE_GESTURE)
        }

        fun getColorNavBarRgb() = Color.rgb(214, 214, 214)
    }
}