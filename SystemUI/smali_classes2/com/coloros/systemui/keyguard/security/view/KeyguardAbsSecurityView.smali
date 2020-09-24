.class public abstract Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.super Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;
.source "KeyguardAbsSecurityView.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;
.implements Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;


# static fields
.field protected static final ANIM_FAILED_MODE_COMMOM:I = 0x1

.field protected static final ANIM_FAILED_MODE_FACE:I = 0x3

.field protected static final ANIM_FAILED_MODE_PWD:I = 0x2

.field protected static final COUNT_DOWN_INTERVAL:I = 0x3e8

.field private static final HIGH_FINGER_PRINT_MARGIN_BOTTOM:I = 0x1f4

.field protected static final HYPNUS_ACTION_TIME:I = 0x3e8

.field protected static final MESSAGE_VIEW_DEFAULT_TEXT_SIZE_DP:I = 0x14

.field protected static final MSG_DISPLAY_STATE_ENTER_BIOMETRIC:I = 0x9

.field protected static final MSG_DISPLAY_STATE_FACEUNLOCK_COUNTDOWN:I = 0x6

.field protected static final MSG_DISPLAY_STATE_FACEUNLOCK_FAILED:I = 0x5

.field protected static final MSG_DISPLAY_STATE_FP_COUNTDOWN:I = 0x4

.field protected static final MSG_DISPLAY_STATE_FP_FAILED:I = 0x3

.field protected static final MSG_DISPLAY_STATE_NEED_TO_CHECK_PWD_WHEN_REBOOTED:I = 0x7

.field public static final MSG_DISPLAY_STATE_NEED_TO_VERIFY_DUE_TO_MANUALLY_LOCKED:I = 0x3e9

.field protected static final MSG_DISPLAY_STATE_NORMAL:I = 0x0

.field protected static final MSG_DISPLAY_STATE_PWD_COUNTDOWN:I = 0x2

.field protected static final MSG_DISPLAY_STATE_PWD_FAILED:I = 0x1

.field protected static final MSG_DISPLAY_STATE_STRONG_AUTH_TIMEOUT:I = 0x8

.field protected static final SECURITY_BUTTON_DEFAULT_TEXT_SIZE_DP:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardAbsSecurityView"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFlingDetector:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

.field protected mForgetPwBtn:Landroid/widget/Button;

.field protected mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

.field protected mHypnus:Lcom/oppo/hypnus/Hypnus;

.field protected mIsClosedSuperFirewall:Z

.field protected mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

.field private mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

.field protected mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

.field protected mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckSeq:I

.field private mRpmbCheckTask:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

.field private mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field protected mShowPwBtn:Lcom/color/support/widget/ColorButton;

.field protected mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    new-instance p2, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 174
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    .line 175
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isClosedSuperFirewall()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsClosedSuperFirewall:Z

    .line 176
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIsShowFpWhenBouncer(Z)V

    .line 177
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 178
    new-instance p2, Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    invoke-direct {p2, p1}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;Landroid/hardware/biometrics/BiometricSourceType;)Z
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheckSeq:I

    return p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;)Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mRpmbCheckTask:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;II)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPendingLockCheckedFailed(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Z
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getDisplayState()I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Z
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    return-object p0
.end method

.method private cancelCountdown()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardAbsSecurityView"

    const-string v1, "cancelCountdown"

    .line 471
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private enterBiometric(ZZ)Z
    .locals 4

    .line 633
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInLockoutState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerify()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v0

    .line 637
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v2

    .line 638
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v3

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    .line 640
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    const-string p0, "KeyguardAbsSecurityView"

    const-string p1, "enterBiometric(), just face enable, start detection."

    .line 641
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 644
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldBiometricLockout()Z

    move-result p1

    if-nez p1, :cond_3

    .line 645
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterBiometric(Z)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private getDisplayState()I
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v0

    .line 535
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isStrongAuthTimeOut()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    .line 542
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needVerifyPwdAfterManuallyLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x3e9

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMessageInBiometric()Ljava/lang/String;
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const v0, 0x7f11044c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isStrongAuthTimeOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const v0, 0x7f110441

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v0

    .line 366
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v1

    .line 367
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v2

    .line 368
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInBiometricState()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 369
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageInBiometric(), fpUnlockPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", faceUnlockPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFpOnScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFaceChecking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInBiometricState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardAbsSecurityView"

    invoke-static {v5, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isPattern()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f11044b

    goto :goto_1

    :cond_3
    const v4, 0x7f11044a

    :goto_1
    const v5, 0x7f110445

    const v6, 0x7f110408

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz v2, :cond_6

    .line 377
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    if-eqz v0, :cond_4

    :goto_2
    move v4, v6

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    const v0, 0x7f110448

    goto :goto_3

    :cond_5
    const v0, 0x7f110449

    :goto_3
    move v4, v0

    goto :goto_4

    .line 381
    :cond_6
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    if-eqz v3, :cond_9

    const v0, 0x7f110446

    goto :goto_3

    :cond_9
    const v0, 0x7f110447

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    .line 388
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    if-eqz v0, :cond_7

    goto :goto_2

    .line 390
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canSwitchState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected clearPendingLockCheck()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 809
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingLockCheck, seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheckSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", couldCancelled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsSecurityView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method protected abstract clearTexts()V
.end method

.method protected clearTextsNoAnimator()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearTexts()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 254
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent KeyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsSecurityView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 257
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onBackActionClicked(I)V

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 243
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEventPreIme KeyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsSecurityView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onBackActionClicked(I)V

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 654
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isPattern()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mFlingDetector:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInBiometricState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mFlingDetector:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 661
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPasswordQuality()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final handleAttemptLockout(JI)V
    .locals 11

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, p1, v0

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAttemptLockout(), deadline="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", elapsedRealtime="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", countDownSeconds="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardAbsSecurityView"

    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->cancelCountdown()V

    .line 400
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearTexts()V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    .line 402
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    .line 403
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterLockout()V

    .line 407
    :cond_0
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;

    const-wide/16 v0, 0x3e8

    mul-long v6, v2, v0

    const-wide/16 v8, 0x3e8

    move-object v4, p1

    move-object v5, p0

    move v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;JJI)V

    .line 439
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 440
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->stopFaceChecking()V

    return-void
.end method

.method protected initKeyguardSecuritySwitcher()V
    .locals 0

    return-void
.end method

.method protected isPattern()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardAbsSecurityView(Landroid/view/View;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetPwBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorToolTips;->show(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$KeyguardAbsSecurityView(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterNormal()V

    return-void
.end method

.method protected needShowNavigationBar()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onAttachedToWindow()V

    .line 221
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->canSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->initKeyguardSecuritySwitcher()V

    .line 223
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->setOnStateChangedListener(Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher$OnStateChangedListener;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->registerNavActionListener(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;)V

    .line 228
    :cond_1
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackActionClicked(I)V
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->stopFaceChecking()V

    .line 552
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnBackPressed(Landroid/content/Context;I)V

    .line 553
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onKeyguardBackPressed()V

    .line 554
    const-class p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 555
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p1, 0x0

    .line 556
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    return-void
.end method

.method protected onBiometricNoMatch(Landroid/hardware/biometrics/BiometricSourceType;J)V
    .locals 5

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricNoMatch, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsSecurityView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onBiometricNoMatch, CountDownTimer is running and return"

    .line 583
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 598
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz p1, :cond_2

    .line 599
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterNormal()V

    :cond_2
    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    .line 602
    invoke-virtual {p0, p2, p3, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V

    goto :goto_0

    .line 603
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_4
    const/4 p1, 0x5

    .line 604
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 605
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->unLockFailedAnimation(I)V

    goto :goto_0

    .line 588
    :cond_5
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz p1, :cond_6

    .line 589
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterNormal()V

    :cond_6
    cmp-long p1, p2, v3

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    .line 592
    invoke-virtual {p0, p2, p3, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V

    goto :goto_0

    .line 593
    :cond_7
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 594
    :cond_8
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onDetachedFromWindow()V

    .line 234
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->registerNavActionListener(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;)V

    .line 237
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mRpmbCheckTask:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->postRpmbCheckTask(Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;)V

    return-void
.end method

.method protected onFaceError()V
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldBiometricLockout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getFaceErrorTips()Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getMessageInBiometric()Ljava/lang/String;

    move-result-object p0

    .line 618
    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "KeyguardAbsSecurityView"

    const-string v0, "onFaceError, CountDownTimer is running and return"

    .line 614
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFaceRunningStateChanged()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceRunningStateChanged(), isRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBouncer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardAbsSecurityView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    if-eqz v1, :cond_0

    .line 572
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->clearMsg()V

    goto :goto_0

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 575
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 184
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onFinishInflate()V

    const v0, 0x7f0a01a8

    .line 185
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    .line 187
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->canSwitchState()Z

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    if-eqz v0, :cond_1

    const v0, 0x7f0a0301

    .line 188
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetPwBtn:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetPwBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    .line 190
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetPwBtn:Landroid/widget/Button;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSecurityView$BF3Xn34Zeyxx9yTavXffRXmxXQ8;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSecurityView$BF3Xn34Zeyxx9yTavXffRXmxXQ8;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetPwBtn:Landroid/widget/Button;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;-><init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    new-instance v0, Lcom/color/support/widget/ColorToolTips;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/color/support/widget/ColorToolTips;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorToolTips;->setDismissOnTouchOutside(Z)V

    .line 194
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const v3, 0x7f110417

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorToolTips;->setContent(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0313

    .line 195
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorButton;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    .line 196
    sget v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSecurityView$3A5BTRG6vfsgI3ONGTzGO0JlRc0;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSecurityView$3A5BTRG6vfsgI3ONGTzGO0JlRc0;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mFlingDetector:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mFlingDetector:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$kPYs4ik6pELKG2ffiqqYaWYla00;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$kPYs4ik6pELKG2ffiqqYaWYla00;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)V

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->setOnKeyguardFlingListener(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->needShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a030b

    .line 206
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->getEmergencyButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->getEmergencyButton()Landroid/widget/Button;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->getEmergencyButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    .line 214
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    :cond_3
    return-void
.end method

.method public onFling(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    neg-float p2, p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 626
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 629
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->enterBiometric(ZZ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onFullyHidden()V
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearTextsNoAnimator()V

    .line 818
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 821
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->clearMsg()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardAbsSecurityView"

    const-string v1, "onPause"

    .line 522
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearPendingLockCheck()V

    .line 524
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearTextsNoAnimator()V

    .line 525
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearFocus()V

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setFocusableInTouchMode(Z)V

    .line 527
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorToolTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPendingLockCheckedSuccess(I)V
    .locals 0

    .line 666
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onPendingLockCheckedSuccess(I)V

    .line 667
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->cancelCountdown()V

    return-void
.end method

.method public onResume(I)V
    .locals 6

    .line 484
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shouldLockout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardAbsSecurityView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 487
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setFocusableInTouchMode(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->requestFocus()Z

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 491
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 492
    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V

    goto :goto_1

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerify()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->cancelCountdown()V

    .line 498
    :cond_1
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    :cond_2
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    .line 501
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldBiometricLockout()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 502
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getBiometricDeadline(Landroid/hardware/biometrics/BiometricSourceType;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 504
    invoke-virtual {p0, v0, v1, v3}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V

    goto :goto_0

    .line 505
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getBiometricDeadline(Landroid/hardware/biometrics/BiometricSourceType;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    .line 506
    invoke-virtual {p0, v0, v1, v3}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V

    :cond_5
    :goto_0
    if-ne p1, v2, :cond_6

    const/4 p1, 0x0

    .line 510
    new-array v0, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 512
    :cond_6
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :goto_1
    return-void
.end method

.method public onStateChangeFinish(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 700
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->clearPressedAnimatorState()V

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 704
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    .line 705
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz p1, :cond_1

    .line 706
    invoke-virtual {p1, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->setClickable(Z)V

    .line 708
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorButton;->setScaleX(F)V

    .line 709
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mShowPwBtn:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorButton;->setScaleY(F)V

    .line 710
    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 711
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInBiometricState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 712
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    .line 713
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIsShowFpWhenBouncer(Z)V

    .line 714
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    const/16 p1, 0x9

    .line 715
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 717
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorToolTips;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 718
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->dismiss()V

    :cond_4
    return-void
.end method

.method public onStateChangeStart(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 684
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->setClickable(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 685
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInBiometricState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 686
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIsShowFpWhenBouncer(Z)V

    .line 687
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 689
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->isInNormalState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 690
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    .line 691
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearTextsNoAnimator()V

    .line 693
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorToolTips;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 694
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mForgetTipsView:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorToolTips;->dismiss()V

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 5

    .line 448
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    .line 449
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset(), deadline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", isBouncer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHasDismissAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mHasDismissAction:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardAbsSecurityView"

    invoke-static {v4, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->reset(J)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setExeDismiss(Z)V

    .line 464
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz p0, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->clearPressedAnimatorState()V

    :cond_2
    return-void
.end method

.method protected setHypnusAction()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mHypnus:Lcom/oppo/hypnus/Hypnus;

    if-nez v0, :cond_0

    .line 561
    invoke-static {}, Lcom/oppo/hypnus/Hypnus;->getHypnus()Lcom/oppo/hypnus/Hypnus;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mHypnus:Lcom/oppo/hypnus/Hypnus;

    .line 563
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mHypnus:Lcom/oppo/hypnus/Hypnus;

    const/16 v0, 0xf

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/oppo/hypnus/Hypnus;->hypnusSetAction(II)V

    return-void
.end method

.method protected abstract setInputEnabled(Z)V
.end method

.method protected setTextSizeWithoutScale(Landroid/widget/TextView;F)V
    .locals 1

    if-eqz p1, :cond_2

    .line 671
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 674
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mDefaultDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 675
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    cmpl-float p2, p2, p0

    if-nez p2, :cond_1

    return-void

    .line 678
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    .line 725
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mHasDismissAction:Z

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->enterBiometric(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 727
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isVirtualNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 731
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    .line 737
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 738
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v1

    .line 742
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method protected startPendingLockCheck(Ljava/lang/String;)V
    .locals 4

    .line 754
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 755
    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheckSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheckSeq:I

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPendingLockCheck, uIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheckSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardAbsSecurityView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 758
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    .line 759
    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;ILjava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 798
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 797
    invoke-static {v2, p1, v0, v1}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0

    .line 800
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mLockPatternUtilsNative:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 801
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 800
    invoke-static {v2, p1, v0, v1}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPassword(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method protected unLockFailedAnimation(I)V
    .locals 0

    return-void
.end method

.method protected varargs updateMessageDisplay(I[Ljava/lang/Object;)V
    .locals 6

    const/16 v0, 0x3e9

    const-string v1, "KeyguardAbsSecurityView"

    if-eq p1, v0, :cond_f

    const v0, 0x7f110410

    const-string v2, "updateMessageDisplay, lockout, why="

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 347
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldBiometricLockout()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getMessageInBiometric()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_8

    .line 348
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 329
    :pswitch_0
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockPossible(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 330
    iget-boolean p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mIsFaceDetectionRunning:Z

    if-eqz p2, :cond_2

    const p2, 0x7f110408

    goto :goto_1

    :cond_2
    const p2, 0x7f110448

    goto :goto_1

    :cond_3
    const p2, 0x7f110446

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_8

    .line 320
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_4
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const v0, 0x7f110441

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_8

    .line 312
    :pswitch_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldLockout()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_5
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const v0, 0x7f11044c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_8

    :pswitch_3
    if-eqz p2, :cond_8

    .line 302
    array-length v2, p2

    if-lt v2, v3, :cond_8

    aget-object v2, p2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_6

    goto :goto_3

    .line 306
    :cond_6
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v5}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockEnable(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    const v0, 0x7f110407

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/Integer;

    aput-object p2, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_8

    :cond_8
    :goto_3
    const-string p0, "updateMessageDisplay MSG_DISPLAY_STATE_FACEUNLOCK_COUNTDOWN args number exception!"

    .line 303
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :pswitch_4
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getMessageInBiometric()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_8

    :pswitch_5
    if-eqz p2, :cond_b

    .line 288
    array-length v2, p2

    if-lt v2, v3, :cond_b

    aget-object v2, p2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_9

    goto :goto_5

    .line 292
    :cond_9
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v5}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isBiometricUnlockEnable(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    const v0, 0x7f110411

    :goto_4
    new-array v3, v3, [Ljava/lang/Object;

    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/Integer;

    aput-object p2, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_b
    :goto_5
    const-string p0, "updateMessageDisplay MSG_DISPLAY_STATE_FP_COUNTDOWN args number exception!"

    .line 289
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :pswitch_6
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getMessageInBiometric()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :pswitch_7
    if-eqz p2, :cond_d

    .line 276
    array-length v0, p2

    if-lt v0, v3, :cond_d

    aget-object v0, p2, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    goto :goto_6

    .line 280
    :cond_c
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    const v2, 0x7f110435

    new-array v3, v3, [Ljava/lang/Object;

    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/Integer;

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_d
    :goto_6
    const-string p0, "updateMessageDisplay MSG_DISPLAY_STATE_PWD_COUNTDOWN args number exception!"

    .line 277
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 268
    :pswitch_8
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->shouldBiometricLockout()Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p0, "updateMessageDisplay msg can not be changed when lockout"

    .line 269
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_e
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getMessageInBiometric()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    .line 340
    :cond_f
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isPattern()Z

    move-result p2

    if-eqz p2, :cond_10

    const p2, 0x7f11044b

    goto :goto_7

    :cond_10
    const p2, 0x7f11044a

    .line 341
    :goto_7
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 355
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageDisplay why = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateSecurityMessageDisplay(I)V
    .locals 1

    const/4 v0, 0x0

    .line 749
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    return-void
.end method
