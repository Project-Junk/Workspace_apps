package com.color.darkmode.base

import android.os.Bundle
import android.view.KeyEvent
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.color.darkmode.utils.StatusBarUtils
import com.color.eyeprotect.R

abstract class BasePreferenceActivity : AppCompatActivity() {

    private lateinit var mFragment: BasePreferenceFragment

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(getLayoutId())
        StatusBarUtils.setStatusBarTransparentAndBlackFont(this)
        mFragment = getFragment()
        supportFragmentManager.beginTransaction().replace(getFragmentId(), mFragment).commit()
    }

    open fun getLayoutId() = R.layout.activity_base_preference
    open fun getFragmentId() = R.id.fragment_container
    abstract fun getFragment() : BasePreferenceFragment

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (mFragment.onKeyDown(keyCode, event)) {
            return true
        }
        return super.onKeyDown(keyCode, event)
    }

}