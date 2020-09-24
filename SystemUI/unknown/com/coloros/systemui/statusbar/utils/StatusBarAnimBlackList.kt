/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - StatusBarAnimBlackList.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/09/19
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/09/19     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.utils

import android.content.Context
import com.coloros.systemui.provider.ProviderUtil
import java.util.*

object StatusBarAnimBlackList {
    const val ANIM_5G = "anim_5g"
    private val sStatusBarAnimBlackList = ArrayList<String>()

    fun setStatusBarAnimBlackList(statusBarAnimBlackList: List<String>?) {
        sStatusBarAnimBlackList.clear()
        if (statusBarAnimBlackList?.isNotEmpty() == true) {
            sStatusBarAnimBlackList.addAll(statusBarAnimBlackList)
        }
    }

    fun getStatusBarAnimBlackList() = sStatusBarAnimBlackList

    fun initStatusBarAnimBlackList(context: Context) {
        val blackList = ProviderUtil.getListFromLocalRomupdateFile(context, ProviderUtil.QUICK_SETTINGS_TILE_KEY)
        setStatusBarAnimBlackList(blackList)
    }

    fun isBlackListValue(value: String): Boolean {
        return getStatusBarAnimBlackList().contains(value)
    }
}