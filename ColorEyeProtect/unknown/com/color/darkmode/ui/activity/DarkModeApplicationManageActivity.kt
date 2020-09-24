package com.color.darkmode.ui.activity

import com.color.darkmode.base.BasePreferenceActivity
import com.color.darkmode.base.BasePreferenceFragment
import com.color.darkmode.ui.fragment.DarkModeApplicationManageFragment

class DarkModeApplicationManageActivity: BasePreferenceActivity(){
    override fun getFragment() = DarkModeApplicationManageFragment()
}