package com.color.darkmode.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.color.darkmode.utils.DarkModeManager

class NotificationClickReceiver : BroadcastReceiver() {
    companion object {
        const val EXTRA_OPEN_STATE = "extra_open_state"
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        if (context != null && intent != null && intent.hasExtra(EXTRA_OPEN_STATE)) {
            val open = intent.getBooleanExtra(EXTRA_OPEN_STATE, false)
            DarkModeManager.changeDarkModeByNotification(context, open)
        }
    }
}