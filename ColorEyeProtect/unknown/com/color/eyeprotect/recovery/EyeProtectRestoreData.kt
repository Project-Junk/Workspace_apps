package com.color.eyeprotect.recovery

import com.color.eyeprotect.util.EyeProtectConstant

data class EyeProtectRestoreData(var autoColorTemperatureEnable: Boolean = false,
                                 var colorEyeProtectSaveLevel: Float = EyeProtectConstant.DEFAULT_SEEK_LEVEL,
                                 var eyeProtectEnable: Boolean = false,
                                 var displayModeChange: Boolean = false,
                                 var startLevel: Float = EyeProtectConstant.DEFAULT_SEEK_LEVEL,
                                 var normalEnable: Boolean = false,
                                 var grayEnable: Boolean = false,
                                 var fixTimeState: Boolean = false,
                                 var beginTimeHour: Int = EyeProtectConstant.DEFAULT_PROTECT_EYES_BEGIN_HOUR,
                                 var beginTimeMin: Int = EyeProtectConstant.DEFAULT_MIN,
                                 var endTimeHour: Int = EyeProtectConstant.DEFAULT_PROTECT_EYES_END_HOUR,
                                 var endTimeMin: Int = EyeProtectConstant.DEFAULT_MIN,
                                 var fixTimeChange: Boolean = false,
                                 var activeTime: String = "",
                                 var showGuidDialog: Int = EyeProtectConstant.SHOW_GUIDE_DIALOG,
                                 var eyeProtectEnableTime: Long = 0)