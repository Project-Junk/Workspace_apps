package com.color.darkmode.utils

import android.app.UiModeManager
import android.content.ContentResolver
import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.database.Cursor
import android.os.Build
import android.os.SystemProperties
import android.os.UserHandle
import android.provider.Settings
import android.util.Log
import com.color.darkmode.romupdate.RomUpdateUtils
import com.color.darkmode.ui.fragment.DarkModeApplicationManageFragment
import com.color.support.util.ColorOSVersionUtil
import org.xmlpull.v1.XmlPullParser
import org.xmlpull.v1.XmlPullParserFactory
import java.io.StringReader
import java.text.DateFormatSymbols
import java.util.*
import kotlin.collections.ArrayList

object DarkModeSettingUtils {
    private const val TAG = "DarkModeManager"
    private var DEBUG = SystemProperties.getBoolean("persist.sys.assert.panic", false) || true
    //change_night_mode
    const val CHANGE_NIGHT_MODE = "ColorDarkMode_change_night_mode"
    //alarm begin time
    const val BEGIN_TIME = "ColorDarkMode_begin_time"
    //alarm end time
    const val END_TIME = "ColorDarkMode_end_time"
    //set time switch
    const val TIME_SWITCH = "ColorDarkMode_time_switch"
    //show open darkmode dialog hint
    const val SWITCH_OPEN_NEVER_HINT = "ColorDarkMode_switch_open_never_hint"
    //rom update config hide app list
    const val ROM_UPDATE_HIDDEN_APP = "ColorDarkMode_rom_update_hidden_app"
    //rom update config open app list,is not contain user  interactive open app
    const val ROM_UPDATE_OPEN_APP = "ColorDarkMode_rom_update_open_app"
    //user interactive click app switch
    const val CLICK_APP = "ColorDarkMode_click_app"
    //user interactive open app switch
    const val OPEN_APP = "ColorDarkMode_open_app"
    //wait to switch darkmode
    const val WAIT_SWITCH_DARKMODE = "ColorDarkMode_wait_switch_darkmode"

    private const val DEFAULT_BEGIN_HOUR = 22
    private const val DEFAULT_BEGIN_MINUTE = 0
    private const val DEFAULT_END_HOUR = 7
    private const val DEFAULT_END_MINUTE = 0
    const val SWITCH_ON = 1
    const val SWITCH_OFF = 0
    const val INVALID = -1
    private const val DEFAULT_SWITCH = SWITCH_OFF

    fun isSystemDarkModeOpen(context: Context): Boolean {
        val uiModeManager = context.getSystemService(Context.UI_MODE_SERVICE)
        if (uiModeManager is UiModeManager) {
            return uiModeManager.nightMode == UiModeManager.MODE_NIGHT_YES
        }
        return false
    }

    fun setSystemDarkModeOpen(context: Context, open: Boolean = true) {
        val uiModeManager = context.getSystemService(Context.UI_MODE_SERVICE)
        if (uiModeManager is UiModeManager) {
            uiModeManager.nightMode = if(open) UiModeManager.MODE_NIGHT_YES else UiModeManager.MODE_NIGHT_NO
        }
    }

    fun setDarkModeLoadingSetting(contentResolver: ContentResolver, value:Int) = Settings.System.putIntForUser(contentResolver, DarkModeSettingUtils.CHANGE_NIGHT_MODE, value, UserHandle.USER_CURRENT)

    fun isDarkModeSwitchOpenNeverHint(contentResolver: ContentResolver) = Settings.System.getIntForUser(contentResolver, SWITCH_OPEN_NEVER_HINT, DEFAULT_SWITCH, UserHandle.USER_CURRENT) == SWITCH_ON

    fun setDarkModeSwitchOpenNeverHint(contentResolver: ContentResolver, open: Boolean = true) = Settings.System.putIntForUser(contentResolver, SWITCH_OPEN_NEVER_HINT, if(open) SWITCH_ON else SWITCH_OFF, UserHandle.USER_CURRENT)

    fun getWaitSwitchDarkMode(contentResolver: ContentResolver): Int = Settings.System.getIntForUser(contentResolver, WAIT_SWITCH_DARKMODE, INVALID, UserHandle.USER_CURRENT)

    fun setWaitSwitchDarkMode(contentResolver: ContentResolver, value: Int) = Settings.System.putIntForUser(contentResolver, WAIT_SWITCH_DARKMODE, value, UserHandle.USER_CURRENT)

    fun isDarkModeTimeSwitchOpen(contentResolver: ContentResolver) = Settings.System.getIntForUser(contentResolver, TIME_SWITCH, DEFAULT_SWITCH, UserHandle.USER_CURRENT) == SWITCH_ON

    fun setDarkModeTimeSwitchOpen(contentResolver: ContentResolver, open: Boolean = true) = Settings.System.putIntForUser(contentResolver, TIME_SWITCH, if(open) SWITCH_ON else SWITCH_OFF, UserHandle.USER_CURRENT)

    fun setDarkModeBeginTime(contentResolver: ContentResolver, hour: Int, min: Int, is24Hour: Boolean = true) = Settings.System.putStringForUser(contentResolver, BEGIN_TIME, getFormatTimeString(hour, min, is24Hour), UserHandle.USER_CURRENT)

    fun setDarkModeEndTime(contentResolver: ContentResolver, hour: Int, min: Int, is24Hour: Boolean = true) = Settings.System.putStringForUser(contentResolver, END_TIME, getFormatTimeString(hour, min, is24Hour), UserHandle.USER_CURRENT)

    fun getDarkModeBeginTimeData(contentResolver: ContentResolver): String {
        val timeStr: String? = Settings.System.getStringForUser(contentResolver, BEGIN_TIME, UserHandle.USER_CURRENT)
        return timeStr ?: ""
    }

    fun getDarkModeEndTimeData(contentResolver: ContentResolver): String {
        val timeStr: String? = Settings.System.getStringForUser(contentResolver, END_TIME, UserHandle.USER_CURRENT)
        return timeStr ?: ""
    }

    fun getDarkModeBeginTime(contentResolver: ContentResolver): IntArray {
        val timeStr: String? = getDarkModeBeginTimeData(contentResolver)
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
            } catch (ex : Exception) {

            }
        }
        if (!isSuccess) {
            resultTime[0] = DEFAULT_BEGIN_HOUR
            resultTime[1] = DEFAULT_BEGIN_MINUTE
        }
        return resultTime
    }

    fun getDarkModeEndTime(contentResolver: ContentResolver): IntArray {
        val timeStr: String? = getDarkModeEndTimeData(contentResolver)
        return parseEndTime(timeStr)
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
            } catch (ex : Exception) {
                ex.printStackTrace()
            }
        }
        if (!isSuccess) {
            resultTime[0] = DEFAULT_END_HOUR
            resultTime[1] = DEFAULT_END_MINUTE
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

    fun logD(content: String) {
        if (DEBUG) {
            Log.d(TAG, content)
        }
    }

    fun getApplicationPackageNameSet(context: Context): Set<String> {
        val packageManager = context.packageManager
        val packageInfoList = packageManager.getInstalledPackages(PackageManager.MATCH_UNINSTALLED_PACKAGES)
        val sets = hashSetOf<String>()
        val hiddenApp = getRomUpdateHiddenAppList(context.contentResolver)
        packageInfoList?.forEach {
            val packageName = it.packageName
            val isThirdApp = it.applicationInfo.flags and ApplicationInfo.FLAG_SYSTEM <= 0
            val isOsApp = isOSApp(packageName)
            if (isThirdApp && !isOsApp && !hiddenApp.contains(packageName)) {
                sets.add(packageName)
            }
        }
        return sets
    }

    fun getApplicationList(context: Context): ArrayList<DarkModeApplicationManageFragment.ThirdApp> {
        val packageManager = context.packageManager
        val packageInfoList = packageManager.getInstalledPackages(PackageManager.MATCH_UNINSTALLED_PACKAGES)
        val appInfoList = ArrayList<DarkModeApplicationManageFragment.ThirdApp>()
        val hiddenApp = getRomUpdateHiddenAppList(context.contentResolver)
        packageInfoList?.forEach {
            val packageName = it.packageName
            val isThirdApp = it.applicationInfo.flags and ApplicationInfo.FLAG_SYSTEM <= 0
            val isOsApp = isOSApp(packageName)
            if (isThirdApp && !isOsApp && !hiddenApp.contains(packageName)) {
                val label = it.applicationInfo.loadLabel(packageManager)
                val labelString = label.toString()
                appInfoList.add(DarkModeApplicationManageFragment.ThirdApp(it, labelString, labelString, labelString, '0'))
            }
        }
        return appInfoList
    }

    fun getSupportApplicationCount(context: Context): IntArray {
        val openAppList = getOpenAppList(context)
        val hiddenApp = getRomUpdateHiddenAppList(context.contentResolver)
        val packageManager = context.packageManager
        val packageInfoList = packageManager.getInstalledPackages(PackageManager.MATCH_UNINSTALLED_PACKAGES)
        val results = IntArray(2)
        results[0] = 0
        results[1] = 0
        packageInfoList?.forEach {
            val packageName = it.packageName
            val isThirdApp = it.applicationInfo.flags and ApplicationInfo.FLAG_SYSTEM <= 0
            val isOsApp = isOSApp(packageName)
            if (isThirdApp && !isOsApp && !hiddenApp.contains(packageName)) {
                results[0]++
                if (openAppList.contains(packageName)) {
                    results[1]++
                }
            }
        }
        return results
    }

    fun isOSApp(packageName: String): Boolean {
        return (packageName.startsWith("com.oppo")
                || packageName.startsWith("com.coloros")
                || packageName.startsWith("com.nearme"))
                || packageName.startsWith("com.heytap")
    }

    fun getOpenAppList(context: Context): Set<String> {
        val startTime = System.currentTimeMillis()
        val contentResolver = context.contentResolver
        val openSet = getOpenAppList(contentResolver)
        val clickSet = getClickAppList(contentResolver)
        val hiddenSet = getRomUpdateHiddenAppList(contentResolver)
        val romUpdateOpenSet = getRomUpdateOpenAppList(contentResolver)
        val result = openSet.plus(romUpdateOpenSet.minus(clickSet)).minus(hiddenSet)
        logD("getOpenAppList cost time ${System.currentTimeMillis() - startTime} ms")
        return result
    }

    fun parserXmlValueToSet(xmlValue: String?): MutableSet<String> {
        val resultList = hashSetOf<String>()
        if (xmlValue == null || xmlValue.isEmpty()) {
            return resultList
        }

        try {
            val parser = XmlPullParserFactory.newInstance().newPullParser()
            parser.setInput(StringReader(xmlValue))
            parser.nextTag()

            var type: Int
            do {
                type = parser.next()
                if (type == XmlPullParser.START_TAG) {
                    val tag = parser.name
                    if ("p" == tag) {
                        val value = parser.getAttributeValue(null, "attr")
                        if (value != null) {
                            resultList.add(value)
                        }
                    }
                }
            } while (type != XmlPullParser.END_DOCUMENT)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return resultList
    }

    fun getDataFromProvider(context: Context, filterName: String): String? {
        var cursor: Cursor? = null
        var xmlValue: String? = null

        val projection = arrayOf("xml","version")
        try {
            cursor = context.contentResolver.query(RomUpdateUtils.CONTENT_URI,
                    projection, "filtername=\"$filterName\"", null, null)
            if (cursor != null && cursor.count > 0 && cursor.moveToNext()) {
                val version = "version"
                val configVersion = cursor.getInt(cursor.getColumnIndex(version))
                val recordVersion = getRomUpdateVersion(filterName)
                if (configVersion >= recordVersion) {
                    putRomUpdateVersion(filterName, configVersion)
                    xmlValue = cursor.getString(cursor.getColumnIndex(RomUpdateUtils.COLUMN_NAME_XML))
                    if (xmlValue == null) {
                        xmlValue = ""
                    }
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        } finally {
            cursor?.close()
            return xmlValue
        }
    }

    fun getRomUpdateVersionKey(filterName: String) = "${Build.VERSION.RELEASE}_${ColorOSVersionUtil.getColorOSVersionCode()}_$filterName"

    fun getRomUpdateVersion(filterName: String) = SpHelper.getInt(getRomUpdateVersionKey(filterName), 0)

    fun putRomUpdateVersion(filterName: String, version: Int) = SpHelper.put(getRomUpdateVersionKey(filterName), version)

    fun setRomUpdateHiddenAppList(contentResolver: ContentResolver, data: String?) {
        Settings.System.putStringForUser(contentResolver, ROM_UPDATE_HIDDEN_APP, data, UserHandle.USER_CURRENT)
    }

    fun getRomUpdateHiddenAppList(contentResolver: ContentResolver) :MutableSet<String>{
        val data: String? = Settings.System.getStringForUser(contentResolver, ROM_UPDATE_HIDDEN_APP, UserHandle.USER_CURRENT)
        return parserXmlValueToSet(data)
    }

    fun setRomUpdateOpenAppList(contentResolver: ContentResolver, data: String?) {
        Settings.System.putStringForUser(contentResolver, ROM_UPDATE_OPEN_APP, data, UserHandle.USER_CURRENT)
    }

    fun getRomUpdateHiddenAppData(contentResolver: ContentResolver) :String{
        val data: String? = Settings.System.getStringForUser(contentResolver, ROM_UPDATE_HIDDEN_APP, UserHandle.USER_CURRENT)
        return data ?: ""
    }

    fun getRomUpdateOpenAppList(contentResolver: ContentResolver) :MutableSet<String>{
        val data: String? = Settings.System.getStringForUser(contentResolver, ROM_UPDATE_OPEN_APP, UserHandle.USER_CURRENT)
        return parserXmlValueToSet(data)
    }

    fun getRomUpdateOpenAppData(contentResolver: ContentResolver) :String{
        val data: String? = Settings.System.getStringForUser(contentResolver, ROM_UPDATE_OPEN_APP, UserHandle.USER_CURRENT)
        return data ?: ""
    }

    fun setClickAppList(contentResolver: ContentResolver, data: Set<String>?) {
        Settings.System.putStringForUser(contentResolver, CLICK_APP, putSplitAppList(data), UserHandle.USER_CURRENT)
    }

    fun getClickAppList(contentResolver: ContentResolver) :MutableSet<String>{
        val data: String? = Settings.System.getStringForUser(contentResolver, CLICK_APP, UserHandle.USER_CURRENT)
        return getSplitAppList(data)
    }

    fun getClickAppData(contentResolver: ContentResolver) :String{
        val data: String? = Settings.System.getStringForUser(contentResolver, CLICK_APP, UserHandle.USER_CURRENT)
        return data ?: ""
    }

    fun setOpenAppList(contentResolver: ContentResolver, data: Set<String>?) {
        Settings.System.putStringForUser(contentResolver, OPEN_APP, putSplitAppList(data), UserHandle.USER_CURRENT)
    }

    fun setClickAppData(contentResolver: ContentResolver, data: String) {
        Settings.System.putStringForUser(contentResolver, CLICK_APP, data, UserHandle.USER_CURRENT)
    }

    fun setOpenAppData(contentResolver: ContentResolver, data: String) {
        Settings.System.putStringForUser(contentResolver, OPEN_APP, data, UserHandle.USER_CURRENT)
    }

    fun getOpenAppList(contentResolver: ContentResolver): MutableSet<String>{
        val data: String? = Settings.System.getStringForUser(contentResolver, OPEN_APP, UserHandle.USER_CURRENT)
        return getSplitAppList(data)
    }

    fun getOpenAppData(contentResolver: ContentResolver) :String{
        val data: String? = Settings.System.getStringForUser(contentResolver, OPEN_APP, UserHandle.USER_CURRENT)
        return data ?: ""
    }

    private fun putSplitAppList(data: Set<String>?): String{
        val result = StringBuilder()
        if (data != null && data.isNotEmpty()) {
            data.filter { it.trim().isNotEmpty() }
                    .forEach {
                result.append(it).append(",")
            }
            if (result.isNotEmpty()) {
                result.delete(result.length -1, result.length)
            }
        }
        return result.toString()
    }

    private fun getSplitAppList(data: String?): MutableSet<String>{
        if (data != null && data.isNotEmpty()) {
            return data.split(",").filter {
                it.trim().isNotEmpty()
            }.toHashSet()
        }
        return hashSetOf<String>()
    }

    fun recoveryData(context: Context?) {
        if (context == null) return
        val contentResolver = context.contentResolver
        setDarkModeTimeSwitchOpen(contentResolver, false)
        setDarkModeSwitchOpenNeverHint(contentResolver, false)
        setDarkModeBeginTime(contentResolver, DEFAULT_BEGIN_HOUR, DEFAULT_BEGIN_MINUTE)
        setDarkModeEndTime(contentResolver, DEFAULT_END_HOUR, DEFAULT_END_MINUTE)
        setRomUpdateOpenAppList(contentResolver, "")
        setRomUpdateHiddenAppList(contentResolver, "")
        setClickAppList(contentResolver, null)
        setOpenAppList(contentResolver, null)
        setDarkModeLoadingSetting(contentResolver, INVALID)
        setWaitSwitchDarkMode(contentResolver, INVALID)
        setSystemDarkModeOpen(context, false)
    }

    fun handleAllChecked(isChecked:Boolean, packageName: Set<String>?, context: Context) {
        val contentResolver = context.contentResolver
        val openApp = getOpenAppList(contentResolver)
        var sets = packageName
        if (isChecked) {
            if (packageName == null) {
                sets = getApplicationPackageNameSet(context)
            }
            if (sets != null) {
                openApp.addAll(sets)
            }
        } else {
            openApp.clear()
        }
        setOpenAppList(contentResolver, openApp)
    }

    fun hasDisableFeature(context: Context?):Boolean {
        if (context == null) return false
        val packageManager = context.packageManager
        return packageManager.hasSystemFeature("oppo.settings.disable.display.nightmode")
    }

}
