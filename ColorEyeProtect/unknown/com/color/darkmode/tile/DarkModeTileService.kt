package com.color.darkmode.tile

import android.content.Intent
import android.graphics.drawable.Icon
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import com.color.compat.app.StatusBarManagerNative
import com.color.darkmode.utils.DarkModeManager
import com.color.darkmode.utils.DarkModeSettingUtils
import com.color.eyeprotect.R

class DarkModeTileService: TileService() {
    override fun onStartCommand(p0: Intent?, p1: Int, p2: Int): Int {
        return super.onStartCommand(p0, p1, p2)
    }

    override fun onStartListening() {
        super.onStartListening()
        updateTile()
    }

    override fun onClick() {
        super.onClick()
        val statusBarManagerNative = StatusBarManagerNative(applicationContext)
        statusBarManagerNative.collapsePanels()
        val isDarkMode = isDarkMode()
        DarkModeManager.immediatelyUpdateDarkModeSwitch(applicationContext, !isDarkMode, true)
    }

    private fun updateTile() {
        try {
            val contentResolver = applicationContext.contentResolver
            var isDarkModeOpen = DarkModeSettingUtils.isSystemDarkModeOpen(applicationContext)
            var isWaitSwitch = false
            when(DarkModeSettingUtils.getWaitSwitchDarkMode(contentResolver)) {
                DarkModeSettingUtils.SWITCH_OFF -> {
                    isDarkModeOpen = false
                    isWaitSwitch = true
                }
                DarkModeSettingUtils.SWITCH_ON -> {
                    isDarkModeOpen = true
                    isWaitSwitch = true
                }
            }
            val tile = qsTile
            tile.state = if (isDarkModeOpen) Tile.STATE_ACTIVE else Tile.STATE_INACTIVE
            tile.icon = if (isDarkModeOpen) Icon.createWithResource(applicationContext, R.drawable.status_bar_darkmode_on) else Icon.createWithResource(applicationContext, R.drawable.status_bar_darkmode_off)
            tile.label = getString(R.string.dark_mode)
            if (isWaitSwitch) {
                tile.subtitle = getString(R.string.darkmode_screen_off_effect)
            } else {
                tile.subtitle = ""
            }
            tile.updateTile()
        } catch (e: Exception) {

        }
    }

    private fun isDarkMode(): Boolean {
        val contentResolver = applicationContext.contentResolver
        var isDarkModeOpen = DarkModeSettingUtils.isSystemDarkModeOpen(applicationContext)
        when(DarkModeSettingUtils.getWaitSwitchDarkMode(contentResolver)) {
            DarkModeSettingUtils.SWITCH_OFF -> isDarkModeOpen = false
            DarkModeSettingUtils.SWITCH_ON -> isDarkModeOpen = true
        }
        return isDarkModeOpen
    }

}