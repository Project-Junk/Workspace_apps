/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - TestModeReceiver.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/10/3
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/10/3     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.common.receiver

class TestModeReceiver private constructor() : AbstractReceiver() {
    companion object {
        val instance: TestModeReceiver = TestModeReceiver()
        const val ACTION_TEST_MODE = "oppo.action.open.TEST_MODE"
        const val EXTRA_TEST_MODE_TYPE = "type"
        const val EXTRA_TEST_MODE_TEST = "test"
        const val EXTRA_TEST_MODE_SHOW = "show"
        const val EXTRA_TEST_MODE_TYPE_5G_ANIM = "anim_5g"
    }

    override fun getActions() = arrayOf(ACTION_TEST_MODE)
}