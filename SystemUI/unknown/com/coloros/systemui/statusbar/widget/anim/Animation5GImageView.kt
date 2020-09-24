/*****************************************************************************
 * * Copyright (C), 2008-2020, OPPO Mobile Comm Corp., Ltd.
 * * COLOROS_EDIT
 * * File: - Animation5GView.kt
 * * Description:
 * * Version: 1.0
 * * Date : 2019/09/19
 * * Author: Yonghong.Zhang@ROM.SysApp.SystemUI
 * *
 * ************************** Revision History: *******************************
 * *     <author>             <data>         <version >     <desc>
 * *     Yonghong.Zhang       2019/09/19     1.0            build this module
 *****************************************************************************/

package com.coloros.systemui.statusbar.widget.anim

import android.content.Context
import android.graphics.drawable.AnimationDrawable
import android.util.AttributeSet
import android.view.View
import androidx.appcompat.widget.AppCompatImageView

class Animation5GImageView @JvmOverloads constructor(
        context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : AppCompatImageView(context, attrs, defStyleAttr) {
    companion object {
        private const val TAG = "Animation5GView"
    }

    fun startAnimation(drawable: AnimationDrawable?) {
        visibility = View.VISIBLE
        setImageDrawable(drawable)
        drawable?.start()
    }

    fun cancelAnimation(drawable: AnimationDrawable?) {
        visibility = View.GONE
        setImageDrawable(null)
        drawable?.stop()
    }

    override fun setVisibility(i: Int) {
        if (visibility != i) {
            super.setVisibility(i)
        }
    }

    override fun setFrame(i: Int, i1: Int, i2: Int, i3: Int): Boolean {
        val changed = super.setFrame(i, i1, i2, i3)
        if (scaleType == ScaleType.MATRIX) {
            transformMatrix()
        }
        return changed
    }

    private fun transformMatrix() {
        val drawable = drawable
        if (drawable != null) {
            val iw = width.toFloat()
            val ih = height.toFloat()
            val dh = drawable.intrinsicHeight.toFloat()
            val dw = drawable.intrinsicWidth.toFloat()
            val matrix = imageMatrix
            matrix.reset()
            matrix.postTranslate((iw - dw) / 2, ih - dh)
            matrix.postScale(1f, 1f, 0f, iw)
            imageMatrix = matrix
        }
    }
}