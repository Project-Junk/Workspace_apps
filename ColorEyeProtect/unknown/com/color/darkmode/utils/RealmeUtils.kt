package com.color.darkmode.utils

import android.content.ContentResolver
import android.content.Context
import android.os.SystemProperties
import android.os.UserHandle
import android.provider.Settings
import android.util.Log
import java.text.DateFormatSymbols
import java.text.SimpleDateFormat
import java.util.*

object RealmeUtils {
    //#ifdef REALMEUI_EDIT
    //qintao@RM.realmeUI.Userid#2333614
    private var DEBUG = SystemProperties.getBoolean("persist.sys.assert.panic", false) || true
    private const val DARK_MODE_SUNSET_TO_SUNRISE_SWITCH = "dark_mode_sunset_to_sunrise_switch"
    private const val SUNSET_TIME = "ColorDarkMode_sunset_time"
    private const val SUNRISE_TIME = "ColorDarkMode_sunrise_time"
    private const val DEFAULT_SUNSET_HOUR = 17
    private const val DEFAULT_SUNRISE_HOUR = 6
    private const val DEFAULT_SUNSET_MIN = 40
    private const val DEFAULT_SUNRISE_MIN = 30
    private const val REALME = "realme"
    const val TAG = "RealmeUtils"
    const val SWITCH_ON = 1
    const val SWITCH_OFF = 0
    //#endif /* REALMEUI_EDIT */

    fun isDarkSunsetToSunriseSwitch(context: Context): Boolean {
        return SWITCH_ON == Settings.System.getIntForUser(context.contentResolver,
                DARK_MODE_SUNSET_TO_SUNRISE_SWITCH, SWITCH_OFF, UserHandle.USER_CURRENT)
    }

    fun setDarkSunsetToSunriseSwitch(context: Context, statue: Int) {
        Settings.System.putIntForUser(context.contentResolver,
                DARK_MODE_SUNSET_TO_SUNRISE_SWITCH, statue, UserHandle.USER_CURRENT)
    }

    fun setDarkModeSunsetTime(contentResolver: ContentResolver, hour: Int, min: Int, is24Hour: Boolean = true) = Settings.System.putStringForUser(contentResolver, SUNSET_TIME, getFormatTimeString(hour, min, is24Hour), UserHandle.USER_CURRENT)

    fun setDarkModeSunriseTime(contentResolver: ContentResolver, hour: Int, min: Int, is24Hour: Boolean = true) = Settings.System.putStringForUser(contentResolver, SUNRISE_TIME, getFormatTimeString(hour, min, is24Hour), UserHandle.USER_CURRENT)

    fun getDarkModeSunsetTimeData(contentResolver: ContentResolver): String {
        val timeStr: String? = Settings.System.getStringForUser(contentResolver, SUNSET_TIME, UserHandle.USER_CURRENT)
        return timeStr ?: "$DEFAULT_SUNSET_HOUR:$DEFAULT_SUNSET_MIN"
    }

    fun getDarkModeSunriseData(contentResolver: ContentResolver): String {
        val timeStr: String? = Settings.System.getStringForUser(contentResolver, SUNRISE_TIME, UserHandle.USER_CURRENT)
        return timeStr ?: "$DEFAULT_SUNRISE_HOUR:$DEFAULT_SUNRISE_MIN"
    }

    fun getDarkModeSunriseTime(contentResolver: ContentResolver): IntArray {
        val timeStr: String? = getDarkModeSunriseData(contentResolver)
        return parseEndTime(timeStr)
    }

    fun getDarkModeSunsetTime(contentResolver: ContentResolver): IntArray {
        val timeStr: String? = getDarkModeSunsetTimeData(contentResolver)
        return parseBeginTime(timeStr)
    }

    fun parseBeginTime(timeStr: String?): IntArray {
        var isSuccess = false
        val resultTime = IntArray(2)
        if (null != timeStr) {
            try {
                val times = timeStr.split(":".toRegex()).dropLastWhile { it.isEmpty() }.toTypedArray()
                if (resultTime.size == 2) {
                    resultTime[0] = Integer.parseInt(times[0])
                    resultTime[1] = Integer.parseInt(times[1])
                    isSuccess = true
                }
            } catch (ex: Exception) {
                logE(ex.toString())
            }
        }
        if (!isSuccess) {
            resultTime[0] = DEFAULT_SUNSET_HOUR
            resultTime[1] = DEFAULT_SUNSET_MIN
        }
        return resultTime
    }

    fun parseEndTime(timeStr: String?): IntArray {
        val resultTime = IntArray(2)
        var isSuccess = false
        if (null != timeStr) {
            try {
                val times = timeStr.split(":".toRegex()).dropLastWhile { it.isEmpty() }.toTypedArray()
                resultTime[0] = Integer.parseInt(times[0])
                resultTime[1] = Integer.parseInt(times[1])
                isSuccess = true
            } catch (ex: Exception) {
                ex.printStackTrace()
                logE(ex.toString())
            }
        }
        if (!isSuccess) {
            resultTime[0] = DEFAULT_SUNRISE_HOUR
            resultTime[1] = DEFAULT_SUNRISE_MIN
        }
        return resultTime
    }

    fun getFormatTimeString(hour: Int, min: Int, is24Hour: Boolean): String {
        var hour = hour
        val sb = StringBuilder()
        val stringBeforeTime = "zh" == Locale.getDefault().language
        var ampm = ""
        if (is24Hour) {
            sb.append(String.format(Locale.getDefault(), "%02d", hour))
        } else {
            val index = if (hour < 12) Calendar.AM else Calendar.PM
            val amPmStrings = DateFormatSymbols().amPmStrings
            ampm = amPmStrings[index]
            if (stringBeforeTime) {
                sb.append(ampm)
            }
            if (0 == hour) {//pm 12:00, hour is 0
                hour = 12
            }

            if (hour > 12) {
                hour -= 12
            }
            sb.append(String.format(Locale.getDefault(), "%d", hour))
        }

        sb.append(getTimeSeparator())
        sb.append(String.format(Locale.getDefault(), "%02d", min))

        if (!stringBeforeTime) {
            sb.append(ampm)
        }

        return sb.toString()
    }

    private fun getTimeSeparator(): Char {
        val time = android.text.format.DateFormat.getBestDateTimePattern(Locale.getDefault(), "Hm")
        val index = time.lastIndexOf('H')
        var timeSperator = ':'
        if (index + 1 < time.length) {
            timeSperator = time[index + 1]
        }
        return timeSperator
    }

    fun timeStampChangeString(time: Long): String {
        val simpleDateFormat = SimpleDateFormat("yyyy--MM--dd HH:mm:ss")
        return simpleDateFormat.format(Date(time))
    }

    fun logD(string: String) {
        if (DEBUG) {
            Log.d(TAG, string)
        }
    }

    fun logE(string: String) {
        Log.e(TAG, string)
    }

    fun isRealmePhone(): Boolean {
        return REALME.equals(SystemProperties.get("ro.electronic.label"), ignoreCase = true) ||
                REALME.equals(SystemProperties.get("ro.product.brand.sub"), ignoreCase = true)
    }
}