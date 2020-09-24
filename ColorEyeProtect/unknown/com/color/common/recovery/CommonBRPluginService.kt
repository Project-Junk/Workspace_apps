package com.color.common.recovery

import com.color.darkmode.utils.DarkModeSettingUtils
import com.coloros.backup.sdk.v2.component.BRPluginService

class CommonBRPluginService: BRPluginService() {
    override fun onCreate() {
        super.onCreate()
        DarkModeSettingUtils.logD("CommonBRPluginService-->onCreate")
    }
}