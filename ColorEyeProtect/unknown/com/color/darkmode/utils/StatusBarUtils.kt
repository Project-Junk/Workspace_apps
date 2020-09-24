package com.color.darkmode.utils

import android.app.Activity
import android.content.Context
import android.graphics.Color
import android.os.Build
import android.view.View
import android.view.WindowManager
import com.color.eyeprotect.R
import com.color.support.util.ColorOSVersionUtil
import com.color.support.view.ColorStatusbarTintUtil
import com.color.os.ColorBuild.ColorOS_3_0
import android.R.color.white





object StatusBarUtils {

    fun setStatusBarTransparentAndBlackFont(mActivity: Activity) {
        val window = mActivity.window
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
            window.statusBarColor = Color.TRANSPARENT
            window.navigationBarColor = (mActivity.resources.getColor(R.color.navigation_bar_color))
        }

        val decorView = window.decorView
        var vis = decorView.systemUiVisibility
        if (DarkModeSettingUtils.isSystemDarkModeOpen(mActivity)) {
            vis = vis and View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR.inv()
            vis = vis and View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR.inv()
        } else {
            val white = mActivity.resources.getBoolean(R.bool.is_status_white)
            vis = if (!white) {
                vis or View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
            } else {
                vis or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            }
        }
        decorView.systemUiVisibility = vis

    }

    fun getStatusBarHeight(context: Context): Int {
        var result = 0
        val resId = context.resources.getIdentifier("status_bar_height", "dimen", "android")
        if (resId > 0) {
            result = context.resources.getDimensionPixelSize(resId)
        }
        return result
    }
}