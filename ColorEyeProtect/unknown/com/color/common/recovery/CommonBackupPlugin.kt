package com.color.common.recovery

import android.content.Context
import android.os.Bundle
import com.color.darkmode.recovery.DarkModeBackupImpl
import com.color.darkmode.utils.DarkModeSettingUtils
import com.color.eyeprotect.recovery.EyeProtectBackupImpl
import com.coloros.backup.sdk.v2.common.host.BREngineConfig
import com.coloros.backup.sdk.v2.compat.DataSizeUtils
import com.coloros.backup.sdk.v2.compat.LocalTransport

import com.coloros.backup.sdk.v2.component.BRPluginHandler
import com.coloros.backup.sdk.v2.component.plugin.BackupPlugin
import com.coloros.backup.sdk.v2.host.listener.BRListener.ProgressConstants.Helper
import java.io.*

class CommonBackupPlugin : BackupPlugin() {
    private val MAX_COUNT = 1
    private var mWriter: Writer? = null
    private var mCompletedCount: Int = 0
    private var mIsCancel: Boolean = false
    private var mContext: Context? = null
    private var mBRPluginHandler: BRPluginHandler? = null
    private var mBackupImplList = arrayListOf<ICommonBackupInterface>()

    init {
        //mBackupImplList.add(DarkModeBackupImpl())
        mBackupImplList.add(EyeProtectBackupImpl())
    }

    override fun onCreate(context: Context, brPluginHandler: BRPluginHandler, config: BREngineConfig) {
        DarkModeSettingUtils.logD("BackupPlugin-->onCreate")
        mContext = context
        super.onCreate(context, brPluginHandler, config)
        mBRPluginHandler = brPluginHandler
    }

    override fun onPreview(bundle: Bundle): Bundle {
        val preview = Bundle()
        Helper.putMaxCount(preview, getMaxCount())
        val size = DataSizeUtils.estimateSize(LocalTransport.TYPE_NUMBER_SETTINGS, getMaxCount())
        Helper.putPreviewDataSize(preview, size)
        DarkModeSettingUtils.logD("BackupPlugin-->onPreview end=$preview")
        return preview
    }

    override fun onPrepare(bundle: Bundle): Bundle {
        createNumberRecognitionSettingXml(bundle)
        val prepare = Bundle()
        Helper.putMaxCount(prepare, getMaxCount())
        DarkModeSettingUtils.logD("BackupPlugin-->onPrepare end=$prepare")
        return prepare
    }

    override fun onBackup(bundle: Bundle) {
        if (!mIsCancel) {
            onBackupAndIncProgress()
            val progress = Bundle()
            Helper.putMaxCount(progress, getMaxCount())
            Helper.putCompletedCount(progress, mCompletedCount)
            mBRPluginHandler!!.updateProgress(progress)
        }
    }

    override fun onPause(bundle: Bundle) {

    }

    override fun onContinue(bundle: Bundle) {

    }

    override fun onCancel(bundle: Bundle) {
        mIsCancel = true
    }

    override fun onDestroy(bundle: Bundle): Bundle {
        try {
            if (mWriter != null) {
                mWriter!!.close()
                mWriter = null
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        val result = Bundle()
        Helper.putBRResult(result, if (mIsCancel) Helper.BR_RESULT_CANCEL else Helper.BR_RESULT_SUCCESS)
        Helper.putMaxCount(result, getMaxCount())
        Helper.putCompletedCount(result, mCompletedCount)
        DarkModeSettingUtils.logD("BackupPlugin-->onDestroy =$result")
        return result
    }

    private fun createNumberRecognitionSettingXml(bundle: Bundle) {
        val config = getBREngineConfig(bundle)
        var rootPath: String? = null
        if (config != null) {
            rootPath = config.backupRootPath
        }
        if (rootPath == null) {
            DarkModeSettingUtils.logD("BackupPlugin-->rootPath error")
            return
        }

        val path = (rootPath + File.separator
                + LocalTransport.ModulePath.FOLDER_SETTING + File.separator
                + CommonBackupAndRestoreUtils.DIR_FILENAME  + File.separator
                + CommonBackupAndRestoreUtils.XML_FILENAME)

        try {
            val fd = getFileDescriptor(path)
            mWriter = BufferedWriter(OutputStreamWriter(FileOutputStream(fd)))
        } catch (e: Exception) {
            DarkModeSettingUtils.logD("BackupPlugin-->createFile error-->${e.message}")
            e.printStackTrace()
        }

    }

    private fun getMaxCount(): Int {
        return MAX_COUNT
    }

    private fun onBackupAndIncProgress(): Int {
        DarkModeSettingUtils.logD("BackupPlugin-->onBackupAndIncProgress")
        backupNumberRecognition()

        return MAX_COUNT
    }

    private fun backupNumberRecognition() {
        DarkModeSettingUtils.logD("BackupPlugin-->backupNumberRecognition")

        try {
            val data = StringBuilder()
            mBackupImplList.forEach {
                data.append(it.onBackup(mContext!!))
            }
            try {
                mWriter!!.write(data.toString())
                mCompletedCount = MAX_COUNT
            } catch (e: Exception) {
                mCompletedCount = 0
                DarkModeSettingUtils.logD("BackupPlugin-->backupNumberRecognition writeFile error-->${e.message}")
                e.printStackTrace()
            } finally {
                if (mWriter != null) {
                    mWriter!!.close()
                    mWriter = null
                }
            }

        } catch (e: Exception) {
            e.printStackTrace()
            DarkModeSettingUtils.logD("BackupPlugin-->backupNumberRecognition error-->${e.message}")
        }

    }

}