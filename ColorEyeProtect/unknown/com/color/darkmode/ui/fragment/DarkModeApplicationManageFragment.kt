package com.color.darkmode.ui.fragment

import android.content.pm.PackageInfo
import android.content.res.Resources
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.PixelFormat
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import android.os.Bundle
import android.util.DisplayMetrics
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.RelativeLayout
import androidx.preference.Preference
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import color.support.v7.app.AlertDialog
import color.support.v7.widget.Toolbar
import com.color.darkmode.base.BasePreferenceFragment
import com.color.darkmode.utils.AppNameComparator
import com.color.darkmode.utils.DarkModeSettingUtils
import com.color.darkmode.utils.IAppOrderInfo
import com.color.darkmode.utils.StatisticsUtils
import com.color.eyeprotect.R
import com.color.support.preference.ColorSwitchPreference
import com.oppo.support.widget.OppoTouchSearchView
import kotlinx.coroutines.*
import java.util.*

class DarkModeApplicationManageFragment : BasePreferenceFragment() {
    companion object {
        private const val PACKAGE_NAME = "packageName"
    }
    private lateinit var mJob: Job
    private lateinit var mOppoTouchSearchView: OppoTouchSearchView
    private lateinit var mLoadingLayout: RelativeLayout
    private lateinit var mListLayout: FrameLayout
    private var mOpenCount:Int = 0
    private var mCanShowMore:Boolean = false;

    override fun getTitle(): String {
        return getString(R.string.third_app)
    }

    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        super.onCreatePreferences(savedInstanceState, rootKey)
        addPreferencesFromResource(R.xml.preference_application_manage)
    }

    private fun zoomDrawable(drawable: Drawable, size: Int): Drawable {
        val width = drawable.intrinsicWidth
        val height = drawable.intrinsicHeight
        if (width == size && height == size) {
            return drawable
        }
        if (activity == null) {
            return drawable
        }
        // 设置bitmap转成drawable后尺寸不变
        val metrics = DisplayMetrics()
        activity!!.windowManager.defaultDisplay.getMetrics(metrics)

        var config: Bitmap.Config = Bitmap.Config.RGB_565
        if (drawable.opacity != PixelFormat.OPAQUE) {
            config = Bitmap.Config.ARGB_8888
        }
        val oldbmp = Bitmap.createBitmap(width, height, config)
        val canvas = Canvas(oldbmp)
        drawable.setBounds(0, 0, width, height)
        drawable.draw(canvas)

        val newbmp = Bitmap.createScaledBitmap(oldbmp, size, size, true)
        return BitmapDrawable(resources, newbmp)
    }

    private fun inflateMenu(toolbar: Toolbar?) {
        if (toolbar == null || !mCanShowMore) return
        toolbar.menu.clear()
        toolbar.inflateMenu(R.menu.action_menu_single_icon)
        val item = toolbar.menu.findItem(R.id.enabled)
        item.title = (if(mOpenCount > 0) getString(R.string.close_all) else getString(R.string.enabled_all))
        toolbar.setOnMenuItemClickListener {
            when(it.itemId) {
                R.id.enabled -> {
                    if (context != null) {
                        if (mOpenCount <= 0) {
                            AlertDialog.Builder(context!!)
                                    .setTitle(context!!.getString(R.string.enabled_all_third_app))
                                    .setMessage(context!!.getString(R.string.enabled_thied_app_hint))
                                    .setNegativeButton(context!!.getString(R.string.use_dialog_negative_button_text)) { dialogInterface, _ -> dialogInterface.dismiss() }
                                    .setPositiveButton(context!!.getString(R.string.use_dialog_positive_button_text)) { dialogInterface, _ -> handleAllChecked(true) }
                                    .create()
                                    .show()
                        } else {
                            handleAllChecked(false)
                        }
                    }
                }
            }
            true
        }
    }

    private fun handleAllChecked(isChecked:Boolean) {
        if (preferenceScreen != null) {
            val count = preferenceScreen.preferenceCount
            val sets = hashSetOf<String>()
            var packageName:String?
            mOpenCount = 0
            for (i in 0 until count) {
                val preference = preferenceScreen.getPreference(i)
                if (preference is ColorSwitchPreference) {
                    if (isChecked) {
                        mOpenCount++
                    }
                    if (preference.isChecked != isChecked) {
                        preference.isChecked = isChecked
                        packageName = preference.extras.getString(PACKAGE_NAME)
                        if (packageName != null && packageName.isNotEmpty()) {
                            sets.add(packageName)
                        }
                    }
                }
            }
            inflateMenu(mToolbar)
            DarkModeSettingUtils.handleAllChecked(isChecked, sets, context!!)
        }
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = super.onCreateView(inflater, container, savedInstanceState)
        mOppoTouchSearchView = view!!.findViewById(R.id.oppo_spell_bar)
        mLoadingLayout = view!!.findViewById(R.id.rl_loading_layout)
        mListLayout = view!!.findViewById(android.R.id.list_container)
        listView.setOnTouchListener { _, event ->
            if (event.action in MotionEvent.ACTION_DOWN..MotionEvent.ACTION_UP) {
                mOppoTouchSearchView.closing()
            }
            false
        }
        mOppoTouchSearchView.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) {
                mOppoTouchSearchView.closing()
            }
            false
        }
        listView.setPaddingRelative(0 ,0 ,resources.getDimensionPixelSize(R.dimen.application_manage_preference_right_margin),0)
        listView.isVerticalScrollBarEnabled = false
        listView.isHorizontalScrollBarEnabled = false
        if (activity != null && activity!!.isInMultiWindowMode) {
            mOppoTouchSearchView.visibility = View.GONE
        }
        val exceptionHandler = CoroutineExceptionHandler { _, throwable ->  }
        mJob = GlobalScope.launch(exceptionHandler) loop@{
            if (isDetached || isRemoving || context == null ||
                    activity == null || activity!!.isFinishing || !isActive) {
                return@loop
            }
            val packageManager = context?.packageManager
            val contentResolver = context?.contentResolver
            if (packageManager != null && contentResolver != null && isAdded) {
                val iconSize = resources.getDimensionPixelSize(R.dimen.application_manage_icon_size)
                val openAppList = DarkModeSettingUtils.getOpenAppList(context!!)
                val appInfoList = DarkModeSettingUtils.getApplicationList(context!!)
                Collections.sort(appInfoList, AppNameComparator.COMPLEX_COMPARATOR)
                appInfoList.forEach {
                    if (isDetached || isRemoving || context == null || mJob.isCancelled
                            || activity == null || activity!!.isFinishing || activity!!.isDestroyed
                            || !isActive) {
                        return@loop
                    }
                    val switchPreference = ColorSwitchPreference(context)
                    val packageName = it.packageInfo.packageName
                    val label = it.label
                    val icon = it.packageInfo.applicationInfo.loadIcon(packageManager)
                    switchPreference.icon = zoomDrawable(icon, iconSize)
                    switchPreference.title = label
                    switchPreference.extras.putString(PACKAGE_NAME, packageName)
                    switchPreference.isPersistent = false
                    switchPreference.isChecked = openAppList.contains(packageName)
                    if (switchPreference.isChecked) {
                        mOpenCount++
                    }
                    switchPreference.onPreferenceChangeListener = Preference.OnPreferenceChangeListener { preference, newValue ->
                        val isCheck = newValue as Boolean
                        GlobalScope.launch(exceptionHandler) {
                            if (isDetached || isRemoving || mJob.isCancelled
                                    || activity == null || activity!!.isFinishing || activity!!.isDestroyed
                                    || !isActive) {
                                return@launch
                            }
                            val openApp = DarkModeSettingUtils.getOpenAppList(contentResolver)
                            val clickApp = DarkModeSettingUtils.getClickAppList(contentResolver)
                            if (!clickApp.contains(packageName)) {
                                clickApp.add(packageName)
                                DarkModeSettingUtils.setClickAppList(contentResolver, clickApp)
                            }
                            if (isCheck) {
                                openApp.add(packageName)
                            } else {
                                openApp.remove(packageName)
                            }
                            StatisticsUtils.reportApplicationManager(context!!, packageName, isCheck)
                            DarkModeSettingUtils.setOpenAppList(contentResolver, openApp)
                            listView.post {
                                switchPreference.isChecked = isCheck
                                if (isCheck) mOpenCount++ else mOpenCount--
                                inflateMenu(mToolbar)
                            }
                        }
                        false
                    }
                    preferenceScreen.addPreference(switchPreference)
                }
                if (isDetached || isRemoving || mJob.isCancelled || context == null
                        || activity == null || activity!!.isFinishing || activity!!.isDestroyed
                        || !isActive) {
                    return@loop
                }
                val footerPreference = Preference(context)
                footerPreference.layoutResource = R.layout.color_preference_footer
                footerPreference.isSelectable = false
                preferenceScreen.addPreference(footerPreference)
                mOppoTouchSearchView.touchSearchActionListener = AppAlphabetIndexer(listView, appInfoList)
                mCanShowMore = appInfoList.size > 0
                mLoadingLayout.post {
                    mLoadingLayout?.visibility = View.GONE
                    mListLayout?.visibility = View.VISIBLE
                    inflateMenu(mToolbar)
                }
            }
        }
        return view
    }

    override fun onMultiWindowModeChanged(isInMultiWindowMode: Boolean) {
        super.onMultiWindowModeChanged(isInMultiWindowMode)
        mOppoTouchSearchView.visibility = if (isInMultiWindowMode) View.GONE else View.VISIBLE
    }

    override fun onDestroy() {
        super.onDestroy()
        mJob.cancel()
    }

    private inner class AppAlphabetIndexer constructor(private val mListView: RecyclerView?, private val mEntries: ArrayList<out IAppOrderInfo>?) : OppoTouchSearchView.TouchSearchActionListener {
        override fun onNameClick(p0: CharSequence?) {
            mOppoTouchSearchView.closing()
        }

        private val mHashMap = HashMap<String, Int>()
        private var mOtherIndexKey: String? = null
        private val mHeaderSize = 2

        init {
            mOtherIndexKey = null
            var tmpChar = '0'
            if (mEntries != null) {
                val size = mEntries.size
                for (i in 0 until size) {
                    val appEntry = mEntries[i]
                    var initialChar = appEntry.initialChar
                    if (initialChar == '0') {
                        initialChar = AppNameComparator.getFirstSpellForSearchBar(appEntry.label)
                    }
                    val lowcaseChar = Character.toLowerCase(initialChar)
                    if (lowcaseChar in 'a'..'z') {
                        if (lowcaseChar != tmpChar) {
                            tmpChar = lowcaseChar
                            mHashMap[lowcaseChar.toString()] = i
                        }
                    } else {
                        if (mOtherIndexKey == null) {
                            mOtherIndexKey = lowcaseChar.toString()
                            mHashMap[lowcaseChar.toString()] = i
                        }
                    }
                }
            }
        }

        override fun onKey(key: CharSequence) {
            var pos = -1
            if (key == "#") {
                if (mEntries != null) {
                    pos = mEntries.size - 1 + mHeaderSize
                }
            } else {
                if (key.isNotEmpty()) {
                    val keyStr = Character.toLowerCase(key[0]).toString()
                    val value = mHashMap[keyStr]
                    if (value != null) {
                        pos = value + mHeaderSize
                    }
                }
            }

            if (mListView != null && pos > -1) {
                val layoutManager = mListView.layoutManager
                if (layoutManager is LinearLayoutManager) {
                    var offset = 0
                    if (pos < mEntries!!.size) {
                        offset = resources.getDimensionPixelSize(R.dimen.preference_recycler_padding_top)
                    }
                    layoutManager.scrollToPositionWithOffset(pos, offset)
                }
            }
        }

        override fun onLongKey(key: CharSequence) {}
    }

    class ThirdApp(var packageInfo: PackageInfo, label: String, orderInfo1: String?, orderInfo2: String, initialChar: Char) : IAppOrderInfo(label, orderInfo1, orderInfo2, initialChar)

}