package com.color.darkmode.ui.widget

import android.app.Activity
import android.content.Context
import android.os.Handler
import android.os.Message
import android.text.format.DateFormat
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.view.ViewStub
import android.widget.LinearLayout
import android.widget.RelativeLayout
import android.widget.TextView
import androidx.preference.Preference
import androidx.preference.PreferenceViewHolder
import com.color.darkmode.ui.fragment.DarkModeSettingFragment
import com.color.darkmode.utils.DarkModeManager
import com.color.darkmode.utils.DarkModeSettingUtils
import com.color.darkmode.utils.StatisticsUtils
import com.color.eyeprotect.R
import com.color.support.widget.OppoTimePicker
import java.lang.ref.WeakReference


class DarkModeSettingTimePreference @JvmOverloads constructor(context: Context, attrs: AttributeSet, defStyle: Int = 0, defStyleRes: Int = 0) : Preference(context, attrs, defStyle, defStyleRes), View.OnClickListener, LocalOppoTimePicker.OnTouchEndListener {
    private var mOpenTimeRoot: View? = null
    private var mCloseTimeRoot: View? = null
    private var mOpenTime: TextView? = null
    private var mCloseTime: TextView? = null
    private var mOpenTimePicker: LocalOppoTimePicker? = null
    private var mCloseTimePicker: LocalOppoTimePicker? = null
    private var mOpenTimePickerStub: ViewStub? = null
    private var mCloseTimePickerStub: ViewStub? = null

    private var mBeginHour: Int = 0
    private var mBeginMinute: Int = 0
    private var mEndHour: Int = 0
    private var mEndMinute: Int = 0
    private var mIsOpenTimePickVisible = false
    private var mIsCloseTimePickVisible = false
    private var mOnNextAutoSwitchTimeChangeListener: OnNextAutoSwitchTimeChangeListener? = null

    private lateinit var mHandler : WeakHandler

    class WeakHandler : Handler {
        private var weak: WeakReference<DarkModeSettingTimePreference>

        constructor(context: DarkModeSettingTimePreference) {
            weak = WeakReference(context)
        }

        override fun handleMessage(p0: Message?) {
            super.handleMessage(p0)
            val context: DarkModeSettingTimePreference? = weak.get()
            if (context != null && p0 != null) {
                when (p0.what) {
                    MSG_TIME_CHANGE -> context.updateTime(p0.obj as LocalOppoTimePicker)
                    else -> {
                    }
                }
            }
        }
    }

    override fun onTouchEnd(picker: LocalOppoTimePicker) {
        sendTimeChangeMessage(picker)
    }

    init {
        layoutResource = R.layout.protect_eyes_settings_time_preference_new
    }

    private fun initUI(view: View) {
        mOpenTimeRoot = view.findViewById(R.id.open_time_root) as LinearLayout
        mCloseTimeRoot = view.findViewById(R.id.close_time_root) as LinearLayout
        mOpenTimeRoot!!.setOnClickListener(this)
        mCloseTimeRoot!!.setOnClickListener(this)

        mOpenTime = view.findViewById(R.id.open_time) as TextView
        mCloseTime = view.findViewById(R.id.close_time) as TextView
        if (mOpenTimePickerStub == null) {
            mOpenTimePickerStub = view.findViewById(R.id.open_time_picker_stub) as ViewStub
        }
        if (mCloseTimePickerStub == null) {
            mCloseTimePickerStub = view.findViewById(R.id.close_time_picker_stub) as ViewStub
        }

        val is24HourFormat = DateFormat.is24HourFormat(context)
        val beginTime = DarkModeSettingUtils.getDarkModeBeginTime(context.contentResolver)
        val endTime = DarkModeSettingUtils.getDarkModeEndTime(context.contentResolver)
        mBeginHour = beginTime[0]
        mBeginMinute = beginTime[1]
        mEndHour = endTime[0]
        mEndMinute = endTime[1]
        var time = DarkModeSettingUtils.getFormatTimeString(mBeginHour, mBeginMinute, is24HourFormat)
        mOpenTime!!.text = time
        time = DarkModeSettingUtils.getFormatTimeString(mEndHour, mEndMinute, is24HourFormat)
        setCloseTime(time)

        updateTimeColor()
        if (mIsOpenTimePickVisible || mIsCloseTimePickVisible) {
            inflateFromStubIfNeed()
        }
    }

    private fun setCloseTime(time: String) {
        var time = time
        if (mBeginHour > mEndHour || mBeginHour == mEndHour && mBeginMinute > mEndMinute) {
            time = "${context.resources.getString(R.string.tomorrow)} $time"
        }
        mCloseTime!!.text = time
    }

    private fun sendTimeChangeMessage(view: OppoTimePicker) {
        if (!this::mHandler.isInitialized) {
            mHandler = WeakHandler(this)
        }
        if (mHandler.hasMessages(MSG_TIME_CHANGE)) {
            mHandler.removeMessages(MSG_TIME_CHANGE)
        }
        val msg = Message.obtain(mHandler, MSG_TIME_CHANGE, view)
        mHandler.sendMessageDelayed(msg, DELAY_TIME.toLong())
    }

    private fun updateTime(picker: LocalOppoTimePicker) {
        if (!picker.isTouchEnd) {
            return
        }

        if (picker === mOpenTimePicker) {
            if (mBeginHour == mEndHour && mBeginMinute == mEndMinute) {
                if (mBeginMinute == MINUTE_BEGIN) {
                    mBeginMinute = MINUTE_END
                    mBeginHour--
                    if (mBeginHour == HOUR_INVALID_MIN) {
                        mBeginHour = HOUR_END
                    }
                } else {
                    mBeginMinute--
                }
                val hour = mBeginHour
                val minute = mBeginMinute
                mOpenTimePicker!!.currentHour = hour
                mOpenTimePicker!!.currentMinute = minute
                val time = DarkModeSettingUtils.getFormatTimeString(hour, minute, mOpenTimePicker!!.is24HourView)
                mOpenTime!!.text = time
            } else {
                val time = DarkModeSettingUtils.getFormatTimeString(mBeginHour, mBeginMinute, mOpenTimePicker!!.is24HourView)
                mOpenTime!!.setText(time)
            }
            val time = DarkModeSettingUtils.getFormatTimeString(mEndHour, mEndMinute, mCloseTimePicker!!.is24HourView)
            setCloseTime(time)
        } else {
            if (mBeginHour == mEndHour && mBeginMinute == mEndMinute) {
                if (mEndMinute == MINUTE_END) {
                    mEndMinute = MINUTE_BEGIN
                    mEndHour++
                    if (mEndHour == HOUR_INVALID_MAX) {
                        mEndHour = HOUR_BEGIN
                    }
                } else {
                    mEndMinute++
                }
                val hour = mEndHour
                val minute = mEndMinute
                mCloseTimePicker!!.currentHour = hour
                mCloseTimePicker!!.currentMinute = minute
                val time = DarkModeSettingUtils.getFormatTimeString(hour, minute, mCloseTimePicker!!.is24HourView)
                setCloseTime(time)
            } else {
                val time = DarkModeSettingUtils.getFormatTimeString(mEndHour, mEndMinute, mCloseTimePicker!!.is24HourView)
                setCloseTime(time)
            }
        }

        setFixTimeDuration()
        if (null != mOnNextAutoSwitchTimeChangeListener) {
            mOnNextAutoSwitchTimeChangeListener!!.onNextAutoSwitchTimeChange()
        }

    }

    override fun onBindViewHolder(holder: PreferenceViewHolder?) {
        super.onBindViewHolder(holder)
        if (holder != null) {
            initUI(holder.itemView)
        }
    }

    override fun onClick(v: View) {
        val id = v.id

        if (id == R.id.open_time_root) {
            inflateFromStubIfNeed()
            if (mOpenTimePicker!!.visibility != View.VISIBLE) {
                mOpenTimePicker!!.visibility = View.VISIBLE
                mCloseTimePicker!!.visibility = View.GONE
                mIsOpenTimePickVisible = true
                mIsCloseTimePickVisible = false
            } else {
                mOpenTimePicker!!.visibility = View.GONE
                mIsOpenTimePickVisible = false
            }
        } else if (id == R.id.close_time_root) {
            inflateFromStubIfNeed()
            if (mCloseTimePicker!!.visibility != View.VISIBLE) {
                mCloseTimePicker!!.visibility = View.VISIBLE
                mOpenTimePicker!!.visibility = View.GONE
                mIsOpenTimePickVisible = false
                mIsCloseTimePickVisible = true

            } else {
                mCloseTimePicker!!.visibility = View.GONE
                mIsCloseTimePickVisible = false
            }
        }

        updateTimeColor()
    }

    private fun inflateFromStubIfNeed() {
        if (mOpenTimePicker == null || isStubNotInflate(mOpenTimePickerStub)) {
            val parent = mOpenTimePickerStub!!.parent as ViewGroup
            mOpenTimePickerStub!!.inflate()
            mOpenTimePicker = parent.findViewById(R.id.open_time_picker)
            initOpenTimePicker()
        }
        if (mCloseTimePicker == null || isStubNotInflate(mCloseTimePickerStub)) {
            val parent = mCloseTimePickerStub!!.parent as ViewGroup
            mCloseTimePickerStub!!.inflate()
            mCloseTimePicker = parent.findViewById(R.id.close_time_picker)
            initCloseTimePicker()
        }
    }

    private fun isStubNotInflate(viewStub: ViewStub?): Boolean {
        if (viewStub == null) {
            return false
        }
        return viewStub.parent != null
    }

    private fun initCloseTimePicker() {
        if (mCloseTimePicker != null) {
            val is24HourFormat = DateFormat.is24HourFormat(context)
            mCloseTimePicker!!.setIs24HourView(is24HourFormat)
            mCloseTimePicker!!.visibility = if (mIsCloseTimePickVisible) View.VISIBLE else View.GONE
            mCloseTimePicker!!.setTextVisibility(false)
            mCloseTimePicker!!.currentHour = mEndHour
            mCloseTimePicker!!.currentMinute = mEndMinute
            mCloseTimePicker!!.setOnTouchEndListener(this)
            mCloseTimePicker!!.setOnTimeChangedListener { view, hourOfDay, minute ->
                mEndHour = hourOfDay
                mEndMinute = minute

                sendTimeChangeMessage(view)
            }
        }
    }

    private fun initOpenTimePicker() {
        if (mOpenTimePicker != null) {
            val is24HourFormat = DateFormat.is24HourFormat(context)
            mOpenTimePicker!!.setIs24HourView(is24HourFormat)
            mOpenTimePicker!!.visibility = if (mIsOpenTimePickVisible) View.VISIBLE else View.GONE
            mOpenTimePicker!!.setTextVisibility(false)
            mOpenTimePicker!!.currentHour = mBeginHour
            mOpenTimePicker!!.currentMinute = mBeginMinute
            mOpenTimePicker!!.setOnTouchEndListener(this)
            mOpenTimePicker!!.setOnTimeChangedListener { view, hourOfDay, minute ->
                mBeginHour = hourOfDay
                mBeginMinute = minute
                sendTimeChangeMessage(view)
            }
        }
    }

    fun onBackPressed(): Boolean {
        if (null != mOpenTimePicker) {
            if (mIsOpenTimePickVisible || mIsCloseTimePickVisible) {
                mIsOpenTimePickVisible = false
                mIsCloseTimePickVisible = false
                mOpenTimePicker!!.visibility = View.GONE
                mCloseTimePicker!!.visibility = View.GONE
                return true
            }
        }

        return false
    }

    private fun setFixTimeDuration() {
        DarkModeSettingUtils.setDarkModeBeginTime(context.contentResolver, mBeginHour, mBeginMinute)
        DarkModeSettingUtils.setDarkModeEndTime(context.contentResolver, mEndHour, mEndMinute)
        DarkModeManager.updateDurationAndState(context, mBeginHour, mBeginMinute, mEndHour, mEndMinute)
        StatisticsUtils.reportSetTime(context, mOpenTime!!.text.toString(), mCloseTime!!.text.toString())
    }

    interface OnNextAutoSwitchTimeChangeListener {
        fun onNextAutoSwitchTimeChange()
    }

    fun setOnNextAutoSwitchTimeChangeListener(listener: OnNextAutoSwitchTimeChangeListener) {
        mOnNextAutoSwitchTimeChangeListener = listener
    }

    private fun updateTimeColor() {
        mOpenTime!!.isSelected = mIsOpenTimePickVisible
        mCloseTime!!.isSelected = mIsCloseTimePickVisible
    }

    companion object {
        private const val TAG = "DarkModeSettingTimePreference"
        private const val DELAY_TIME = 500
        private const val MSG_TIME_CHANGE = 100
        private const val MINUTE_BEGIN = 0
        private const val MINUTE_END = 59
        private const val HOUR_BEGIN = 0
        private const val HOUR_END = 23
        private const val HOUR_INVALID_MIN = -1
        private const val HOUR_INVALID_MAX = 24
    }

}
