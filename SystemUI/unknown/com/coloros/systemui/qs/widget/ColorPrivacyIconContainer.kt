/***********************************************************
 ** Copyright (C), 2008-2019, OPPO Mobile Comm Corp., Ltd.
 ** VENDOR_EDIT
 ** File: - ColorPrivacyIconContainer.kt
 ** Description: Source file for .
 **           To Do the new requirement.
 ** Version: 1.0
 ** Date : 2019/12/4
 ** Author: Cheng.Tian@ROM.SysApp.SystemUI
 **
 ** ------------------------------- Revision History: -------------------------------
 **      <author>        <data>      <version >         <desc>
 **      Cheng.Tian     2019/12/4     1.0               build this module
 ****************************************************************/
package com.coloros.systemui.qs.widget

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import kotlin.math.max

class ColorPrivacyIconContainer @JvmOverloads constructor(context: Context, attributeSet: AttributeSet? = null, i: Int = 0) : LinearLayout(context, attributeSet, i) {

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        val widthSize = MeasureSpec.getSize(widthMeasureSpec)
        var leftWidth = widthSize
        for (i in childCount - 1 downTo 0) {
            val child = getChildAt(i)
            measureChild(child, widthMeasureSpec, heightMeasureSpec)
            val requireWidth = getRequireWidth(child)
            if (leftWidth < requireWidth) {
                child.measure(MeasureSpec.makeMeasureSpec(0, MeasureSpec.EXACTLY), MeasureSpec.makeMeasureSpec(0, MeasureSpec.EXACTLY))
                break
            } else {
                leftWidth -= requireWidth
            }
        }
        val width = resolveSizeAndState(max(widthSize - leftWidth, suggestedMinimumWidth), widthMeasureSpec, 0)
        val height = resolveSizeAndState(max(MeasureSpec.getSize(heightMeasureSpec), suggestedMinimumHeight), heightMeasureSpec, 0)
        setMeasuredDimension(width, height)
    }

    private fun getRequireWidth(measuredView: View): Int {
        var requireWidth = measuredView.measuredWidth
        val lp = measuredView.layoutParams
        if (lp is MarginLayoutParams) {
            requireWidth += lp.leftMargin + lp.rightMargin
        }
        return requireWidth
    }
}
