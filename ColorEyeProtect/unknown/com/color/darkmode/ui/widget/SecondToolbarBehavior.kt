package com.color.darkmode.ui.widget

import android.content.Context
import android.os.Build
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.AbsListView

import com.color.eyeprotect.R
import androidx.coordinatorlayout.widget.CoordinatorLayout
import androidx.core.view.ViewCompat
import color.support.design.widget.ColorAppBarLayout

class SecondToolbarBehavior : CoordinatorLayout.Behavior<ColorAppBarLayout>, AbsListView.OnScrollListener {
    private var mDivider: View? = null
    private var mMaxHeight: Int = 0
    private var mScrollView: View? = null
    private var mChild: View? = null
    private var mLocationY: Int = 0
    private var mNewOffset: Int = 0
    private var mCurrentOffset: Int = 0
    private val mLocation = IntArray(2)
    private var mMaxWidth: Int = 0
    private var mDividerParams: ViewGroup.LayoutParams? = null
    private var mMarginLeftRight: Int = 0
    private var mDividerAlphaCountMinh: Int = 0
    private var mDividerWidthContMaxh: Int = 0
    private var mDividerWdithCountMinh: Int = 0

    constructor() : super() {}

    constructor(context: Context, attrs: AttributeSet) : super(context, attrs) {
        init(context)
    }

    private fun init(context: Context) {
        val resources = context.resources
        mMarginLeftRight = resources.getDimensionPixelOffset(R.dimen.common_margin)
        mDividerAlphaCountMinh = resources.getDimensionPixelOffset(R.dimen.line_alpha_range_count_height)
        mDividerWidthContMaxh = resources.getDimensionPixelOffset(R.dimen.divider_width_count_max_height)
        mDividerWdithCountMinh = resources.getDimensionPixelOffset(R.dimen.divider_width_count_min_height)
    }

    override fun onStartNestedScroll(coordinatorLayout: CoordinatorLayout, child: ColorAppBarLayout, directTargetChild: View, target: View, axes: Int, type: Int): Boolean {
        val started = axes and ViewCompat.SCROLL_AXIS_VERTICAL != 0 && coordinatorLayout.height - directTargetChild.height <= child.height
        if (started) {
            if (mMaxHeight <= 0) {
                mMaxHeight = child.measuredHeight
                mScrollView = target
                mDivider = child.findViewById(R.id.divider_line)
                mDividerParams = mDivider!!.layoutParams
                mMaxWidth = child.measuredWidth
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                target.setOnScrollChangeListener { view, i, i1, i2, i3 -> onListScroll() }
            } else if (target is AbsListView) {
                target.setOnScrollListener(this)
            }
        }
        return false
    }

    override fun onScrollStateChanged(absListView: AbsListView, i: Int) {

    }

    override fun onScroll(absListView: AbsListView, i: Int, i1: Int, i2: Int) {
        onListScroll()
    }

    private fun onListScroll() {
        mChild = null
        if (mScrollView is ViewGroup) {
            val viewGroup = mScrollView as ViewGroup?
            if (viewGroup!!.childCount > 0) {
                for (i in 0 until viewGroup.childCount) {
                    if (viewGroup.getChildAt(i).visibility == View.VISIBLE) {
                        this.mChild = viewGroup.getChildAt(i)
                        break
                    }
                }
            }
        }
        if (mChild == null) {
            mChild = mScrollView
        }
        mChild!!.getLocationOnScreen(mLocation)
        mLocationY = mLocation[1]
        mNewOffset = 0
        /**
         * @param dividerLineRange 分割线Alpha变化系数，以10dp为有效滑动距离算出, mMaxHeight-10dp<=y<=mMaxHeight.
         */
        if (mLocationY < mMaxHeight - mDividerAlphaCountMinh) {
            mNewOffset = mDividerAlphaCountMinh
        } else if (mLocationY > mMaxHeight) {
            mNewOffset = 0
        } else {
            //            0<=newOffset<=50dp
            mNewOffset = mMaxHeight - mLocationY
        }
        mCurrentOffset = mNewOffset
        val dividerLineRange = Math.abs(mCurrentOffset) / mDividerAlphaCountMinh.toFloat()
        mDivider!!.alpha = dividerLineRange

        /**
         * @param dividerWidthRange 分割线宽度变化系数，以25dp为有效滑动距离算出, mMaxHeight-35dp<=y<=mMaxHeight-10dp.
         */
        if (mLocationY < mMaxHeight - mDividerWdithCountMinh) {
            mNewOffset = mDividerWidthContMaxh - mDividerWdithCountMinh
        } else if (mLocationY > mMaxHeight - mDividerWidthContMaxh) {
            mNewOffset = 0
        } else {
            //            0<=newOffset<=40dp
            mNewOffset = mMaxHeight - mDividerWidthContMaxh - mLocationY
        }
        mCurrentOffset = mNewOffset
        val dividerWidthRange = Math.abs(mCurrentOffset) / (mDividerWdithCountMinh - mDividerWidthContMaxh).toFloat()
        mDividerParams!!.width = (mMaxWidth - 2f * mMarginLeftRight.toFloat() * (1 - dividerWidthRange)).toInt()
        mDivider!!.layoutParams = mDividerParams
    }
}
