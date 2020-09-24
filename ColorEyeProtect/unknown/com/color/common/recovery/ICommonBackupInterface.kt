package com.color.common.recovery

import android.content.Context

interface ICommonBackupInterface {
    fun onBackup(context: Context): String?
}