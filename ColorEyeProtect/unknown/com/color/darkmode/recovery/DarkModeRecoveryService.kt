package com.color.darkmode.recovery

import android.content.Context
import com.color.darkmode.utils.DarkModeSettingUtils
import com.coloros.commons.service.RecoveryService

class DarkModeRecoveryService: RecoveryService() {
    override fun doRecoveryOperation(context: Context?): Boolean {
        DarkModeSettingUtils.logD("DarkModeRecoveryService-->doRecoveryOperation:-->start")
        var recovery = false
        try {
            DarkModeSettingUtils.recoveryData(context)
            recovery = true
        } catch (e: Exception) {
            e.printStackTrace()
        }
        DarkModeSettingUtils.logD("DarkModeRecoveryService-->doRecoveryOperation:-->end-->$recovery")
        return recovery
    }
}