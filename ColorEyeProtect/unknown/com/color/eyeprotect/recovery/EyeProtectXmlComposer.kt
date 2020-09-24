package com.color.eyeprotect.recovery

import android.content.Context
import com.color.common.util.LogUtil
import com.color.eyeprotect.util.EyeProtectConstant
import com.color.eyeprotect.util.EyeProtectConstant.DEFAULT_SEEK_LEVEL
import com.color.eyeprotect.util.EyeProtectConstant.INTELLIGENT_COLOR_TEMPERATURE_SUPPORT_FEATURE
import com.color.eyeprotect.util.EyeProtectConstant.NOT_SHOW_GUIDE_DIALOG
import com.color.eyeprotect.util.EyeProtectConstant.SHOW_GUIDE_DIALOG
import com.color.eyeprotect.util.ProtectEyesUtil

object EyeProtectXmlComposer {
    const val TAG = "EyeProtectXmlComposer"
    private const val END_OF_LINE = "\r\n"
    const val DATA_SPLIT = ":"
    fun addEyeProtectData(context: Context): String? {
        val contentResolver = context.contentResolver
        val builder = StringBuilder()
        val pm = context.packageManager
        val hasFeature = pm.hasSystemFeature(INTELLIGENT_COLOR_TEMPERATURE_SUPPORT_FEATURE)
        if (hasFeature) {
            builder.append(EyeProtectConstant.SETTING_ENABLE_COLOR_TEMPERATURE_REGULATION).append(DATA_SPLIT).append(ProtectEyesUtil.isOpenSettingColorTemperature(contentResolver)).append(END_OF_LINE)
        }
        builder.append(EyeProtectConstant.COLOR_EYEPROTECT_SAVED_LEVEL).append(DATA_SPLIT).append(ProtectEyesUtil.getEyeProtectSavedLevel(contentResolver, DEFAULT_SEEK_LEVEL)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_ENABLE).append(DATA_SPLIT).append(ProtectEyesUtil.isProtectEyesOpen(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.DISPLAY_MODE_CHANGE).append(DATA_SPLIT).append(ProtectEyesUtil.getDisplayModeChangeFlag(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_START_VALUE_KEY).append(DATA_SPLIT).append(ProtectEyesUtil.getEyeprotectStartValue(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_NORMAL_ENABLE).append(DATA_SPLIT).append(ProtectEyesUtil.getCheckStateForNormalPreference(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_GRAY_ENABLE).append(DATA_SPLIT).append(ProtectEyesUtil.isGraySacleOn(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.FIX_TIME_STATE).append(DATA_SPLIT).append(ProtectEyesUtil.isFixedTimeSettingsOpen(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_BEGIN_TIME_HOUR).append(DATA_SPLIT).append(ProtectEyesUtil.getBeginHour(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_BEGIN_TIME_MIN).append(DATA_SPLIT).append(ProtectEyesUtil.getBeginMin(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_END_TIME_HOUR).append(DATA_SPLIT).append(ProtectEyesUtil.getEndHour(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_END_TIME_MIN).append(DATA_SPLIT).append(ProtectEyesUtil.getEndMin(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_FIX_TIME_CHANGE).append(DATA_SPLIT).append(ProtectEyesUtil.getTimeChangeFlag(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_TIMER_ACTIVE_TIME).append(DATA_SPLIT).append(ProtectEyesUtil.getActiveTime(contentResolver)).append(END_OF_LINE)
        builder.append(EyeProtectConstant.SHOW_PROTECT_EYES_GUIDE_DIALOG).append(DATA_SPLIT).append(
                if (ProtectEyesUtil.isNeedShowGuideDialog(contentResolver)) SHOW_GUIDE_DIALOG else NOT_SHOW_GUIDE_DIALOG).append(END_OF_LINE)
        builder.append(EyeProtectConstant.EYEPROTECT_ENABLE_TIME).append(DATA_SPLIT).append(ProtectEyesUtil.getEyeprotectEnableTime(contentResolver)).append(END_OF_LINE)

        LogUtil.logD(TAG, "addEyeProtectData-->$builder")
        return builder.toString()
    }

    fun restoreEyeProtectData(context: Context, restoreData: EyeProtectRestoreData) {
        val contentResolver = context.contentResolver
        ProtectEyesUtil.setEyeProtectSavedLevel(contentResolver, restoreData.colorEyeProtectSaveLevel)
        ProtectEyesUtil.setEyeProtectEnable(contentResolver, restoreData.eyeProtectEnable)
        ProtectEyesUtil.setDisplayModeChangeFlag(contentResolver, restoreData.displayModeChange)
        ProtectEyesUtil.setEyeprotectStartValue(contentResolver, restoreData.startLevel)
        ProtectEyesUtil.setCheckStateForNormalPreference(contentResolver, restoreData.normalEnable)
        ProtectEyesUtil.setCheckStateForGrayPreference(contentResolver, restoreData.grayEnable)
        ProtectEyesUtil.setEyeProtectFixTimeState(contentResolver, restoreData.fixTimeState)
        ProtectEyesUtil.setBeginHour(contentResolver, restoreData.beginTimeHour)
        ProtectEyesUtil.setBeginMin(contentResolver, restoreData.beginTimeMin)
        ProtectEyesUtil.setEndHour(contentResolver, restoreData.endTimeHour)
        ProtectEyesUtil.setEndMin(contentResolver, restoreData.endTimeMin)
        ProtectEyesUtil.setTimeChangeFlag(contentResolver, restoreData.fixTimeChange)
        ProtectEyesUtil.setActiveTime(contentResolver, restoreData.activeTime)
        ProtectEyesUtil.setShowGuideDialogValue(contentResolver, restoreData.showGuidDialog)
        ProtectEyesUtil.setEyeprotectEnableTime(contentResolver, restoreData.eyeProtectEnableTime)
        val pm = context.packageManager
        val hasFeature = pm.hasSystemFeature(INTELLIGENT_COLOR_TEMPERATURE_SUPPORT_FEATURE)
        if (hasFeature) {
            ProtectEyesUtil.setSettingColorTemperatureEnable(contentResolver, restoreData.autoColorTemperatureEnable)
        }
        LogUtil.logD(TAG, "restoreEyeProtectData-->$restoreData")
    }
}