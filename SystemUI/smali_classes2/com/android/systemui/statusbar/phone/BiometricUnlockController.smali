.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BiometricUnlockController.java"


# static fields
.field private static final BIOMETRIC_COLLAPSE_SPEEDUP_FACTOR:F = 1.1f

.field private static final BIOMETRIC_WAKELOCK_TIMEOUT_MS:J = 0x3a98L

.field private static final BIOMETRIC_WAKE_LOCK_NAME:Ljava/lang/String; = "wake-and-unlock wakelock"

.field private static final DEBUG_BIO_WAKELOCK:Z = true

.field private static final FINGERPRINT_FAILS_TO_SHOW_BOUNCER_ATTEMPTS:I = 0x4

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field public static final MODE_DISMISS_BOUNCER:I = 0x6

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_ONLY_WAKE:I = 0x4

.field public static final MODE_SHOW_BOUNCER:I = 0x3

.field public static final MODE_UNLOCK:I = 0x5

.field public static final MODE_WAKE_AND_UNLOCK:I = 0x1

.field public static final MODE_WAKE_AND_UNLOCK_FROM_DREAM:I = 0x7

.field public static final MODE_WAKE_AND_UNLOCK_PULSING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BiometricUnlockController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private final mFaceDismissedKeyguardTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field protected mFaceDismissesKeyguard:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFaceDismissesKeyguardByDefault:Z

.field private mFadedAwayAfterWakeAndUnlock:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mLastFailAttempts:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMode:I

.field private mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private mPendingAuthenticatedUserId:I

.field private mPendingShowBouncer:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeUpDelay:I

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/tuner/TunerService;)V
    .locals 14

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_integer_config_wakeUpDelayDoze:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 174
    invoke-direct/range {v2 .. v13}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/tuner/TunerService;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/tuner/TunerService;IZ)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 154
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFaceDismissedKeyguardTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 164
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 217
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    .line 586
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 596
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 193
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 194
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 196
    const-class p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 197
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p8}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 198
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, p8}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 199
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 200
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 201
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 202
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 203
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 204
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 205
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    .line 206
    iput p10, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    .line 207
    iput-boolean p11, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFaceDismissesKeyguardByDefault:Z

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFaceDismissedKeyguardTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string p1, "face_unlock_dismisses_keyguard"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFaceDismissesKeyguardByDefault:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 7

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v1

    .line 463
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 464
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 465
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 467
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShownSoon()Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_0
    move p1, v4

    goto :goto_1

    .line 469
    :cond_1
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFaceDismissesKeyguard:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 473
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateMode, unlockingAllowed="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",deviceDreaming="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isDeviceInteractive="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 474
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isBouncerShownSoon="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShownSoon()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BiometricUnlockController"

    .line 473
    invoke-static {v5, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-nez v2, :cond_7

    .line 477
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    return v6

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    :goto_2
    return v4

    :cond_4
    if-nez v0, :cond_6

    .line 481
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    return v5

    :cond_6
    :goto_3
    return v3

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    const/4 p0, 0x7

    return p0

    .line 490
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 492
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerPartiallyVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    if-eqz v0, :cond_a

    const/4 p0, 0x6

    return p0

    :cond_a
    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x5

    :goto_4
    return v6

    .line 497
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    if-nez p0, :cond_d

    return v5

    :cond_d
    return v4
.end method

.method private cleanup()V
    .locals 0

    .line 556
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method private collectDataOfFingerprintWakeup()V
    .locals 3

    .line 701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 703
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "fingerprint_unlock_wakeup"

    .line 702
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint_unlock"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private pulsingOrAod()Z
    .locals 1

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    .line 266
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private releaseBiometricWakeLock()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "BiometricUnlockController"

    const-string v1, "releasing biometric wakelock"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resetMode()V
    .locals 2

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 579
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceDozeBrightness(Z)V

    .line 580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 583
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    return-void
.end method

.method private showBouncer()V
    .locals 3

    .line 414
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 419
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return-void
.end method

.method private showBouncerByFace()V
    .locals 5

    .line 687
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceFailedAttempts()I

    move-result v0

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    :cond_2
    return-void
.end method

.method private showBouncerByFingerprint()V
    .locals 9

    .line 658
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpFailedAttempts()I

    move-result v0

    .line 662
    rem-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 663
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpLockoutAttemptDeadline()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFailAttempts:I

    if-eq v0, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_6

    .line 666
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 667
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    .line 669
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 675
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowFpWhenBouncer()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v2, "wakeUpByFingerprint and show bouncer"

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFingerprint(Ljava/lang/String;)V

    .line 680
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->collectDataOfFingerprintWakeup()V

    .line 683
    :cond_6
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFailAttempts:I

    return-void
.end method

.method private toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 1

    .line 643
    sget-object p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$6;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, " BiometricUnlockController:"

    .line 609
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   mMode="

    .line 610
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   mWakeLock="

    .line 611
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    return-void
.end method

.method public getMode()I
    .locals 0

    .line 451
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    return p0
.end method

.method public hasPendingAuthentication()Z
    .locals 2

    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 446
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    .line 447
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasScreenTurnedOnSinceAuthenticating()Z
    .locals 0

    .line 605
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p0
.end method

.method public isBiometricUnlock()Z
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWakeAndUnlock()Z
    .locals 2

    .line 618
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$onFinishedGoingToSleep$1$BiometricUnlockController(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public synthetic lambda$startWakeAndUnlock$0$BiometricUnlockController(ZZ)V
    .locals 4

    const-string v0, "android.policy:BIOMETRIC"

    const/4 v1, 0x4

    const-string v2, "BiometricUnlockController"

    if-nez p1, :cond_0

    const-string p1, "bio wakelock: Authenticated, waking up..."

    .line 308
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 316
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 317
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz p1, :cond_1

    const-string p1, "wake up from dreaming"

    .line 319
    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 327
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_2

    .line 328
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz p1, :cond_2

    const-string p1, "wake up from screen is not on"

    .line 330
    invoke-static {v2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 336
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    :cond_3
    const-string p1, "release wake-and-unlock"

    .line 338
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 340
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    const-string v0, "BiometricUnlockController#onBiometricAcquired"

    .line 240
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 245
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x6

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "wake-and-unlock wakelock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "acquiring wake-and-unlock"

    .line 252
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 254
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "BiometricUnlockController"

    const-string v0, "biometric acquired, grabbing biometric wakelock"

    .line 256
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xb

    .line 507
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIgnoreKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 512
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthSucceed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    .line 521
    :cond_1
    :goto_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_2

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncerByFingerprint()V

    .line 525
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    const-string v0, "BiometricUnlockController#onBiometricAuthenticated"

    .line 272
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    .line 275
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 276
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateShortWhenVerify()V

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xa

    .line 284
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 283
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 285
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 531
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xf

    .line 532
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 533
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6cd

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 531
    invoke-virtual {p2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 536
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result p2

    const/4 v0, 0x7

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result p2

    if-nez p2, :cond_1

    if-eq p1, v0, :cond_0

    if-ne p1, v0, :cond_1

    .line 538
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerifyFail()V

    .line 543
    :cond_1
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_2

    if-ne p1, v0, :cond_2

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncerByFingerprint()V

    .line 547
    :cond_2
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_3

    if-ne p1, v0, :cond_3

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncerByFace()V

    .line 552
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 4

    const-string p1, "BiometricUnlockController#onFinishedGoingToSleep"

    .line 432
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 434
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vuxdlMXJFOLKBJ7XnmJEfPu__e4;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vuxdlMXJFOLKBJ7XnmJEfPu__e4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ILandroid/hardware/biometrics/BiometricSourceType;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 p1, 0x0

    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 441
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    const/4 p1, 0x0

    .line 425
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    const/4 p1, -0x1

    .line 426
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedUserId:I

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWakeAndUnlock(I)V
    .locals 7

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWakeAndUnlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 292
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    .line 293
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    .line 294
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->pulsingOrAod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceDozeBrightness(Z)V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-ne p1, v4, :cond_1

    if-eqz v2, :cond_1

    .line 304
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    if-lez p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v1

    .line 305
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZZ)V

    if-nez p1, :cond_2

    .line 344
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 346
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq v5, v4, :cond_8

    if-eq v5, v3, :cond_8

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    const/4 v0, 0x6

    if-eq v5, v0, :cond_3

    const/4 v0, 0x7

    if-eq v5, v0, :cond_8

    goto/16 :goto_4

    :cond_3
    const-string p1, "MODE_DISMISS"

    .line 348
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 351
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    .line 356
    :cond_4
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 357
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    goto/16 :goto_4

    :cond_5
    const-string p1, "MODE_UNLOCK or MODE_SHOW_BOUNCER"

    .line 362
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_6

    .line 364
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    .line 367
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 375
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p1

    if-nez p1, :cond_7

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    .line 379
    :cond_7
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    .line 384
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne v0, v3, :cond_9

    const-string v0, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 385
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    goto :goto_2

    :cond_9
    if-ne v0, v4, :cond_a

    const-string v0, "MODE_WAKE_AND_UNLOCK"

    .line 389
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 391
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    .line 394
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    if-eqz p1, :cond_b

    .line 396
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 398
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 400
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 401
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 403
    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 409
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    .line 410
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public unlockedByWakeAndUnlock()Z
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
