.class public Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockFillLightCtrl.java"


# static fields
.field private static final BLACK_MASK_MAX_ALPHA:F = 0.6f

.field private static final BLACK_MASK_MIN_ALPHA:F = 0.25f

.field private static final BRIGHTNESS_ANIM_DURATION:J = 0x7d0L

.field private static final FINGERPRINT_LOCATION_THRESHOLD:I = 0x177

.field private static final HIDE_FILLLIGHT_DELAY:I = 0x96

.field private static final LIGHT_UP_GAP:F = 0.0f

.field public static final MAX_SCREEN_BRIGHTNESS:F = 255.0f

.field private static final PROXIMITY_UP_GAP:F = 0.0f

.field private static final RECHECK_DURATION:I = 0x2710

.field public static final STATE_FILL_LIGHT_CANCELED:I = 0x0

.field public static final STATE_FILL_LIGHT_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyguardFaceUnlockFillLightCtrl"

.field private static final TARGET_BRIGHTNESS:F = 0.1f

.field public static final TYPE_FACE_FILL_LIGHT:I = 0x906

.field private static final USER_ACTION_INTERVAL_THRESHOLD:J = 0xfaL

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;


# instance fields
.field private mBlackMask:Landroid/widget/ImageView;

.field private mBrightnessAnim:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mFillLightState:I

.field private mHideFillLightTask:Ljava/lang/Runnable;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mRecheckTask:Ljava/lang/Runnable;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowFillLight:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mFillLightState:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUIHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$6-3GUnllyldoih3V9O987vYVbm4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$6-3GUnllyldoih3V9O987vYVbm4;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mRecheckTask:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockFillLightCtrl$i17lCQrgFcbfQkw8FpuHjR0-7R4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockFillLightCtrl$i17lCQrgFcbfQkw8FpuHjR0-7R4;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mHideFillLightTask:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 115
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 141
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mWindowManager:Landroid/view/WindowManager;

    .line 142
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->startFillLightControl()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mRecheckTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/view/WindowManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mFillLightState:I

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mHideFillLightTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->showFillLight()V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->hideFillLight()V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mShowFillLight:Z

    return p0
.end method

.method private canExecuteFillLight()Z
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockFillLightEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 358
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    const-string v2, "KeyguardFaceUnlockFillLightCtrl"

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowFpWhenBouncer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "canExecuteFillLight, in bouncer for no motor hardware"

    .line 362
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 368
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canExecuteFillLight, isFaceDetectionRunning="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isKeyguardShowing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isFaceAuthSucceed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private execInMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 377
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 378
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private getBrightnessAnim(FFJ)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 292
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 293
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 294
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    new-instance p2, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;
    .locals 2

    .line 147
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    if-nez v0, :cond_1

    .line 148
    const-class v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    .line 152
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 154
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->sInstance:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    return-object p0
.end method

.method private hideFillLight()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBrightnessAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBrightnessAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mShowFillLight:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v0, "KeyguardFaceUnlockFillLightCtrl"

    const-string v1, "hideFillLight"

    .line 320
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "remove view fails"

    .line 324
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mShowFillLight:Z

    return-void
.end method

.method public static synthetic lambda$i17lCQrgFcbfQkw8FpuHjR0-7R4(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->hideFillLight()V

    return-void
.end method

.method private registerSensorListener()V
    .locals 5

    .line 337
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->unregisterSensorListener()V

    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockFillLightCtrl"

    const-string v2, "registerSensorListener"

    .line 338
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/16 v2, 0x8

    .line 340
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    sget-object v3, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    .line 339
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 343
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x5

    .line 344
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    .line 343
    invoke-virtual {v0, p0, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method private showFillLight()V
    .locals 10

    .line 264
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mShowFillLight:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardFaceUnlockFillLightCtrl"

    const-string v1, "showFillLight"

    .line 267
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "add view fails"

    .line 271
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getBrightness(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get the actualBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v3, v1, v0

    const-wide/16 v4, 0x7d0

    if-gtz v3, :cond_1

    .line 278
    invoke-direct {p0, v1, v0, v4, v5}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->getBrightnessAnim(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBrightnessAnim:Landroid/animation/ValueAnimator;

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBlackMask:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-wide v6, 0x3fd8e38e60000000L    # 0.3888889253139496

    sub-float v0, v1, v0

    float-to-double v8, v0

    mul-double/2addr v8, v6

    double-to-float v0, v8

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 283
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBlackMask:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBlackMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 285
    invoke-direct {p0, v1, v1, v4, v5}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->getBrightnessAnim(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBrightnessAnim:Landroid/animation/ValueAnimator;

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBrightnessAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mShowFillLight:Z

    return-void
.end method

.method private startFillLightControl()V
    .locals 3

    .line 224
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->unregisterSensorListener()V

    .line 225
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->canExecuteFillLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockFillLightCtrl"

    const-string v2, "startFillLightControl"

    .line 226
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 227
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mFillLightState:I

    .line 228
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->updateFillLightView()V

    :cond_0
    return-void
.end method

.method private unregisterSensorListener()V
    .locals 3

    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockFillLightCtrl"

    const-string v2, "unregisterSensorListener"

    .line 350
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private updateFillLightView()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateLocation(Landroid/view/View;)V
    .locals 3

    :try_start_0
    const-string v0, "persist.vendor.fingerprint.optical.iconlocation"

    .line 192
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get iconlocation exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFaceUnlockFillLightCtrl"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x177

    if-lt v0, v1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 199
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0703ed

    .line 202
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0703ee

    .line 203
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v1

    .line 160
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result v0

    .line 162
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00ed

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    .line 163
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 165
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x31

    .line 166
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x2

    .line 167
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x906

    .line 168
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v0, "FaceUnlockFillLightView"

    .line 169
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    const v1, 0x7f0a02ff

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$3;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->updateLocation(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBlackMask:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBlackMask:Landroid/widget/ImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 186
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mBlackMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isShow()Z
    .locals 2

    .line 330
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mShowFillLight:Z

    :goto_0
    return v1
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->unregisterSensorListener()V

    .line 235
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->stopFillLightControl()V

    :cond_0
    return-void
.end method

.method public startListeningFillLight()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockFillLightEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockFillLightCtrl"

    const-string v2, "start listening fill light"

    .line 219
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->registerSensorListener()V

    return-void
.end method

.method public stopFillLightControl()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mView:Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceUnlockFillLightEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockFillLightCtrl"

    const-string v2, "stopFillLightControl"

    .line 251
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->mFillLightState:I

    .line 253
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->unregisterSensorListener()V

    .line 254
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->updateFillLightView()V

    return-void
.end method
