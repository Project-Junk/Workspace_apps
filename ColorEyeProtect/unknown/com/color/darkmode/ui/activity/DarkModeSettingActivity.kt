package com.color.darkmode.ui.activity

import android.os.Bundle
import com.color.darkmode.base.BasePreferenceActivity
import com.color.darkmode.ui.fragment.DarkModeSettingFragment

class DarkModeSettingActivity : BasePreferenceActivity() {
    override fun getFragment() = DarkModeSettingFragment()
}