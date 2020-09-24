.class public Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;
.super Landroid/widget/RelativeLayout;
.source "ColorKeyguardSecurityViewImpl.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityViewImpl"

.field private static final UNLOCK_FAILED_ACTION:Ljava/lang/String; = "oppo.intent.action.UNLOCK_FAILED"

.field private static final UNLOCK_SUCCESS_ACTION:Ljava/lang/String; = "oppo.intent.action.UNLOCK_SUCCEEDED"


# instance fields
.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mHasDismissAction:Z

.field protected mIsFaceDetectionRunning:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRegisterCallbackAlready:Z

.field protected mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance p2, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;-><init>(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 60
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setKeyguardDoneType(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected getBiometricDeadline(Landroid/hardware/biometrics/BiometricSourceType;)J
    .locals 1

    .line 241
    sget-object v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceLockoutAttemptDeadline()J

    move-result-wide p0

    return-wide p0

    .line 243
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpLockoutAttemptDeadline()J

    move-result-wide p0

    return-wide p0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected isBiometricUnlockEnable(Landroid/hardware/biometrics/BiometricSourceType;)Z
    .locals 3

    .line 226
    sget-object v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockEnable()Z

    move-result p0

    return p0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    .line 229
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintUnlockEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method protected isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    return v1

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result p0

    return p0

    .line 218
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->isBiometricUnlockEnable(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p0

    return p0
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 199
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mRegisterCallbackAlready:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mRegisterCallbackAlready:Z

    :cond_0
    return-void
.end method

.method protected onBiometricNoMatch(Landroid/hardware/biometrics/BiometricSourceType;J)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 207
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 208
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mRegisterCallbackAlready:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mRegisterCallbackAlready:Z

    :cond_0
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFaceError()V
    .locals 0

    return-void
.end method

.method protected onFaceRunningStateChanged()V
    .locals 0

    return-void
.end method

.method public onFling(FF)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method protected onPendingLockCheckedFailed(II)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.UNLOCK_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPasswordLockCheckedSuccess(Z)V

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1, v1, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-lez p2, :cond_0

    .line 281
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_0
    return-void
.end method

.method protected onPendingLockCheckedSuccess(I)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setKeyguardDoneType(II)V

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.UNLOCK_SUCCEEDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPasswordLockCheckedSuccess(Z)V

    .line 272
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 273
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    return-void
.end method

.method protected onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setHasDismissAction(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mHasDismissAction:Z

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method protected shouldBiometricLockout()Z
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBiometricLockoutAttemptDeadline()Z

    move-result p0

    return p0
.end method

.method protected shouldLockout()Z
    .locals 4

    .line 265
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected stopFaceChecking()V
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    return-void
.end method

.method protected updateSecurityMessageDisplay(I)V
    .locals 0

    return-void
.end method
