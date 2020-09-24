package com.color.common.recovery

import android.content.Context

interface ICommonRestoreInterface {
    fun onRestoreTempData(context: Context, line: String)
    fun onRestore(context: Context)
}