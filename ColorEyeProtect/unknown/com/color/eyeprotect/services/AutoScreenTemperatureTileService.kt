package com.color.eyeprotect.services

import android.database.ContentObserver
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import com.color.common.util.LogUtil
import com.color.eyeprotect.R
import com.color.eyeprotect.util.EyeProtectConstant
import com.color.eyeprotect.util.ProtectEyesUtil

class AutoScreenTemperatureTileService : TileService() {
    companion object {
        const val TAG = "AutoScreenTemperatureTileService"
    }

    private var mContentObserver: AutoContentObserver
    init {
        mContentObserver = AutoContentObserver()
    }

    override fun onStartListening() {
        super.onStartListening()
        mContentObserver.startObserver()
        mContentObserver.updateTile(ProtectEyesUtil.isOpenSettingColorTemperature(application.contentResolver))
    }

    override fun onStopListening() {
        super.onStopListening()
        mContentObserver.stopObserver()
    }

    override fun onClick() {
        super.onClick()
        var open = !ProtectEyesUtil.isOpenSettingColorTemperature(application.contentResolver)
        ProtectEyesUtil.setSettingColorTemperatureEnable(application.contentResolver, open)
        LogUtil.logD(TAG, "onClick:$open")
    }

    inner class AutoContentObserver : ContentObserver(Handler(Looper.getMainLooper())) {
        private val mAutoTemperatureUri = Settings.System.getUriFor(EyeProtectConstant.SETTING_ENABLE_COLOR_TEMPERATURE_REGULATION)

        override fun onChange(self: Boolean, uri: Uri?) {
            updateTile(ProtectEyesUtil.isOpenSettingColorTemperature(application.contentResolver))
        }

        fun startObserver() {
            contentResolver.registerContentObserver(mAutoTemperatureUri, false, this)
        }

        fun stopObserver() {
            contentResolver.unregisterContentObserver(this)
        }

        fun updateTile(isOpen: Boolean) {
            try {
                val tile = qsTile
                tile.state = if (isOpen) Tile.STATE_ACTIVE else Tile.STATE_INACTIVE
                tile.label = getString(R.string.auto_screen_temperature)
                tile.updateTile()
            } catch (e: Exception) {
            }
        }
    }
}