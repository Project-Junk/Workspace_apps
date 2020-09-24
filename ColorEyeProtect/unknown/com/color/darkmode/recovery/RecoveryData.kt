package com.color.darkmode.recovery

data class RecoveryData(var switch: Boolean = false,var beginTime: String = "", var endTime: String = "", var timeSwitch: Boolean = false,
                        var switchNeverOpenHint: Boolean = false, var romUpdateHiddenApp: String = "",
                        var romUpdateOpenApp: String = "", var clickApp: String = "", var openApp: String = "",
                        var romUpdateOpenAppVersion: Int = 0, var romUpdateHiddenAppVersion: Int = 0,
                        var romUpdateOpenAppVersionKey: String = "", var romUpdateHiddenAppVersionKey: String = "")