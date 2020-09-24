.class public Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;
.super Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;
.source "KeyguardFaceUnlockHelper.java"


# static fields
.field public static final FACEUNLOCK_TIPS_CAMERA_ERROR:I = 0x3

.field public static final FACEUNLOCK_TIPS_CAMERA_OCCUPIED:I = 0x1

.field public static final FACEUNLOCK_TIPS_FACEUNLOCK_NOT_AVAILABLE:I = 0x2

.field public static final FACEUNLOCK_TIPS_NO_SHOW:I = 0x0

.field public static final FACE_DETECT_TIMEOUT_THRESHOLD:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardFaceUnlockHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

.field private static sMainHandler:Landroid/os/Handler;


# instance fields
.field private mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

.field private mContext:Landroid/content/Context;

.field private mCurrentFaceTipsStatus:I

.field private mExternallyEnabled:Z

.field private mFaceFailCode:I

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceStartType:I

.field private mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

.field private mFillLightCtrl:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

.field private mIsOccluded:Z

.field private mIsUnExecuteBySkipBouncer:Z

.field private mPendingShowBouncer:Z

.field private mPowerOff:Z

.field private mPowerOn:Z

.field private mShowFrontCameraAnim:Z

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCurrentFaceTipsStatus:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceStartType:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mShowFrontCameraAnim:Z

    .line 63
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mExternallyEnabled:Z

    .line 71
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    .line 103
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardFaceUnlockHelper"

    const-string p1, "KeyguardFaceUnlockHelper, not support face unlock!"

    .line 104
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 109
    new-instance v0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockHelper$1D1d5admMFTZ7EjTDr9qr-kM5eQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockHelper$1D1d5admMFTZ7EjTDr9qr-kM5eQ;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->execInMainThread(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "face"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFillLightCtrl:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;
    .locals 2

    .line 91
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    if-nez v0, :cond_1

    .line 92
    const-class v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    .line 96
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 98
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    return-object p0
.end method

.method private startFillLightControl()V
    .locals 1

    .line 225
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockInScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "KeyguardFaceUnlockHelper"

    const-string v0, "combine unlock in screen off, not starting"

    .line 230
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFillLightCtrl:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->startListeningFillLight()V

    return-void
.end method


# virtual methods
.method public canExecuteFaceUnlock()Z
    .locals 5

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setIsUnExecuteBySkipBouncer(Z)V

    .line 159
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v1

    const-string v2, "KeyguardFaceUnlockHelper"

    if-nez v1, :cond_0

    const-string p0, "canExecuteFaceUnlock, not support face unlock!"

    .line 160
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 163
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->isLockDeadState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "canExecuteFaceUnlock, isLockDeadState return"

    .line 164
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerify()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "canExecuteFaceUnlock, need verify password"

    .line 169
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockEnable()Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "canExecuteFaceUnlock, not enable"

    .line 173
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "canExecuteFaceUnlock, sim pin secure"

    .line 177
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldBiometricLockoutAttemptDeadline()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p0, "canExecuteFaceUnlock, lock out"

    .line 181
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 184
    :cond_5
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerifyPwdWhenSysRebooted()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string p0, "canExecuteFaceUnlock, unlocking with biometric not allowed"

    .line 186
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 189
    :cond_7
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 190
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const-string v1, "canExecuteFaceUnlock, user can skip bouncer"

    .line 191
    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setIsUnExecuteBySkipBouncer(Z)V

    return v0

    .line 197
    :cond_8
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "canExecuteFaceUnlock, current user has trust"

    .line 198
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 201
    :cond_9
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "canExecuteFaceUnlock, in children mode"

    .line 202
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 205
    :cond_a
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mIsOccluded:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockRunning()Z

    move-result v1

    if-nez v1, :cond_b

    const-string p0, "canExecuteFaceUnlock, in occluded but not in bouncer"

    .line 206
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 209
    :cond_b
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mIsOccluded:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isHasWakingUp()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string p0, "canExecuteFaceUnlock, in occluded and not wakeup"

    .line 210
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 213
    :cond_c
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPendingShowBouncer:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, "canExecuteFaceUnlock, show bouncer from sleeping to wake up"

    .line 214
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 217
    :cond_d
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mExternallyEnabled:Z

    if-nez v1, :cond_e

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "canExecuteFaceUnlock, not start because externally disabled"

    .line 218
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e
    return v4
.end method

.method public canShowFrontCameraAnim()Z
    .locals 2

    .line 492
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mShowFrontCameraAnim:Z

    const/4 v1, 0x1

    .line 493
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mShowFrontCameraAnim:Z

    return v0
.end method

.method public getFaceErrorTips()Ljava/lang/String;
    .locals 2

    .line 396
    iget v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCurrentFaceTipsStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 398
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f110409

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f11040b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 402
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f11040a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsUnExecuteBySkipBouncer()Z
    .locals 0

    .line 469
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mIsUnExecuteBySkipBouncer:Z

    return p0
.end method

.method public getPowerOff()Z
    .locals 0

    .line 422
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOff:Z

    return p0
.end method

.method public hideFaceTips()V
    .locals 1

    .line 387
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->hideTips()V

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCurrentFaceTipsStatus:I

    return-void
.end method

.method public isFaceAuthStayOnKeyguard()Z
    .locals 2

    .line 502
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_1

    return v1

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockStayOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 509
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 510
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceStartType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public synthetic lambda$new$0$KeyguardFaceUnlockHelper()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public synthetic lambda$setOccluded$1$KeyguardFaceUnlockHelper()V
    .locals 1

    .line 449
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    return-void
.end method

.method public synthetic lambda$setOccluded$2$KeyguardFaceUnlockHelper()V
    .locals 1

    .line 460
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFaceUnlock(I)V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 280
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p1, v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 290
    :cond_1
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 293
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEvent(Landroid/content/Context;I)V

    .line 294
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEventWhileFillLight(Landroid/content/Context;ZI)V

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->stopFillLightControl()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 269
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, p1, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEventWhileFillLight(Landroid/content/Context;ZI)V

    .line 273
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->stopFillLightControl()V

    :cond_1
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 301
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 305
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x9

    .line 306
    iput p2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 308
    iput p2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 311
    iput p2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    :cond_3
    :goto_0
    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    .line 314
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    if-eqz p1, :cond_4

    .line 315
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 316
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEvent(Landroid/content/Context;I)V

    .line 317
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    iget p3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEventWhileFillLight(Landroid/content/Context;ZI)V

    .line 319
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getPowerOff()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSkippedCameraOccupiedError()Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->stopFillLightControl()V

    :cond_5
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 326
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    const/16 p3, 0x6a

    if-eq p1, p3, :cond_2

    const/16 p3, 0x73

    if-eq p1, p3, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x7

    .line 372
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xc

    .line 360
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb

    .line 356
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa

    .line 352
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x5

    .line 340
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    .line 336
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    .line 344
    :pswitch_5
    iput p2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    .line 364
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 348
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :cond_3
    const/16 p1, 0xe

    .line 368
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 332
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 256
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockFillLightEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 262
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFillLightCtrl:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    if-eqz p0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->onScreenTurnedOff()V

    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setPowerOn(Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->setPowerOff(Z)V

    return-void
.end method

.method public removeFaceTimeoutDetect()V
    .locals 1

    .line 149
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIsUnExecuteBySkipBouncer(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mIsUnExecuteBySkipBouncer:Z

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mExternallyEnabled:Z

    return-void
.end method

.method public setOccluded(Z)V
    .locals 2

    .line 430
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    const-string v1, "KeyguardFaceUnlockHelper"

    if-nez v0, :cond_0

    const-string p0, "setOccluded, not support face unlock!"

    .line 431
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 434
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mIsOccluded:Z

    if-nez p1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isHasWakingUp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 443
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isAlarmExitOnKgd()Z

    move-result p1

    .line 446
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 447
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const-string p1, "StartListeningForFace due to occluded change to false for not support motor hardware"

    .line 448
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance p1, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockHelper$cMXyxTe3vmE-e0NWmPSCE2Y4XdM;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockHelper$cMXyxTe3vmE-e0NWmPSCE2Y4XdM;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->setAlarmExitOnKgdValue(Z)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockByScreenOn()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOn:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isHasWakingUp()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "StartListeningForFace due to occluded change to false when PowerOff-To-PowerOn quickly"

    .line 459
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance p1, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockHelper$gxcv7fPf3pdNAFwz5ewGGXQoPRI;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockHelper$gxcv7fPf3pdNAFwz5ewGGXQoPRI;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPendingShowBouncer(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPendingShowBouncer:Z

    return-void
.end method

.method public setPowerOff(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOff:Z

    .line 416
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOff:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOn:Z

    :cond_0
    return-void
.end method

.method public setPowerOn(Z)V
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOn:Z

    .line 409
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOn:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 410
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mPowerOff:Z

    :cond_0
    return-void
.end method

.method public setShowFrontCameraAnim(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mShowFrontCameraAnim:Z

    return-void
.end method

.method public showFaceTips(I)V
    .locals 2

    .line 378
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFaceTips(), status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFaceUnlockHelper"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCurrentFaceTipsStatus:I

    .line 383
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getFaceErrorTips()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->showTips(Ljava/lang/String;)V

    return-void
.end method

.method public startFaceAuth(I)V
    .locals 3

    .line 120
    iput p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceStartType:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->resetCombineUnlockRunningState()V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->resetCombineUnlockInScreenOffState()V

    :cond_0
    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceFailCode:I

    .line 126
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->startFillLightControl()V

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->upMotor()V

    .line 129
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->hideFaceTips()V

    .line 130
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->startFaceTimeoutDetect()V

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockStartEvent(Landroid/content/Context;I)V

    return-void
.end method

.method public startFaceTimeoutDetect()V
    .locals 3

    .line 135
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mCombineUnlockMediator:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->setStartFaceTimeoutDetectStamp(J)V

    .line 144
    :cond_1
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startFaceTimeoutDetectWithDelay(J)V
    .locals 2

    .line 480
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->sMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFaceTimeoutDetectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public stopFillLightControl()V
    .locals 1

    .line 237
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock3dSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->mFillLightCtrl:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->stopFillLightControl()V

    :cond_1
    :goto_0
    return-void
.end method
