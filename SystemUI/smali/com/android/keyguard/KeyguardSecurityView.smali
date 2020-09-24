.class public interface abstract Lcom/android/keyguard/KeyguardSecurityView;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"


# static fields
.field public static final PROMPT_REASON_AFTER_LOCKOUT:I = 0x5

.field public static final PROMPT_REASON_DEVICE_ADMIN:I = 0x3

.field public static final PROMPT_REASON_NONE:I = 0x0

.field public static final PROMPT_REASON_RESTART:I = 0x1

.field public static final PROMPT_REASON_TIMEOUT:I = 0x2

.field public static final PROMPT_REASON_USER_REQUEST:I = 0x4

.field public static final RESUME_SECURE_CONTENT_VISIBLE:I = 0x3

.field public static final SCREEN_ON:I = 0x1

.field public static final VIEW_REVEALED:I = 0x2


# virtual methods
.method public disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract needsInput()Z
.end method

.method public onFling(FF)V
    .locals 0

    return-void
.end method

.method public onFullyHidden()V
    .locals 0

    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume(I)V
.end method

.method public abstract reset()V
.end method

.method public setHasDismissAction(Z)V
    .locals 0

    return-void
.end method

.method public abstract setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
.end method

.method public abstract setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
.end method

.method public abstract showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
.end method

.method public abstract showPromptReason(I)V
.end method

.method public abstract showUsabilityHint()V
.end method

.method public abstract startAppearAnimation()V
.end method

.method public abstract startDisappearAnimation(Ljava/lang/Runnable;)Z
.end method
