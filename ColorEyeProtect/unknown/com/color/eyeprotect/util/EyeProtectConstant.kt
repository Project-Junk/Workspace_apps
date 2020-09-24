package com.color.eyeprotect.util

object EyeProtectConstant {
    const val SENSOR_COLOR_TEMPERATURE = 33171001 // Color temperature changed for sensor
    const val SETTING_ENABLE_COLOR_TEMPERATURE_REGULATION = "setting_enable_color_temperature_regulation"
    const val SETTING_VALUE_COLOR_TEMPERATURE_REGULATION = "setting_value_color_temperature_regulation"
    const val COLOR_DISPLAY_LEVEL = "color_display_level"
    const val EYEPROTECT_LEVEL = "OppoEyeprotect_level"
    const val COLOR_EYEPROTECT_LEVEL = "color_eyeprotect_level"
    const val COLOR_EYEPROTECT_SAVED_LEVEL = "color_eyeprotect_saved_level"
    const val EYEPROTECT_ENABLE = "color_eyeprotect_enable"
    const val DISPLAY_MODE_CHANGE = "display_mode_change"
    const val EYEPROTECT_START_VALUE_KEY = "color_eyeprotect_start_level"
    const val EYEPROTECT_NORMAL_ENABLE = "normal_on"
    const val EYEPROTECT_GRAY_ENABLE = "gray_scale_on"
    const val FIX_TIME_STATE = "fix_time_state"
    const val EYEPROTECT_BEGIN_TIME_HOUR = "eyeprotect_begin_time_hour"
    const val EYEPROTECT_BEGIN_TIME_MIN = "eyeprotect_begin_time_min"
    const val EYEPROTECT_END_TIME_HOUR = "eyeprotect_end_time_hour"
    const val EYEPROTECT_END_TIME_MIN = "eyeprotect_end_time_min"
    const val EYEPROTECT_FIX_TIME_CHANGE = "eyeprotect_fix_time_change"
    const val EYEPROTECT_TIMER_ACTIVE_TIME = "OppoEyeprotect_timer_active_time"
    const val SHOW_PROTECT_EYES_GUIDE_DIALOG = "shortcuts_panel_show_guide_dialog"
    //display color mode name
    const val OPPO_COLOR_MODE = "oppo_color_mode"
    const val EYEPROTECT_ENABLE_TIME = "eyeprotect_enable_time"

    const val INTELLIGENT_COLOR_TEMPERATURE_SUPPORT_FEATURE = "oppo.intelligent.color.temperature.support"

    const val SHOW_GUIDE_DIALOG = 1
    const val NOT_SHOW_GUIDE_DIALOG = 0

    const val SWITCH_OFF = 0
    const val SWITCH_ON = 1

    const val NORMAL_MODE = 0
    const val GARY_MODE = 1

    const val COLOR_MODE_DEFAULT = 0
    const val COLOR_MODE_SOFT = 1
    const val COLOR_MODE_ADAPT = 2

    const val DEFAULT_PROTECT_EYES_BEGIN_HOUR = 22
    const val DEFAULT_PROTECT_EYES_END_HOUR = 7
    const val DEFAULT_MIN = 0

    const val DEFAULT_SEEK_LEVEL = 0.688748f//0.5F luoqy
    //QiaoYi.Luo@ROM.SDK, 2017-11-27 : Add for screen color temperature
    const val DEFAULT_DISPLAY_LEVEL = 0.17f

    const val MIDDLE_START_LEVEL = 0.155
    const val MIDDLE_END_LEVEL = 0.185

    const val MIN_TEMP = 2700
    const val EYE_START_TEMP = 4300//the min eyeprotect temp.
    const val MAX_TEMP = 9500//7725
    const val DEFAULT_THRESHOLD = 150

    const val TRACKING_ANIMATION_DURATION = 100L
    const val ENABLE_ANIMATION_DURATION = 2000L
    const val DISABLE_ANIMATION_DURATION = 1000L
}