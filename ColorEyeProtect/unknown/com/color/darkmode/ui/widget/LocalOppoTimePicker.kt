/************************************************************
 * Copyright 2000-2015 OPPO Mobile Comm Corp., Ltd.
 * All rights reserved.
 *
 *
 * FileName       : LocalOppoTimePicker.java
 * Version Number : 1.0
 * Description    : disallow the parent view intercept the touch event, and remark whether the view is touching
 * Author         : gaoliang
 * Date           : 2017-1-3
 * History        :( ID,     Date,         Author, Description)
 * v1.0, 2017-1-3, gaoliang , create
 */

package com.color.darkmode.ui.widget

import android.content.Context
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.ViewParent
import com.color.support.widget.OppoTimePicker


class LocalOppoTimePicker @JvmOverloads constructor(context: Context, attr: AttributeSet, defStyleAttr: Int = 0) : OppoTimePicker(context, attr, defStyleAttr) {

    var isTouchEnd: Boolean = false
        private set

    private var mOnTouchEndListener: OnTouchEndListener? = null

    interface OnTouchEndListener {
        fun onTouchEnd(picker: LocalOppoTimePicker)
    }

    fun setOnTouchEndListener(listener: OnTouchEndListener) {
        mOnTouchEndListener = listener
    }

    init {
        isTouchEnd = true
        setRowNumber(3)
    }

    override fun dispatchTouchEvent(ev: MotionEvent): Boolean {
        val action = ev.action
        when (action) {
            MotionEvent.ACTION_DOWN -> isTouchEnd = false
            MotionEvent.ACTION_CANCEL, MotionEvent.ACTION_UP, MotionEvent.ACTION_OUTSIDE -> {
                isTouchEnd = true
                if (null != mOnTouchEndListener) {
                    mOnTouchEndListener!!.onTouchEnd(this)
                }
            }
            else -> {
            }
        }

        val viewParent = parent
        viewParent?.requestDisallowInterceptTouchEvent(true)

        return super.dispatchTouchEvent(ev)
    }
}
