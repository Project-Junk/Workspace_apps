package com.color.common.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import com.color.common.util.LogUtil
import com.color.eyeprotect.services.ColorEyeProtectManagerService

class UserChangedCompletedService : Service() {
    companion object {
        const val TAG = "UserChangedCompletedReceiver"
    }

    override fun onBind(p0: Intent?): IBinder? {
        return null
    }

    override fun onCreate() {
        super.onCreate()
        LogUtil.logD(TAG, "onCreate")
        startService(Intent(this, ColorEyeProtectManagerService::class.java))
    }
}