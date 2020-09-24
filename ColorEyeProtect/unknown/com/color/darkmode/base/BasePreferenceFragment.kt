package com.color.darkmode.base

import android.os.Bundle
import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.core.view.ViewCompat
import color.support.design.widget.ColorAppBarLayout
import color.support.v7.widget.Toolbar
import com.color.common.util.ThemeBundleUtils
import com.color.darkmode.utils.StatusBarUtils
import com.color.eyeprotect.R
import com.color.support.preference.ColorPreferenceFragment

abstract class BasePreferenceFragment : ColorPreferenceFragment() {
    protected var mToolbar: Toolbar? = null
    private var mColorAppBarLayout: ColorAppBarLayout? = null
    private var mDividerLine: View? = null

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = super.onCreateView(inflater, container, savedInstanceState)
        mToolbar = view!!.findViewById(R.id.toolbar) as Toolbar?
        mDividerLine = view.findViewById(R.id.divider_line)
        if (ThemeBundleUtils.getImmersiveTheme(context)) {
            mDividerLine?.visibility = View.GONE
        }
        mToolbar?.setNavigationIcon(R.drawable.color_back_arrow)
        mToolbar?.setNavigationOnClickListener {
            activity!!.finish()
        }
        ViewCompat.setNestedScrollingEnabled(listView, true)
        mToolbar?.title = getTitle()
        mColorAppBarLayout = view.findViewById(R.id.appBarLayout) as ColorAppBarLayout?
        val place = getStatusBarView()
        mColorAppBarLayout?.addView(place, 0, place.layoutParams)
        return view
    }

    abstract fun getTitle(): String

    open fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean = false

    private fun getStatusBarView(): View {
        //add for immersive theme. statusbar placeholder view
        val statusHeight = StatusBarUtils.getStatusBarHeight(context!!)
        val imageView = ImageView(activity)
        imageView.background = resources.getDrawable(R.drawable.color_statusbar_bg)
        imageView.scaleType = ImageView.ScaleType.FIT_XY
        imageView.layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, statusHeight)

        return imageView
    }

}