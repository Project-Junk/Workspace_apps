package com.color.common.util

import android.database.ContentObserver
import android.net.Uri
import android.os.SystemProperties
import android.provider.Settings
import android.util.Log
import com.color.eyeprotect.ColorEyeProtectApp

object LogUtil : ContentObserver(null) {
    private var DEBUG = SystemProperties.getBoolean("persist.sys.assert.panic", false)
    private var mUri = Settings.System.getUriFor("log_switch_type")

    init {
        ColorEyeProtectApp.getsApplicationContext().contentResolver.registerContentObserver(mUri, false, this)
    }

    fun logD(tag: String, content: String) {
        if (DEBUG) {
            Log.d(tag, content)
        }
    }

    fun logI(tag: String, content: String) {
        if (DEBUG) {
            Log.i(tag, content)
        }
    }

    fun logW(tag: String, content: String) {
        if (DEBUG) {
            Log.w(tag, content)
        }
    }

    fun logE(tag: String, content: String) {
        if (DEBUG) {
            Log.e(tag, content)
        }
    }

    fun logE(tag: String, content: String, var2: Throwable) {
        if (DEBUG) {
            Log.e(tag, content, var2)
        }
    }

    override fun onChange(selfChange: Boolean, uri: Uri?) {
        DEBUG = SystemProperties.getBoolean("persist.sys.assert.panic", false)
    }
}