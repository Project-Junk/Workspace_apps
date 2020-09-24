/*
 * Copyright (C) 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the
 * License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.coloros.systemui.qs.privacy

import android.content.Context
import android.util.AttributeSet
import android.view.Gravity
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.LinearLayout
import com.android.systemui.R
import com.coloros.common.feature.ColorOSFeatureOption
import com.coloros.systemui.qs.widget.ColorPrivacyIconContainer

class OngoingPrivacyChip @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttrs: Int = 0,
    defStyleRes: Int = 0
) : LinearLayout(context, attrs, defStyleAttrs, defStyleRes) {

    private val iconMarginExpanded = context.resources.getDimensionPixelSize(
                    R.dimen.ongoing_appops_chip_icon_margin_expanded)
    private val iconMarginCollapsed = context.resources.getDimensionPixelSize(
                    R.dimen.ongoing_appops_chip_icon_margin_collapsed)
    private val iconSize =
            context.resources.getDimensionPixelSize(R.dimen.ongoing_appops_chip_icon_size)
    private val iconColor = context.resources.getColor(
            R.color.status_bar_clock_color, context.theme)
    //#ifndef COLOROS_EDIT
    //Song.Tang@ROM.SysApp.SystemUI, 2019/7/17, Add for os7.0.
    private val colorosIconColor = context.resources.getColor(
            R.color.quick_settings_privacy_icon_color, context.theme)
    private val iconMarginStart = context.resources.getDimensionPixelSize(
            R.dimen.ongoing_appops_chip_icon_margin_start)
    //#endif /* COLOROS_EDIT */
    private val sidePadding =
            context.resources.getDimensionPixelSize(R.dimen.ongoing_appops_chip_side_padding)
    private val backgroundDrawable = context.getDrawable(R.drawable.privacy_chip_bg)
    private lateinit var iconsContainer: ColorPrivacyIconContainer
    private lateinit var back: FrameLayout
    var expanded = false
        set(value) {
            if (value != field) {
                field = value
                updateView()
            }
        }

    var builder = PrivacyDialogBuilder(context, emptyList<PrivacyItem>())
    var privacyList = emptyList<PrivacyItem>()
        set(value) {
            field = value
            builder = PrivacyDialogBuilder(context, value)
            updateView()
        }

    override fun onFinishInflate() {
        super.onFinishInflate()
        //#ifndef COLOROS_EDIT
        //Song.Tang@ROM.SysApp.SystemUI, 2019/7/17, Modify for os7.0.
        /*
        back = findViewById(R.id.background)
         */
        //#else /* COLOROS_EDIT */
        if (!ColorOSFeatureOption.isColorOSQuickSettings()) {
            back = findViewById(R.id.background)
        }
        //#endif /* COLOROS_EDIT */
        iconsContainer = findViewById(R.id.icons_container)
    }

    // Should only be called if the builder icons or app changed
    private fun updateView() {
        //#ifndef COLOROS_EDIT
        //Song.Tang@ROM.SysApp.SystemUI, 2019/7/17, Modify for os7.0.
        /*
        back.background = if (expanded) backgroundDrawable else null
        val padding = if (expanded) sidePadding else 0
        back.setPaddingRelative(padding, 0, padding, 0)
         */
        //#else /* COLOROS_EDIT */
        if (!ColorOSFeatureOption.isColorOSQuickSettings()) {
            back.background = if (expanded) backgroundDrawable else null
            val padding = if (expanded) sidePadding else 0
            back.setPaddingRelative(padding, 0, padding, 0)
        }
        //#endif /* COLOROS_EDIT */
        fun setIcons(dialogBuilder: PrivacyDialogBuilder, iconsContainer: ViewGroup) {
            iconsContainer.removeAllViews()
            //#ifndef COLOROS_EDIT
            //Song.Tang@ROM.SysApp.SystemUI, 2019/7/17, Modify for os7.0.
            /*
            dialogBuilder.generateIcons().forEachIndexed { i, it ->
                it.mutate()
                it.setTint(iconColor)
                val image = ImageView(context).apply {
                    background = backgroundDrawable
                    setImageDrawable(it)
                    scaleType = ImageView.ScaleType.CENTER_INSIDE
                }
                iconsContainer.addView(image, iconSize, iconSize)
                if (i != 0) {
                    val lp = image.layoutParams as MarginLayoutParams
                    lp.marginStart = if (expanded) iconMarginExpanded else iconMarginCollapsed
                    image.layoutParams = lp
                }
            }
             */
            //#else /* COLOROS_EDIT */
            if (!ColorOSFeatureOption.isColorOSQuickSettings()) {
                dialogBuilder.generateIcons().forEachIndexed { i, it ->
                    it.mutate()
                    it.setTint(iconColor)
                    val image = ImageView(context).apply {
                        background = backgroundDrawable
                        setImageDrawable(it)
                        scaleType = ImageView.ScaleType.CENTER_INSIDE
                    }
                    iconsContainer.addView(image, iconSize, iconSize)
                    if (i != 0) {
                        val lp = image.layoutParams as MarginLayoutParams
                        lp.marginStart = if (expanded) iconMarginExpanded else iconMarginCollapsed
                        image.layoutParams = lp
                    }
                }
            } else {
                dialogBuilder.generateIcons().forEachIndexed { i, it ->
                    it.mutate()
                    it.setTint(colorosIconColor)
                    val image = ImageView(context).apply {
                        background = backgroundDrawable
                        setImageDrawable(it)
                        scaleType = ImageView.ScaleType.CENTER_INSIDE
                        setPaddingRelative(sidePadding, sidePadding, sidePadding, sidePadding)
                    }
                    iconsContainer.addView(image, iconSize, iconSize)
                    if (i != 0) {
                        val lp = image.layoutParams as MarginLayoutParams
                        lp.marginStart = iconMarginStart
                        image.layoutParams = lp
                    }
                }
            }
            //#endif /* COLOROS_EDIT */
        }

        if (!privacyList.isEmpty()) {
            generateContentDescription()
            setIcons(builder, iconsContainer)
            val lp = iconsContainer.layoutParams as FrameLayout.LayoutParams
            //#ifndef COLOROS_EDIT
            //Song.Tang@ROM.SysApp.SystemUI, 2019/7/17, Modify for os7.0.
            /*
            lp.gravity = Gravity.CENTER_VERTICAL or
                    (if (expanded) Gravity.CENTER_HORIZONTAL else Gravity.END)
             */
            //#else /* COLOROS_EDIT */
            if (!ColorOSFeatureOption.isColorOSQuickSettings()) {
                lp.gravity = Gravity.CENTER_VERTICAL or
                        (if (expanded) Gravity.CENTER_HORIZONTAL else Gravity.END)
            }
            //#endif /* COLOROS_EDIT */
            iconsContainer.layoutParams = lp
        } else {
            iconsContainer.removeAllViews()
        }
        requestLayout()
    }

    private fun generateContentDescription() {
        val typesText = builder.joinTypes()
        iconsContainer.contentDescription = context.getString(
                R.string.ongoing_privacy_chip_content_multiple_apps, typesText)
    }
}