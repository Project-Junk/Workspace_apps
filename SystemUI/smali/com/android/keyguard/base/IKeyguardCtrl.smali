.class public interface abstract Lcom/android/keyguard/base/IKeyguardCtrl;
.super Ljava/lang/Object;
.source "IKeyguardCtrl.java"


# static fields
.field public static final APP_TYPE_CALL:I = 0x1

.field public static final APP_TYPE_CAMERA:I = 0x4

.field public static final APP_TYPE_DEFAULT:I = 0x0

.field public static final APP_TYPE_INTENT:I = 0x64

.field public static final APP_TYPE_LAUNCHER:I = 0x2

.field public static final APP_TYPE_MESSAGE:I = 0x3

.field public static final APP_TYPE_MUSIC:I = 0x5

.field public static final APP_TYPE_NOTICE_INTENT:I = 0x65

.field public static final KEYGUARD_EVERYTHING:I = 0x0

.field public static final KEYGUARD_NOT_CHANGE_WALLPAPER:I = 0x1

.field public static final KEYGUARD_NO_HARDWARE_ACCELERATED:I = 0x4

.field public static final KEYGUARD_NO_WALLPAPER_ANIMATION:I = 0x2

.field public static final KEYGUARD_TYPE_APK:I = 0x2

.field public static final KEYGUARD_TYPE_DEFAULT:I = 0x1

.field public static final KEYGUARD_TYPE_NONE:I = 0x0

.field public static final KEYGUARD_TYPE_SECURITY:I = 0x3

.field public static final KEYGUARD_TYPE_SLIDING:I = 0x1


# virtual methods
.method public abstract beInflated(Landroid/content/Context;Landroid/view/ViewGroup;I)I
.end method

.method public abstract checkNeedsInput()V
.end method

.method public abstract cleanUp()V
.end method

.method public abstract dismiss()V
.end method

.method public abstract endMoving(FI)V
.end method

.method public abstract getExactLockView()Landroid/view/View;
.end method

.method public abstract getExtraWallpaper()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getKeyguardUpdateMonitorCallback()Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;
.end method

.method public abstract handleMoving(FI)V
.end method

.method public abstract hide()V
.end method

.method public abstract inNotificationArea(Landroid/view/MotionEvent;)Z
.end method

.method public abstract keygaurdType()I
.end method

.method public abstract leatherOpen()V
.end method

.method public abstract onFingerprintEvent(II)V
.end method

.method public abstract onFinishedWakingUp()V
.end method

.method public abstract onFirstPointerUp()V
.end method

.method public abstract onRemoveWhenDouble()V
.end method

.method public abstract onRemoveWhenDouble(I)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract onStartedGoingToSleep()V
.end method

.method public abstract onSystemRebooted()V
.end method

.method public abstract readyMoving(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setHostCallback(Lcom/android/keyguard/base/HostCallback;)V
.end method

.method public abstract setKeyguardVisibility(I)V
.end method

.method public abstract setOccluded(Z)V
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method
