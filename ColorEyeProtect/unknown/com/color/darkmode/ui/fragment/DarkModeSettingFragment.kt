package com.color.darkmode.ui.fragment

import android.content.ContentResolver
import android.content.Context
import android.os.Bundle
import android.os.Handler
import androidx.preference.Preference
import androidx.preference.PreferenceScreen
import color.support.v7.app.AlertDialog
import com.color.darkmode.base.BasePreferenceFragment
import com.color.darkmode.ui.widget.DarkModeJumpPreference
import com.color.darkmode.ui.widget.DarkModeJumpPreference.OnClickListener
import com.color.darkmode.ui.widget.DarkModeSettingTimePreference
import com.color.darkmode.utils.DarkModeManager
import com.color.darkmode.utils.DarkModeSettingUtils
import com.color.darkmode.utils.RealmeUtils
import com.color.darkmode.utils.StatisticsUtils
import com.color.eyeprotect.R
import com.color.support.preference.ColorSwitchPreference
import com.color.support.widget.ColorSecurityAlertDialog
import com.color.support.widget.ColorSwitch
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch

class DarkModeSettingFragment : BasePreferenceFragment() {
    private lateinit var mHandler: Handler
    private lateinit var mTimePickerPreference: DarkModeSettingTimePreference
    private lateinit var mManagePreference: DarkModeJumpPreference
    private lateinit var mManagerPreferenceDivider: Preference
    private lateinit var mSetTimeSwitch: ColorSwitchPreference
    private lateinit var mDarkModeUseHintPreference: Preference
    private lateinit var mEnabledPreference: ColorSwitchPreference

    private lateinit var mSunsetTimeSwitch: ColorSwitchPreference
    private var mIsRealme = false

    private var mJob: Job? = null

    override fun getTitle(): String = getString(R.string.dark_mode)

    override fun onAttach(p0: Context) {
        super.onAttach(p0)
        mHandler = Handler()
        retainInstance = true
        mIsRealme = RealmeUtils.isRealmePhone()
    }

    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        super.onCreatePreferences(savedInstanceState, rootKey)
        addPreferencesFromResource(R.xml.preference_dark_mode)
        initEnableSwitch()
        initTimeSwitch()
        if (mIsRealme) {
            initSunsetSunriseSwitch()
        } else {
            val parent = preferenceScreen as PreferenceScreen
            val sunsetSwitch = findPreference<ColorSwitchPreference>(getString(R.string.preference_key_sunset_to_sunrise_switch)) as ColorSwitchPreference
            parent.removePreference(sunsetSwitch)
        }
        initApplicationManagePreference()
    }

    private fun initApplicationManagePreference() {
        mManagerPreferenceDivider = findPreference<Preference>(getString(R.string.preference_key_application_manage_divider)) as Preference
        mManagePreference = findPreference<DarkModeJumpPreference>(getString(R.string.preference_key_application_manage)) as DarkModeJumpPreference
        mDarkModeUseHintPreference = findPreference<Preference>(getString(R.string.preference_key_darkmode_use_hint)) as Preference
        mDarkModeUseHintPreference.isVisible = !mEnabledPreference.isChecked
        mManagePreference.isEnabled = mEnabledPreference.isChecked
        mManagePreference.mOnClickListener = object : OnClickListener{
            override fun onIsChecked(switch: ColorSwitch?) {
                switch?.toggle()
                switch?.setShouldPlaySound(true)
                DarkModeSettingUtils.handleAllChecked(false, null, context!!)
                refreshCount()
            }

            override fun onIsUnChecked(switch: ColorSwitch?) {
                if (context != null) {
                    AlertDialog.Builder(context!!)
                            .setTitle(context!!.getString(R.string.enabled_third_app))
                            .setMessage(context!!.getString(R.string.enabled_thied_app_hint))
                            .setNegativeButton(context!!.getString(R.string.use_dialog_negative_button_text)) { dialogInterface, _ -> dialogInterface.dismiss() }
                            .setPositiveButton(context!!.getString(R.string.use_dialog_positive_button_text)) { _, _ ->
                                run {
                                    switch?.toggle()
                                    switch?.setShouldPlaySound(true)
                                    DarkModeSettingUtils.handleAllChecked(true, null, context!!)
                                    refreshCount()
                                }
                            }
                            .create()
                            .show()
                }
            }

        }
    }

    override fun onResume() {
        super.onResume()
        refreshCount()
    }

    private fun refreshCount() {
        mJob?.cancel()
        mJob = GlobalScope.launch {
            if (context != null) {
                val results = DarkModeSettingUtils.getSupportApplicationCount(context!!)
                val allCount = results[0]
                val count = results[1]
                mHandler.post {
                    if (context != null && isAdded) {
                        val shouldLayout = (allCount > 0)
                        mManagePreference.isVisible = shouldLayout
                        mManagerPreferenceDivider.isVisible = shouldLayout
                        if (shouldLayout) {
                            if (count > 0) {
                                mManagePreference.setSummaryText(resources.getQuantityString(R.plurals.third_app_status_text, count, count))
                                mManagePreference.setSummaryTextColor(R.color.color_preference_assignment_text_color)
                            } else {
                                mManagePreference.setSummaryText(resources.getString(R.string.change_third_app_to_darkmode))
                                mManagePreference.setSummaryTextColor(R.color.color_preference_secondary_text_color)
                            }
                            mManagePreference.setChecked(count > 0)
                        }
                    }
                }
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        mJob?.cancel()
        mHandler.removeCallbacksAndMessages(null)
    }

    private fun initEnableSwitch() {
        val contentResolver = context?.contentResolver
        if (contentResolver != null) {
            mEnabledPreference = findPreference<ColorSwitchPreference>(getString(R.string.preference_key_enable_immediately_switch)) as ColorSwitchPreference
            mEnabledPreference.isChecked = DarkModeSettingUtils.isSystemDarkModeOpen(context!!)
            mEnabledPreference.onPreferenceChangeListener = Preference.OnPreferenceChangeListener { _, newValue ->
                val open = newValue as Boolean
                var showDialog = false
                if (open) {
                    showDialog = showCheckUseDialog(ColorSecurityAlertDialog.OnSelectedListener { which, isChecked ->
                        when (which) {
                            -1 -> {
                                if (isChecked) {
                                    DarkModeSettingUtils.setDarkModeSwitchOpenNeverHint(contentResolver, isChecked)
                                }
                                mEnabledPreference.setPlaySound(true)
                                changeDarkMode(context, open)
                                mEnabledPreference.isChecked = open
                            }
                        }
                    })
                }
                if(showDialog) {
                    false
                } else {
                    changeDarkMode(context, open)
                    true
                }
            }
        }
    }

    private fun initTimeSwitch() {
        val contentResolver = context?.contentResolver
        if (contentResolver != null) {
            mSetTimeSwitch = findPreference<ColorSwitchPreference>(getString(R.string.preference_key_set_time_switch)) as ColorSwitchPreference
            mTimePickerPreference = findPreference<DarkModeSettingTimePreference>(getString(R.string.preference_key_set_time_picker)) as DarkModeSettingTimePreference
            mSetTimeSwitch.isChecked = DarkModeSettingUtils.isDarkModeTimeSwitchOpen(contentResolver)
            mTimePickerPreference.isVisible = mSetTimeSwitch.isChecked
            mSetTimeSwitch.onPreferenceChangeListener = Preference.OnPreferenceChangeListener { _, newValue ->
                val open = newValue as Boolean
                var showDialog = false
                if (open) {
                    showDialog = showCheckUseDialog(ColorSecurityAlertDialog.OnSelectedListener { which, isChecked ->
                        when (which) {
                            -1 -> {
                                if (isChecked) {
                                    DarkModeSettingUtils.setDarkModeSwitchOpenNeverHint(contentResolver, isChecked)
                                }
                                mSetTimeSwitch.setPlaySound(true)
                                switchTime(contentResolver, open)
                                mSetTimeSwitch.isChecked = open
                            }
                        }
                    })
                }
                if(showDialog) {
                    false
                } else {
                    switchTime(contentResolver, open)
                    true
                }
            }
        }
    }

    private fun switchTime(contentResolver: ContentResolver, isChecked: Boolean) {
        if (isChecked && mIsRealme) {
            mSunsetTimeSwitch.isChecked = false
            RealmeUtils.setDarkSunsetToSunriseSwitch(context!!, 0)
        }
        DarkModeSettingUtils.setDarkModeTimeSwitchOpen(contentResolver, isChecked)
        DarkModeManager.updateDarkModeByTime(context!!)
        mTimePickerPreference.isVisible = isChecked
    }

    private fun switchSunsetAndSunriseTime(context: Context, isChecked: Boolean) {
        RealmeUtils.setDarkSunsetToSunriseSwitch(context, if (isChecked) 1 else 0)
        if (isChecked) {
            mTimePickerPreference.isVisible = false
            mSetTimeSwitch.isChecked = false
            DarkModeSettingUtils.setDarkModeTimeSwitchOpen(context.contentResolver, false)
        }
        DarkModeManager.updateDarkModeBySunsetToSunriseTime(context)
    }

    private fun initSunsetSunriseSwitch() {
        val contentResolver = context?.contentResolver
        if (contentResolver!=null){
            mSunsetTimeSwitch = findPreference<ColorSwitchPreference>(getString(R.string.preference_key_sunset_to_sunrise_switch)) as ColorSwitchPreference
            mSunsetTimeSwitch.isChecked = RealmeUtils.isDarkSunsetToSunriseSwitch(context!!)
            if (mSunsetTimeSwitch.isChecked){
                mSetTimeSwitch.isChecked=false
                mTimePickerPreference.isVisible=false
            }
            mSunsetTimeSwitch.onPreferenceChangeListener = Preference.OnPreferenceChangeListener { _, newValue ->
                val open = newValue as Boolean
                var showDialog = false
                if (open) {
                    showDialog = showCheckUseDialog(ColorSecurityAlertDialog.OnSelectedListener { which, isChecked ->
                        when (which) {
                            -1 -> {
                                if (isChecked) {
                                    DarkModeSettingUtils.setDarkModeSwitchOpenNeverHint(contentResolver, isChecked)
                                }
                                mSunsetTimeSwitch.setPlaySound(true)
                                switchSunsetAndSunriseTime(context!!, open)
                                mSunsetTimeSwitch.isChecked = open
                            }
                        }
                    })
                }
                if(showDialog) {
                    false
                } else {
                    switchSunsetAndSunriseTime(context!!, open)
                    true
                }
            }
        }

    }

    private fun changeDarkMode(context: Context?, shouldOpen:Boolean) {
        if (context != null) {
            DarkModeManager.immediatelyUpdateDarkModeSwitch(context, shouldOpen, true)
            StatisticsUtils.reportSwitchOpen(context, shouldOpen, true)
        }
    }

    private fun showCheckUseDialog(listener: ColorSecurityAlertDialog.OnSelectedListener): Boolean{
        val contentResolver = context!!.contentResolver
        val isDarkModeSwitchOpenNeverHint = DarkModeSettingUtils.isDarkModeSwitchOpenNeverHint(contentResolver)
        val isSwitchOpen = DarkModeSettingUtils.isSystemDarkModeOpen(context!!)
        val isTimeSwitchOpen = DarkModeSettingUtils.isDarkModeTimeSwitchOpen(contentResolver)
        var isSunsetToSunriseSwitchOpen =false
        if (mIsRealme){
            isSunsetToSunriseSwitchOpen = RealmeUtils.isDarkSunsetToSunriseSwitch(context!!)
        }
        return if (isDarkModeSwitchOpenNeverHint || isSwitchOpen || isTimeSwitchOpen || isSunsetToSunriseSwitchOpen) {
            false
        } else {
            val builder = ColorSecurityAlertDialog.Builder(context)
            builder.setTitle(R.string.use_dialog_positive_title)
                    .setMessage(R.string.use_dialog_positive_message)
                    .setChecked(true)
                    .setHasCheckBox(true)
                    .setCheckBoxString(R.string.use_dialog_positive_check_text)
                    .setNegativeString(R.string.use_dialog_negative_button_text)
                    .setPositiveString(R.string.use_dialog_positive_button_text)
                    .setOnSelectedListener(listener)
                    .create()
                    .show()
            true
        }
    }

}