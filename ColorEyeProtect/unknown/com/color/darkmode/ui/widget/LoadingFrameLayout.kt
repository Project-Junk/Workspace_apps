package com.color.darkmode.ui.widget

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout
import com.color.screenshot.ColorLongshotUnsupported

class LoadingFrameLayout(context: Context) : FrameLayout(context), ColorLongshotUnsupported {
    override fun isLongshotUnsupported(): Boolean {
        return true
    }

    constructor(context: Context, attrs: AttributeSet) : this(context) {

    }

}