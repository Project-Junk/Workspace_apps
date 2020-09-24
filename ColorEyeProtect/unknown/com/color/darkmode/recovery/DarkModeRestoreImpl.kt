package com.color.darkmode.recovery

import android.content.Context
import com.color.common.recovery.ICommonRestoreInterface
import com.color.darkmode.utils.DarkModeSettingUtils

class DarkModeRestoreImpl: ICommonRestoreInterface {
    private var mRecoveryData: RecoveryData? = null
    private var mIsRecovery =  false
    override fun onRestore(context: Context) {
        if (mRecoveryData != null && mIsRecovery) {
            DarkModeXmlComposer.restoreData(context, mRecoveryData!!)
            mIsRecovery = false
            DarkModeSettingUtils.logD("onRestore finish")
        } else {
            DarkModeSettingUtils.logD("onRestore error")
        }
    }

    override fun onRestoreTempData(context: Context, line: String) {
        if (!mIsRecovery) {
            mRecoveryData = RecoveryData()
            mIsRecovery = true
            DarkModeSettingUtils.logD("onRestoreTempData-->mIsRecovery change to true")
        } else {
            DarkModeSettingUtils.logD("onRestoreTempData")
        }
        val splitLength = DarkModeXmlComposer.DATA_SPLIT.length
        when {
            line.startsWith(DarkModeSettingUtils.BEGIN_TIME) -> mRecoveryData!!.beginTime = line.substring(DarkModeSettingUtils.BEGIN_TIME.length + splitLength)
            line.startsWith(DarkModeSettingUtils.END_TIME) -> mRecoveryData!!.endTime = line.substring(DarkModeSettingUtils.END_TIME.length + splitLength)
            line.startsWith(DarkModeSettingUtils.CLICK_APP) -> mRecoveryData!!.clickApp = line.substring(DarkModeSettingUtils.CLICK_APP.length + splitLength)
            line.startsWith(DarkModeSettingUtils.OPEN_APP) -> mRecoveryData!!.openApp = line.substring(DarkModeSettingUtils.OPEN_APP.length + splitLength)
            line.startsWith(DarkModeSettingUtils.ROM_UPDATE_HIDDEN_APP) -> mRecoveryData!!.romUpdateHiddenApp = line.substring(DarkModeSettingUtils.ROM_UPDATE_HIDDEN_APP.length + splitLength)
            line.startsWith(DarkModeSettingUtils.ROM_UPDATE_OPEN_APP) -> mRecoveryData!!.romUpdateOpenApp = line.substring(DarkModeSettingUtils.ROM_UPDATE_OPEN_APP.length + splitLength)
            line.startsWith(DarkModeSettingUtils.TIME_SWITCH) -> mRecoveryData!!.timeSwitch = line.substring(DarkModeSettingUtils.TIME_SWITCH.length + splitLength).toBoolean()
            line.startsWith(DarkModeSettingUtils.SWITCH_OPEN_NEVER_HINT) -> mRecoveryData!!.switchNeverOpenHint = line.substring(DarkModeSettingUtils.SWITCH_OPEN_NEVER_HINT.length + splitLength).toBoolean()
            line.startsWith(DarkModeXmlComposer.DARKMODE_SWITCH) -> mRecoveryData!!.switch = line.substring(DarkModeXmlComposer.DARKMODE_SWITCH.length + splitLength).toBoolean()
            line.startsWith(DarkModeXmlComposer.DARKMODE_ROMUPDATE_OPEN_VERSION_KEY) -> mRecoveryData!!.romUpdateOpenAppVersionKey = line.substring(DarkModeXmlComposer.DARKMODE_ROMUPDATE_OPEN_VERSION_KEY.length + splitLength)
            line.startsWith(DarkModeXmlComposer.DARKMODE_ROMUPDATE_HIDE_VERSION_KEY) -> mRecoveryData!!.romUpdateHiddenAppVersionKey = line.substring(DarkModeXmlComposer.DARKMODE_ROMUPDATE_HIDE_VERSION_KEY.length + splitLength)
            line.startsWith(DarkModeXmlComposer.DARKMODE_ROMUPDATE_OPEN_VERSION) -> mRecoveryData!!.romUpdateOpenAppVersion = line.substring(DarkModeXmlComposer.DARKMODE_ROMUPDATE_OPEN_VERSION.length + splitLength).toInt()
            line.startsWith(DarkModeXmlComposer.DARKMODE_ROMUPDATE_HIDE_VERSION) -> mRecoveryData!!.romUpdateHiddenAppVersion = line.substring(DarkModeXmlComposer.DARKMODE_ROMUPDATE_HIDE_VERSION.length + splitLength).toInt()
        }
    }
}