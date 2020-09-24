.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# static fields
.field private static final FP_DRAW_OFF_TIMEOUT:I = 0x320

.field private static final STATE_BIOMETRICS_ERROR:I = 0x3

.field private static final STATE_BIOMETRICS_FAILED:I = 0x4

.field private static final STATE_LOCKED:I = 0x0

.field private static final STATE_LOCK_OPEN:I = 0x1

.field private static final STATE_SCANNING_FACE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockIcon"

.field private static final TYPE_FACE_TO_PADLOCK_TRANSITION:I = 0x6

.field private static final TYPE_PADLOCK_TO_FACE_TRANSITION:I = 0x7


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

.field private mBlendColor:I

.field private mBouncerVisible:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mDefaultContext:Landroid/content/Context;

.field private mDensity:I

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDocked:Z

.field private mDozeAmount:F

.field private mDozing:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mIconColor:I

.field private mIconRes:I

.field private mIsFaceUnlockState:Z

.field private mIsUnlock:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastBouncerVisible:Z

.field private mLastDozing:Z

.field private mLastPulsing:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mLastTrustState:Landroid/util/SparseBooleanArray;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNightMode:Z

.field private mNoTransitionAnimNextTime:Z

.field private mPulsing:Z

.field private mScreenOn:Z

.field private mShowingLaunchAffordance:Z

.field private mSimLocked:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeAndUnlockRunning:Z

.field private mWasPulsingOnThisFrame:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/dock/DockManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 102
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 129
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastTrustState:Landroid/util/SparseBooleanArray;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlendColor:I

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$2;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 160
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$3;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 260
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    .line 261
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 262
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 263
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 264
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 265
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 266
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 267
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 268
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mMainHandler:Landroid/os/Handler;

    .line 269
    new-instance p1, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    .line 273
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 274
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p3, 0x20

    if-ne p1, p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mNightMode:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/LockIcon;)I
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/LockIcon;I)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->doesAnimationLoop(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlock:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateTipsWhenTrustChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->saveLastTrustState()V

    return-void
.end method

.method private doesAnimationLoop(I)Z
    .locals 0

    .line 477
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_anim_lock_scanning:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getAnimationResForTransition(IIZZZZZ)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    if-nez p4, :cond_0

    .line 485
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eq p1, v3, :cond_2

    if-ne p2, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-ne p1, v3, :cond_3

    if-nez p2, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    if-nez p3, :cond_4

    if-eqz p4, :cond_4

    move p3, v3

    goto :goto_3

    :cond_4
    move p3, v2

    :goto_3
    if-eqz p5, :cond_5

    if-nez p6, :cond_5

    .line 493
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    if-eqz v1, :cond_6

    .line 496
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_anim_lock_to_error:I

    return p0

    :cond_6
    if-eqz v4, :cond_7

    .line 498
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_anim_lock_unlock:I

    return p0

    :cond_7
    if-eqz p1, :cond_8

    .line 500
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_anim_lock_lock:I

    return p0

    :cond_8
    const/4 p0, 0x2

    if-ne p2, p0, :cond_9

    if-eqz p7, :cond_9

    .line 502
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_anim_lock_scanning:I

    return p0

    :cond_9
    if-nez p3, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eq p2, v3, :cond_b

    .line 504
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_anim_lock_in:I

    return p0

    :cond_b
    return v0
.end method

.method private getIconForState(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 467
    :cond_1
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_lock_open:I

    goto :goto_1

    .line 464
    :cond_2
    :goto_0
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_lock:I

    :goto_1
    return p0
.end method

.method private getState()I
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 511
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-nez v1, :cond_2

    .line 516
    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needVerifyPwdAfterManuallyLocked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 520
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    .line 524
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 525
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthFailed()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 526
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBiometricLockoutAttemptDeadline()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isTrustedToUntrusted()Z
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastTrustState:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 832
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const-string p0, "LockIcon"

    const-string v0, "isTrustedToUntrusted, trusted to untrusted"

    .line 834
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private saveLastTrustState()V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastTrustState:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 827
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p0

    .line 826
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private updateClickability()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 427
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 428
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    .line 429
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 430
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    return-void
.end method

.method private updateDarkTint()V
    .locals 3

    .line 568
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isKeyguardIconShouldTint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 573
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 574
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 577
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlendColor:I

    .line 579
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->updateDarkTint(I)V

    :cond_1
    return-void
.end method

.method private updateLockIcon(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v10

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLockIcon, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "LockIcon"

    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v10, v12, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v13

    .line 676
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    .line 677
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v15

    .line 678
    iget v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/4 v9, 0x4

    if-ne v10, v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastBouncerVisible:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v9

    goto/16 :goto_9

    .line 680
    :cond_2
    :goto_1
    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    move-object v1, v15

    move/from16 v16, v3

    move v3, v10

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getAnimationOptions(IIZZZZZZ)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v1

    if-eqz v1, :cond_3

    move v2, v14

    goto :goto_2

    :cond_3
    move v2, v13

    :goto_2
    if-eqz v2, :cond_4

    .line 685
    new-instance v3, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    .line 689
    invoke-virtual {v15, v1, v10}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getIconForState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 690
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 691
    instance-of v4, v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    check-cast v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    goto :goto_4

    :cond_5
    move-object v1, v5

    .line 698
    :goto_4
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlock:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needVerifyPwdAfterManuallyLocked()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v1, "updateLockIcon, do nothing because of having unlock"

    .line 701
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v4, 0x4

    goto/16 :goto_8

    :cond_6
    const/4 v4, 0x3

    if-eqz v10, :cond_7

    if-ne v10, v4, :cond_8

    .line 705
    :cond_7
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 706
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSkippedCameraOccupiedError()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 708
    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mNoTransitionAnimNextTime:Z

    const-string v1, "updateLockIcon, do nothing because of retrying face check after the 1st camera occupied error"

    .line 709
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 712
    :cond_8
    iget v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/4 v7, 0x6

    if-ne v6, v12, :cond_a

    if-eqz v10, :cond_9

    if-ne v10, v4, :cond_a

    :cond_9
    const-string v1, "updateLockIcon, start face to padlock anim"

    .line 714
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    .line 716
    invoke-virtual {v15, v1, v7}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getTransitionAnimation(Landroid/content/Context;I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    move-result-object v1

    .line 717
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v2, v1, v3}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 718
    :cond_a
    iget v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/4 v8, 0x7

    if-eqz v6, :cond_b

    if-ne v6, v4, :cond_d

    :cond_b
    if-ne v10, v12, :cond_d

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 719
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceSleeping()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v1, "updateLockIcon, start padlock to face anim"

    .line 721
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mNoTransitionAnimNextTime:Z

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    .line 725
    invoke-virtual {v15, v1, v8}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getTransitionAnimation(Landroid/content/Context;I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    move-result-object v5

    .line 726
    :goto_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v1, v5, v3}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 727
    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mNoTransitionAnimNextTime:Z

    goto :goto_5

    :cond_d
    const/4 v4, 0x4

    if-ne v10, v4, :cond_f

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLockIcon, start face fail anim, isBouncer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 733
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v15, v1, v7}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getTransitionAnimation(Landroid/content/Context;I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 735
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v15, v1, v13}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getIconForState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 736
    invoke-virtual {v5, v13}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->getDuration(I)I

    move-result v2

    .line 735
    invoke-virtual {v5, v1, v2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 739
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v1, v3, v5}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 740
    :cond_f
    iget v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v6, v4, :cond_12

    if-ne v10, v12, :cond_12

    const-string v1, "updateLockIcon, start face fail to face anim"

    .line 741
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->isFirsDrawableRunning()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7

    .line 745
    :cond_10
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    .line 746
    invoke-virtual {v15, v1, v8}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getTransitionAnimation(Landroid/content/Context;I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    move-result-object v1

    .line 747
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v2, v1, v3}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 743
    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v1, v3, v5}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    :cond_12
    if-eqz v1, :cond_13

    .line 749
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_13

    if-ne v10, v12, :cond_13

    iget v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v1, v12, :cond_13

    const-string v1, "updateLockIcon, do nothing because of the looping face detecting anim"

    .line 752
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 753
    :cond_13
    iget v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-eq v1, v14, :cond_14

    if-ne v10, v14, :cond_14

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 754
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    .line 755
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "updateLockIcon, do unlock anim"

    .line 758
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v15, v2, v14}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getIconForState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 760
    :cond_14
    iget v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v1, v14, :cond_15

    if-nez v10, :cond_15

    const-string v1, "updateLockIcon, do lock anim"

    .line 763
    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v15, v2, v13}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getIconForState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 766
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLockIcon, setDrawable and start, isAnim="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAnimController:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-virtual {v1, v3, v5}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 770
    :goto_8
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v1, :cond_16

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_16
    if-ne v10, v14, :cond_17

    .line 775
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-eqz v1, :cond_17

    .line 776
    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlock:Z

    .line 781
    :cond_17
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateTipsWhenTrustChange()V

    .line 786
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    .line 788
    iput v10, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 789
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    .line 790
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    .line 791
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastBouncerVisible:Z

    .line 794
    :goto_9
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    if-eqz v1, :cond_1a

    :cond_19
    move v1, v14

    goto :goto_a

    :cond_1a
    move v1, v13

    :goto_a
    if-nez v1, :cond_1c

    .line 795
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-nez v2, :cond_1c

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    if-eqz v2, :cond_1b

    goto :goto_b

    :cond_1b
    move v14, v13

    .line 797
    :cond_1c
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", onAodNotPulsingOrDocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWakeAndUnlockRunning="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShowingLaunchAffordance="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_1d

    goto :goto_c

    :cond_1d
    move v4, v13

    .line 800
    :goto_c
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    return-void
.end method

.method private updateTipsWhenTrustChange()V
    .locals 4

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v1

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTipsWhenTrustChange, isTrusted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBiometricAuthenticationSucceeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 810
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardGoingAway="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 811
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isColorKeyguardLoad = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockIcon"

    .line 809
    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 815
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 816
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez v1, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v3, 0x7f1104a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f110422

    .line 819
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 818
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isTrustedToUntrusted()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 821
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->hideTips()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getBlendColor()I
    .locals 0

    .line 844
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlendColor:I

    return p0
.end method

.method public synthetic lambda$new$0$LockIcon()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public synthetic lambda$setPulsing$2$LockIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 550
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    return-void
.end method

.method public synthetic lambda$update$1$LockIcon(Z)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateLockIcon(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 281
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onAttachedToWindow()V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->onThemeChanged()V

    .line 294
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->onClickLockIcon(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    :cond_1
    return-void
.end method

.method public onBiometricAuthModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 647
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 337
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 338
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 339
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 340
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 345
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 346
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mNightMode:Z

    if-eq p1, v0, :cond_2

    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mNightMode:Z

    .line 348
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDefaultContext:Landroid/content/Context;

    .line 349
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    :cond_2
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 606
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 616
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 617
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 302
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->removeListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_0
    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 536
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    .line 561
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    .line 562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 436
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 440
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110103

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v0, :cond_1

    .line 449
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1100e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 623
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onScrimVisibilityChanged(I)V
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 666
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Z)V
    .locals 0

    .line 656
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0405d2

    aput v3, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 317
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    .line 318
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 1

    .line 632
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isTrustedToUntrusted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 633
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsUnlock:Z

    const/4 v0, 0x1

    .line 634
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :goto_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setBouncerVisible(Z)V
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 591
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 595
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->hideTips()V

    .line 597
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->setBouncerVisible(Z)V

    :cond_1
    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    .line 546
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    .line 547
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 548
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWasPulsingOnThisFrame:Z

    .line 549
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$AYs3-nJGZFTEathmqmvVEJTmQ5s;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$AYs3-nJGZFTEathmqmvVEJTmQ5s;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 11

    .line 361
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$1eBAfOpI_Q9EZHj-KkEVCcjEFaE;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$1eBAfOpI_Q9EZHj-KkEVCcjEFaE;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;Z)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v1, :cond_1

    move v1, v9

    goto :goto_0

    :cond_1
    move v1, v10

    .line 368
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    .line 369
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastBouncerVisible:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_5

    .line 371
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZZ)I

    .line 375
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(I)I

    move-result p1

    .line 376
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconRes:I

    if-eq p1, v1, :cond_4

    .line 377
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconRes:I

    .line 379
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 380
    instance-of v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 383
    :goto_1
    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 384
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz p1, :cond_4

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f1100e6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 407
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    .line 409
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 410
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDozing:Z

    .line 411
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastPulsing:Z

    .line 412
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastBouncerVisible:Z

    .line 415
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    if-eqz p1, :cond_7

    :cond_6
    move p1, v9

    goto :goto_2

    :cond_7
    move p1, v10

    :goto_2
    if-nez p1, :cond_9

    .line 416
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v9, v10

    :cond_9
    :goto_3
    if-eqz v9, :cond_a

    const/4 v10, 0x4

    .line 418
    :cond_a
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    return-void
.end method
