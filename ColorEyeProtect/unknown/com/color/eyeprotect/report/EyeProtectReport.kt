package com.color.eyeprotect.report

import android.content.Context
import com.color.eyeprotect.util.ProtectEyesUtil
import com.oppo.statistics.NearMeStatistics

object EyeProtectReport {

    private const val SYSTEM_ID = "20130"
    private const val EYEPROTECT_EVER_ENABLE = "protect_eyes_ever_enable"
    private const val TIMER_STATE = "protect_eyes_timer_state"
    private const val EYEPROTECT_BEGIN_TIME = "protect_eyes_begin_time"
    private const val EYEPROTECT_END_TIME = "protect_eyes_end_time"
    private const val EVENT_DISPLAY_VALUE = "screen_display_value"
    private const val AUTO_SCREEN_TEMPERATURE_ENABLE = "color_temperature_switch"

    fun sendDataToDcs(context: Context, key: String, value: String, eventId: String) {
        var data = mapOf(key to value)
        NearMeStatistics.onCommon(context, SYSTEM_ID, eventId, data, false)
    }

    fun sendStaitcDataToDcs(context: Context, hasEverEnable: Boolean, enableTimerSetting: Boolean, beginTime: String, endTime: String) { // send every day
        sendDataToDcs(context, "value", if (hasEverEnable) "1" else "0", EYEPROTECT_EVER_ENABLE)

        sendDataToDcs(context, "value", if (enableTimerSetting) "1" else "0", TIMER_STATE);

        sendDataToDcs(context, "value", beginTime, EYEPROTECT_BEGIN_TIME)

        sendDataToDcs(context, "value", endTime, EYEPROTECT_END_TIME)

        sendDataToDcs(context, "level", ProtectEyesUtil.getDisplayLevel(context).toString(), EVENT_DISPLAY_VALUE)

        sendDataToDcs(context, "value", if (ProtectEyesUtil.isOpenSettingColorTemperature(context.contentResolver))
            "1" else "0", AUTO_SCREEN_TEMPERATURE_ENABLE)
    }
}