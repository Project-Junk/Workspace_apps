package com.color.darkmode.ui.widget

import android.content.Context
import android.content.Intent
import android.util.AttributeSet
import android.widget.LinearLayout
import android.widget.TextView
import androidx.preference.Preference
import androidx.preference.PreferenceViewHolder
import com.color.darkmode.ui.activity.DarkModeApplicationManageActivity
import com.color.eyeprotect.R
import com.color.support.widget.ColorSwitch

class DarkModeJumpPreference @JvmOverloads constructor(context: Context, attrs: AttributeSet, defStyle: Int = 0, defStyleRes: Int = 0) : Preference(context, attrs, defStyle, defStyleRes) {
    private var mClickLayout:LinearLayout? = null
    private var mMainLayout:LinearLayout? = null
    private var mSwitch:ColorSwitch? = null
    private var mSummaryText:TextView? = null
    private var mSummary:String? = null
    private var mIsChecked:Boolean = false
    private var mSummaryTextColor:Int = -1
    var mOnClickListener:OnClickListener? = null

    interface OnClickListener {
        fun onIsChecked(switch: ColorSwitch?)
        fun onIsUnChecked(switch: ColorSwitch?)
    }

    init {
        layoutResource = R.layout.preference_jump
    }

    fun setSummaryText(text:String) {
        mSummary = text
        notifyChanged()
    }

    fun setChecked(isChecked:Boolean) {
        mIsChecked = isChecked
        notifyChanged()
    }

    fun setSummaryTextColor(color:Int) {
        mSummaryTextColor = color
        notifyChanged()
    }

    override fun onBindViewHolder(holder: PreferenceViewHolder?) {
        super.onBindViewHolder(holder)
        if (holder != null) {
            mSummaryText = holder.itemView.findViewById(R.id.tv_summary)
            if (mSummaryTextColor != -1) {
                mSummaryText?.setTextColor(context.getColorStateList(mSummaryTextColor))
            }
            mClickLayout = holder.itemView.findViewById(R.id.ll_click_layout)
            mMainLayout = holder.itemView.findViewById(R.id.ll_main_layout)
            mSwitch = holder.itemView.findViewById(R.id.cs_switch)
            mClickLayout?.setOnClickListener {
                if (mSwitch?.isChecked!!) {
                    if (mOnClickListener != null) {
                        mOnClickListener?.onIsChecked(mSwitch)
                    }
                } else {
                    if (mOnClickListener != null) {
                        mOnClickListener?.onIsUnChecked(mSwitch)
                    }
                }
            }
            mMainLayout?.setOnClickListener {
                context.startActivity(Intent(context, DarkModeApplicationManageActivity::class.java))
            }
            if (mSummary != null) {
                mSummaryText?.text = mSummary
            }
            mSwitch?.isChecked = mIsChecked
        }
    }

}