package com.color.darkmode.romupdate

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.color.darkmode.utils.DarkModeSettingUtils

class RomUpdateReceiver: BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        if (context == null || intent == null) return
        val action = intent.action
        if (action == RomUpdateUtils.ACTION) {
            val list:ArrayList<String>? = intent.getStringArrayListExtra(RomUpdateUtils.ROM_UPDATE_CONFIG_SUCCESS_EXTRA)
            if (list == null || list.isEmpty()) {
                return
            }
            if (list.contains(RomUpdateUtils.OPEN_APP_LIST)) {
                DarkModeSettingUtils.logD("RomUpdateReceiver onReceive openAppList")
                RomUpdateUtils.updateData(context)
            }
            if (list.contains(RomUpdateUtils.HIDDEN_APP_LIST)) {
                DarkModeSettingUtils.logD("RomUpdateReceiver onReceive hiddenAppList")
                RomUpdateUtils.hideApp(context)
            }
        }
    }
}