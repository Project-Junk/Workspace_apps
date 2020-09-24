package com.color.darkmode.utils

import android.content.Context
import android.content.SharedPreferences
import com.color.eyeprotect.ColorEyeProtectApp

object SpHelper {
    private const val FILENAME = "darkmode"

    private fun getCommonSp(): SharedPreferences {
        return ColorEyeProtectApp.getsApplicationContext().getSharedPreferences(FILENAME, Context.MODE_PRIVATE)
    }

    fun put(key: String, value: Any) {
        val sp = getCommonSp()
        val editor = sp.edit()
        when (value) {
            is Int -> editor.putInt(key, value)
            is String -> editor.putString(key, value)
            is Boolean -> editor.putBoolean(key, value)
            is Long -> editor.putLong(key, value)
        }
        editor.apply()
    }

    fun getInt(key: String, default: Int): Int = getCommonSp().getInt(key, default)

}