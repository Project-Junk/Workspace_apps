package com.color.eyeprotect.recovery

import android.content.Context
import com.color.common.recovery.ICommonBackupInterface

class EyeProtectBackupImpl: ICommonBackupInterface {
    override fun onBackup(context: Context): String? {
        return EyeProtectXmlComposer.addEyeProtectData(context)
    }
}