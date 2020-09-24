package com.color.darkmode.utils

import android.content.Context
import com.oppo.statistics.NearMeStatistics

object StatisticsUtils {
    //use eyeproject id
    private const val SYSTEM_ID = "20130"
    private const val EVENT_SWITCH_OPEN = "dark_mode_switch_open"
    private const val EVENT_SET_TIME = "dark_mode_set_time"
    private const val EVENT_APPLICATION_MANAGER = "dark_mode_application_manager"
    private const val KEY_SWITCH_STATUS = "switch_status"
    private const val SWITCH_STATUS_ON = "1"
    private const val SWITCH_STATUS_OFF = "0"
    private const val KEY_FROM_WHERE = "from_where"
    private const val FROM_WHERE_SETTING = "2"
    private const val FROM_WHERE_CONTROL_CENTER = "1"
    private const val KEY_OPEN_TIME = "open_time"
    private const val KEY_CLOSE_TIME = "close_time"
    private const val KEY_APPLICATION_NAME = "application_name"

    fun sendDataToDcs(context: Context, data: Map<String, String>, eventId: String) {
        NearMeStatistics.onCommon(context, SYSTEM_ID, eventId, data, false)
    }

    fun reportSwitchOpen(context: Context, open: Boolean, fromSetting: Boolean) {
        val map = hashMapOf<String,String>()
        map[KEY_SWITCH_STATUS] = if(open) SWITCH_STATUS_ON else SWITCH_STATUS_OFF
        map[KEY_FROM_WHERE] = if(fromSetting) FROM_WHERE_SETTING else FROM_WHERE_CONTROL_CENTER
        sendDataToDcs(context, map, EVENT_SWITCH_OPEN)
    }

    fun reportSetTime(context: Context, beginTime: String, endTime: String) {
        val map = hashMapOf<String,String>()
        map[KEY_OPEN_TIME] = beginTime
        map[KEY_CLOSE_TIME] = endTime
        sendDataToDcs(context, map, EVENT_SET_TIME)
    }

    fun reportApplicationManager(context: Context, packageName: String, open: Boolean) {
        val map = hashMapOf<String,String>()
        map[KEY_APPLICATION_NAME] = packageName
        map[KEY_SWITCH_STATUS] = if(open) SWITCH_STATUS_ON else SWITCH_STATUS_OFF
        sendDataToDcs(context, map, EVENT_APPLICATION_MANAGER)
    }

}