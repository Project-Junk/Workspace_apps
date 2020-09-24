package com.color.darkmode.recovery

import android.content.Context
import com.color.common.recovery.ICommonBackupInterface

class DarkModeBackupImpl: ICommonBackupInterface{
    override fun onBackup(context: Context): String?{
        return DarkModeXmlComposer.addDarkModeData(context)
    }
}