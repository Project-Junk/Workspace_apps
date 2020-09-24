package com.color.darkmode.recovery

import android.content.Context
import com.color.darkmode.romupdate.RomUpdateUtils
import com.color.darkmode.utils.DarkModeManager
import com.color.darkmode.utils.DarkModeSettingUtils

object DarkModeXmlComposer {
    const val END_OF_LINE = "\r\n"
    const val DATA_SPLIT = ":"
    const val DARKMODE_SWITCH = "DarkModeXmlComposer_switch"
    const val DARKMODE_ROMUPDATE_OPEN_VERSION_KEY = "DarkModeXmlComposer_romupdate_open_version"
    const val DARKMODE_ROMUPDATE_HIDE_VERSION_KEY = "DarkModeXmlComposer_romupdate_hide_version"
    const val DARKMODE_ROMUPDATE_OPEN_VERSION = "DarkModeXmlComposer_romupdate_open"
    const val DARKMODE_ROMUPDATE_HIDE_VERSION = "DarkModeXmlComposer_romupdate_hide"

    fun addDarkModeData(context: Context): String {
        val contentResolver = context.contentResolver
        val builder = StringBuilder()

        builder.append(DARKMODE_SWITCH).append(DATA_SPLIT).append(DarkModeSettingUtils.isSystemDarkModeOpen(context)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.BEGIN_TIME).append(DATA_SPLIT).append(DarkModeSettingUtils.getDarkModeBeginTimeData(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.END_TIME).append(DATA_SPLIT).append(DarkModeSettingUtils.getDarkModeEndTimeData(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.TIME_SWITCH).append(DATA_SPLIT).append(DarkModeSettingUtils.isDarkModeTimeSwitchOpen(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.SWITCH_OPEN_NEVER_HINT).append(DATA_SPLIT).append(DarkModeSettingUtils.isDarkModeSwitchOpenNeverHint(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.ROM_UPDATE_HIDDEN_APP).append(DATA_SPLIT).append(DarkModeSettingUtils.getRomUpdateHiddenAppData(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.ROM_UPDATE_OPEN_APP).append(DATA_SPLIT).append(DarkModeSettingUtils.getRomUpdateOpenAppData(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.CLICK_APP).append(DATA_SPLIT).append(DarkModeSettingUtils.getClickAppData(contentResolver)).append(END_OF_LINE)

        builder.append(DarkModeSettingUtils.OPEN_APP).append(DATA_SPLIT).append(DarkModeSettingUtils.getOpenAppData(contentResolver)).append(END_OF_LINE)

        builder.append(DARKMODE_ROMUPDATE_OPEN_VERSION_KEY).append(DATA_SPLIT).append(DarkModeSettingUtils.getRomUpdateVersionKey(RomUpdateUtils.OPEN_APP_LIST)).append(END_OF_LINE)

        builder.append(DARKMODE_ROMUPDATE_HIDE_VERSION_KEY).append(DATA_SPLIT).append(DarkModeSettingUtils.getRomUpdateVersionKey(RomUpdateUtils.HIDDEN_APP_LIST)).append(END_OF_LINE)

        builder.append(DARKMODE_ROMUPDATE_OPEN_VERSION).append(DATA_SPLIT).append(DarkModeSettingUtils.getRomUpdateVersion(RomUpdateUtils.OPEN_APP_LIST)).append(END_OF_LINE)

        builder.append(DARKMODE_ROMUPDATE_HIDE_VERSION).append(DATA_SPLIT).append(DarkModeSettingUtils.getRomUpdateVersion(RomUpdateUtils.HIDDEN_APP_LIST)).append(END_OF_LINE)

        DarkModeSettingUtils.logD("addDarkModeData-->${builder.toString()}")

        return builder.toString()
    }

    fun restoreData(context: Context, recoveryData: RecoveryData) {
        val contentResolver = context.contentResolver
        DarkModeSettingUtils.setDarkModeTimeSwitchOpen(contentResolver, recoveryData.timeSwitch)
        DarkModeSettingUtils.setDarkModeSwitchOpenNeverHint(contentResolver, recoveryData.switchNeverOpenHint)
        val beginTime = DarkModeSettingUtils.parseBeginTime(recoveryData.beginTime)
        DarkModeSettingUtils.setDarkModeBeginTime(contentResolver, beginTime[0], beginTime[1])
        val endTime = DarkModeSettingUtils.parseEndTime(recoveryData.endTime)
        DarkModeSettingUtils.setDarkModeEndTime(contentResolver, endTime[0], endTime[1])
        DarkModeSettingUtils.setRomUpdateHiddenAppList(contentResolver, recoveryData.romUpdateHiddenApp)
        DarkModeSettingUtils.setRomUpdateOpenAppList(contentResolver, recoveryData.romUpdateOpenApp)
        DarkModeSettingUtils.setOpenAppData(contentResolver, recoveryData.openApp)
        DarkModeSettingUtils.setClickAppData(contentResolver, recoveryData.clickApp)
        DarkModeSettingUtils.setDarkModeLoadingSetting(contentResolver, DarkModeSettingUtils.INVALID)
        DarkModeSettingUtils.setWaitSwitchDarkMode(context.contentResolver, DarkModeSettingUtils.INVALID)
        DarkModeManager.immediatelyUpdateDarkModeSwitch(context, recoveryData.switch, false)

        val currentRomUpdateOpenVersionKey = DarkModeSettingUtils.getRomUpdateVersionKey(RomUpdateUtils.OPEN_APP_LIST)
        val currentRomUpdateHideVersionKey = DarkModeSettingUtils.getRomUpdateVersionKey(RomUpdateUtils.HIDDEN_APP_LIST)
        if ((recoveryData.romUpdateHiddenAppVersionKey == currentRomUpdateHideVersionKey) and
                (recoveryData.romUpdateOpenAppVersionKey == currentRomUpdateOpenVersionKey)) {
            DarkModeSettingUtils.putRomUpdateVersion(RomUpdateUtils.OPEN_APP_LIST, recoveryData.romUpdateOpenAppVersion)
            DarkModeSettingUtils.putRomUpdateVersion(RomUpdateUtils.HIDDEN_APP_LIST, recoveryData.romUpdateHiddenAppVersion)
            DarkModeSettingUtils.logD("restore-->romUpdateVersion-->hideVersion:${recoveryData.romUpdateHiddenAppVersion}," +
                    "openVersion:${recoveryData.romUpdateOpenAppVersion}")
        }
        DarkModeSettingUtils.logD("restore-->timeSwitch:${recoveryData.timeSwitch}," +
                "switchNeverOpenHint:${recoveryData.switchNeverOpenHint},beginTime:{${recoveryData.beginTime}}," +
                "endTime:${recoveryData.endTime},switch:${recoveryData.switch}")
    }

}
