package com.color.darkmode.entity

class Duration {
    var mHourBegin: Int = 0
    var mMinBegin: Int = 0
    var mHourEnd: Int = 0
    var mMinEnd: Int = 0

    val isValid: Boolean
        get() = mHourBegin >= 0 && mMinBegin >= 0 && mHourEnd >= 0 && mMinEnd >= 0 && !(mHourBegin == mHourEnd && mMinBegin == mMinEnd)

    val beginTimeString: String
        get() {
            val ten = 10
            val sb = StringBuilder()
            if (mHourBegin < ten) {
                sb.append("0$mHourBegin")
            } else {
                sb.append(mHourBegin)
            }

            sb.append(":")

            if (mMinBegin < ten) {
                sb.append("0$mMinBegin")
            } else {
                sb.append(mMinBegin)
            }

            return sb.toString()
        }

    val endTimeString: String
        get() {
            val ten = 10
            val sb = StringBuilder()
            if (mHourEnd < ten) {
                sb.append("0$mHourEnd")
            } else {
                sb.append(mHourEnd)
            }

            sb.append(":")

            if (mMinEnd < ten) {
                sb.append("0$mMinEnd")
            } else {
                sb.append(mMinEnd)
            }

            return sb.toString()
        }

    init {
        mHourBegin = -1
        mMinBegin = -1
        mHourEnd = -1
        mMinEnd = -1
    }

    fun setDuration(hourBegin: Int, minBegin: Int, hourEnd: Int, minEnd: Int) {
        mHourBegin = hourBegin
        mMinBegin = minBegin
        mHourEnd = hourEnd
        mMinEnd = minEnd
    }

    fun isInDuration(hour: Int, min: Int): Boolean {
        if (!isValid) {
            return false
        }
        val min1 = mHourBegin * 60 + mMinBegin
        val min2 = mHourEnd * 60 + mMinEnd
        val min3 = hour * 60 + min
        if (min2 > min1) {
            if (min3 >= min1 && min3 < min2) {
                return true
            }
        } else if (min2 < min1) {
            if (min3 < min2 || min3 >= min1) {
                return true
            }
        }
        return false
    }

    override fun toString(): String {
        return mHourBegin.toString() + ":" + mMinBegin + " to " + mHourEnd + ":" + mMinEnd
    }

}