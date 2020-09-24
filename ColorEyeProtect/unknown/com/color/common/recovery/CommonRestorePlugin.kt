package com.color.common.recovery

import android.content.Context
import android.os.Bundle
import com.color.darkmode.recovery.DarkModeRestoreImpl
import com.color.darkmode.utils.DarkModeSettingUtils
import com.color.eyeprotect.recovery.EyeProtectRestoreImpl
import com.coloros.backup.sdk.v2.common.host.BREngineConfig
import com.coloros.backup.sdk.v2.compat.DataSizeUtils
import com.coloros.backup.sdk.v2.compat.LocalTransport
import com.coloros.backup.sdk.v2.component.BRPluginHandler
import com.coloros.backup.sdk.v2.component.plugin.RestorePlugin
import com.coloros.backup.sdk.v2.host.listener.BRListener
import java.io.*

class CommonRestorePlugin : RestorePlugin() {
    companion object {
        private const val MAX_COUNT = 1
    }

    private var mHasNumberRecognitionBackupFile = true
    private var mCompletedCount: Int = 0
    private var mContext: Context? = null
    private var mIsCancel: Boolean = false
    private var mBRPluginHandler: BRPluginHandler? = null
    private val maxCount: Int
        get() {
            return MAX_COUNT
        }
    private var mRestoreImplList = arrayListOf<ICommonRestoreInterface>()

    init {
        //mRestoreImplList.add(DarkModeRestoreImpl())
        mRestoreImplList.add(EyeProtectRestoreImpl())
    }

    override fun onCreate(context: Context, brPluginHandler: BRPluginHandler, config: BREngineConfig) {
        DarkModeSettingUtils.logD("RestorePlugin-->onCreate")
        mContext = context
        mHasNumberRecognitionBackupFile = true
        super.onCreate(context, brPluginHandler, config)
        mBRPluginHandler = brPluginHandler
    }

    override fun onPreview(bundle: Bundle): Bundle {
        val preview = Bundle()
        BRListener.ProgressConstants.Helper.putMaxCount(preview, maxCount)
        val size = DataSizeUtils.estimateSize(LocalTransport.TYPE_NUMBER_SETTINGS, maxCount)
        BRListener.ProgressConstants.Helper.putPreviewDataSize(preview, size)
        DarkModeSettingUtils.logD("RestorePlugin-->onPreview end=$preview")
        return preview
    }

    override fun onPrepare(bundle: Bundle): Bundle {
        getNumberRecognitionData(bundle)
        val prepare = Bundle()
        BRListener.ProgressConstants.Helper.putMaxCount(prepare, maxCount)
        DarkModeSettingUtils.logD("RestorePlugin-->onPrepare end=$prepare")
        return prepare
    }

    override fun onRestore(bundle: Bundle) {
        if (!mIsCancel) {
            if (mContext != null) {
                mRestoreImplList.forEach {
                    it.onRestore(mContext!!)
                }
                mCompletedCount = MAX_COUNT
            }
            val progress = Bundle()
            BRListener.ProgressConstants.Helper.putMaxCount(progress, maxCount)
            BRListener.ProgressConstants.Helper.putCompletedCount(progress, mCompletedCount)
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
        val result = Bundle()
        BRListener.ProgressConstants.Helper.putBRResult(result, if (mIsCancel)
            BRListener.ProgressConstants.Helper.BR_RESULT_CANCEL
        else
            BRListener.ProgressConstants.Helper.BR_RESULT_SUCCESS)
        BRListener.ProgressConstants.Helper.putMaxCount(result, maxCount)
        BRListener.ProgressConstants.Helper.putCompletedCount(result, mCompletedCount)
        DarkModeSettingUtils.logD("RestorePlugin-->onDestroy =$result")
        return result
    }

    private fun getNumberRecognitionData(bundle: Bundle): Boolean {
        val config = getBREngineConfig(bundle)
        var rootPath: String? = null
        if (config != null) {
            rootPath = config.restoreRootPath
        }
        if (rootPath == null) {
            DarkModeSettingUtils.logD("RestorePlugin-->rootPath error")
            mHasNumberRecognitionBackupFile = false
            return false
        }
        val path = (rootPath + File.separator
                + LocalTransport.ModulePath.FOLDER_SETTING + File.separator
                + CommonBackupAndRestoreUtils.DIR_FILENAME + File.separator
                + CommonBackupAndRestoreUtils.XML_FILENAME)

        var inputStream: InputStream? = null
        var result = false
        var inputStreamReader: InputStreamReader? = null
        var bufferedReader: BufferedReader? = null

        try {
            inputStream = FileInputStream(getFileDescriptor(path))
            inputStreamReader = InputStreamReader(inputStream)
            bufferedReader = BufferedReader(inputStreamReader)
            var line: String? = null
            while (true) {
                line = bufferedReader.readLine()
                if (line == null || mIsCancel) {
                    break
                }
                mRestoreImplList.forEach {
                    it.onRestoreTempData(mContext!!, line)
                }
            }
            result = !mIsCancel
        } catch (e: Exception) {
            mHasNumberRecognitionBackupFile = false
            DarkModeSettingUtils.logD("RestorePlugin-->loadFile error-->${e.message}")
            e.printStackTrace()
        } finally {
            try {
                inputStream?.close()
                inputStreamReader?.close()
                bufferedReader?.close()
            } catch (e: IOException) {
                e.printStackTrace()
            }
        }

        return result
    }

}
