package com.color.darkmode.romupdate

import android.content.Context
import android.net.Uri
import com.color.darkmode.utils.DarkModeSettingUtils
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

object RomUpdateUtils {
    const val OPEN_APP_LIST = "sys_darkmode_managed_list"
    const val HIDDEN_APP_LIST = "sys_darkmode_hidden_list"
    const val ACTION = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"
    const val ROM_UPDATE_CONFIG_SUCCESS_EXTRA = "ROM_UPDATE_CONFIG_LIST"
    val CONTENT_URI = Uri.parse("content://com.nearme.romupdate.provider.db/update_list")
    const val COLUMN_NAME_XML = "xml"
    private val mSingleThreadPool: ExecutorService by lazy {
        Executors.newSingleThreadExecutor()
    }

    fun updateData(context: Context) {
        mSingleThreadPool.execute {
            try {
                val startTime = System.currentTimeMillis()
                val value = DarkModeSettingUtils.getDataFromProvider(context, OPEN_APP_LIST)
                if (value != null) {
                    DarkModeSettingUtils.setRomUpdateOpenAppList(context.contentResolver, value)
                } else {
                    DarkModeSettingUtils.logD("RomUpdate updateData error")
                }
                DarkModeSettingUtils.logD("RomUpdate updateData cost ${System.currentTimeMillis() - startTime} ms")
            } catch (ex: Exception) {
                ex.printStackTrace()
            }
        }
    }

    fun hideApp(context: Context) {
        mSingleThreadPool.execute {
            try {
                val startTime = System.currentTimeMillis()
                val value = DarkModeSettingUtils.getDataFromProvider(context, HIDDEN_APP_LIST)
                if (value != null) {
                    DarkModeSettingUtils.setRomUpdateHiddenAppList(context.contentResolver, value)
                } else {
                    DarkModeSettingUtils.logD("RomUpdate hideApp error")
                }
                DarkModeSettingUtils.logD("RomUpdate hideApp cost ${System.currentTimeMillis() - startTime} ms")
            } catch (ex: Exception) {
                ex.printStackTrace()
            }
        }
    }

}