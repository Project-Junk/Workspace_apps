package com.color.eyeprotect.model

import android.os.UserHandle

data class CCTEntity(var mEnable: Boolean, var mMode: Int, var mEyeProtectCCT: Int = -1, var mAnimationDuring: Long,
                     var byUserDrag: Boolean = false, var userId: Int = UserHandle.USER_CURRENT) {
    companion object {
        const val DEFAULT_CCT = -1
        const val NO_ANIMATION = -1L
    }
}