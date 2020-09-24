.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;
.super Ljava/lang/Object;
.source "OnScreenFingerprintAODShowMech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;
    }
.end annotation


# static fields
.field private static final ACTION_DETECT_SENSOR_TYPE:I = 0x1004c

.field private static final AMD_SENSOR_DELAY_WHILE_AOD_SHOW:I = 0xc8

.field private static final AMD_SENSOR_HIDE_ICON_DELAY_WHILE_AOD_ON:I = 0x64

.field private static final AMD_SENSOR_MOVING:F = 2.0f

.field private static final AMD_SENSOR_TYPE:I = 0x1fa2652

.field private static final AMD_SENSOR_WAKE_LOCK_HOLD_ON:I = 0x12c

.field private static final AOD_ENABLE_IMMEDIATE:Ljava/lang/String; = "Setting_AodEnableImmediate"

.field private static final DALEY_RATE_DURATION:F = 1.3f

.field private static final KEY_SHOW_FINGERPRINT_IN_SCREEN_OFF:Ljava/lang/String; = "show_fingerprint_when_screen_off"

.field private static final PROXIMITY_SENSOR_ACQUIRE_WAKELOCK_WHILE_AOD_ON:I = 0x1388

.field private static final PROXIMITY_SENSOR_DELAY_WHILE_AOD_ON:I = 0xfa0

.field private static final PROXIMITY_SENSOR_DELAY_WHILE_AOD_SHOW:I = 0x1f4

.field private static final REGISTER_SENSOR_DELAY_WHILE_AOD_ON:I = 0x3e8

.field private static final REGISTER_SENSOR_NO_DELAY_WHILE_AOD_ON:I = 0x0

.field private static final STATE_HIDE:I = 0x0

.field private static final STATE_SHOW:I = 0x1

.field private static final STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OnScreenFingerprintAODShowMech"

.field private static sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

.field private static sWorkerHandler:Landroid/os/Handler;

.field private static sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAMDSensorListener:Landroid/hardware/SensorEventListener;

.field private mAODClockSwitchOn:Z

.field private mContext:Landroid/content/Context;

.field private mDetecting:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideTask:Ljava/lang/Runnable;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionMoving:Z

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNotifyAodClockRunnable:Ljava/lang/Runnable;

.field private mNotifyAodMoveRunnable:Ljava/lang/Runnable;

.field private mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

.field private mProxSensorListener:Landroid/hardware/SensorEventListener;

.field private mProxSensorRegistered:Z

.field private mProximityNear:Z

.field private mRealHideRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowInAOD:I

.field private mShowInScreenOff:Z

.field private mShowInScreenOffObserver:Landroid/database/ContentObserver;

.field private mStartTask:Ljava/lang/Runnable;

.field private mStopTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OnScreenFingerprintAODShowMech"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerThread:Landroid/os/HandlerThread;

    .line 77
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProxSensorListener:Landroid/hardware/SensorEventListener;

    .line 131
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$2;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mNotifyAodClockRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$3;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mNotifyAodMoveRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$4;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mHideTask:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$5;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAMDSensorListener:Landroid/hardware/SensorEventListener;

    .line 189
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$6;

    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$6;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInScreenOffObserver:Landroid/database/ContentObserver;

    .line 203
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$7;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$7;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStartTask:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$8;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$8;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStopTask:Ljava/lang/Runnable;

    .line 217
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mSensorManager:Landroid/hardware/SensorManager;

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->getMotionSensorType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mMotionSensor:Landroid/hardware/Sensor;

    .line 220
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->handleAODClockSwitchChange()V

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodEnableImmediate"

    .line 222
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInScreenOffObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 221
    invoke-static {v0, v1, v3, v2, v4}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 224
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    .line 225
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProximityNear:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->show()V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProximityNear:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->handleAODClockSwitchChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->startImpl()V

    return-void
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->stopImpl()V

    return-void
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->cancelRealHideRunnable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->realHide(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mNotifyAodClockRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->notifyAODClock(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mMotionMoving:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mMotionMoving:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->hide(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAODClockSwitchOn:Z

    return p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mNotifyAodMoveRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mHideTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    .line 42
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelRealHideRunnable()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mRealHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mRealHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getDelayForRegisterSensor()J
    .locals 2

    .line 277
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isTpProximitySensor()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;
    .locals 2

    const-class v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    .line 200
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMotionSensorType()I
    .locals 4

    const-string p0, "getMotionSensorType "

    const-string v0, "OnScreenFingerprintAODShowMech"

    .line 230
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPlatformMtk()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "android.hardware.Sensor"

    .line 234
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TYPE_OPPO_AMD"

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const p0, 0x1004c

    return p0

    :cond_0
    const p0, 0x1fa2652

    return p0
.end method

.method private handleAODClockSwitchChange()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Setting_AodEnableImmediate"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 446
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAODClockSwitchOn:Z

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAODClockSwitchChange val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAODClockSwitchOn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAODClockSwitchOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintAODShowMech"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hide(Z)V
    .locals 3

    .line 354
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    if-nez v0, :cond_1

    return-void

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInScreenOff:Z

    const-string v1, "OnScreenFingerprintAODShowMech"

    if-nez v0, :cond_2

    const-string p0, "show: return for not show fingerprint when screen off "

    .line 361
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide triggerByPSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Keyguard"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    if-eqz v0, :cond_4

    .line 368
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mRealHideRunnable:Ljava/lang/Runnable;

    .line 375
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 376
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mRealHideRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->startFadeOutAnimation()V

    .line 379
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mRealHideRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    .line 380
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getFadeOutAnimTime()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr p0, v1

    float-to-long v1, p0

    .line 379
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private notifyAODClock(Z)V
    .locals 1

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyAODClock state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnScreenFingerprintAODShowMech"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->setAodNearState(I)V

    return-void
.end method

.method private realHide(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;

    .line 410
    invoke-interface {v1, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;->setVisibilityInAOD(I)V

    goto :goto_1

    .line 412
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerProximitySensor()V
    .locals 4

    .line 425
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAODClockSwitchOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProxSensorRegistered:Z

    if-nez v0, :cond_0

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintAODShowMech"

    const-string v2, "registerProximitySensor"

    .line 426
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProxSensorRegistered:Z

    .line 428
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProxSensorListener:Landroid/hardware/SensorEventListener;

    const/16 v1, 0x8

    .line 429
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    .line 428
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_0
    return-void
.end method

.method private show()V
    .locals 3

    .line 332
    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInScreenOff:Z

    if-nez v0, :cond_2

    const-string p0, "OnScreenFingerprintAODShowMech"

    const-string v0, "show: return for show_fingerprint_when_screen_off "

    .line 339
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 342
    :cond_2
    iput v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintAODShowMech"

    const-string v2, "show"

    .line 343
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->cancelRealHideRunnable()V

    .line 345
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopFadeOutAnimation()V

    .line 346
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;

    const/4 v2, 0x0

    .line 348
    invoke-interface {v1, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;->setVisibilityInAOD(I)V

    goto :goto_0

    .line 350
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startImpl()V
    .locals 6

    .line 292
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    const-string v1, "OnScreenFingerprintAODShowMech"

    const-string v2, "Keyguard"

    const-string v3, "start"

    .line 296
    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 297
    iput v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    .line 298
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "show_fingerprint_when_screen_off"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInScreenOff:Z

    .line 299
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->skipDrawAsPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 303
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAMDSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    sget-object v4, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 305
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->registerProximitySensor()V

    goto :goto_1

    :cond_3
    const-string p0, "can not get AMD-Motion-Sensor"

    .line 307
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private stopImpl()V
    .locals 4

    .line 319
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    const-string v1, "Keyguard"

    const-string v2, "OnScreenFingerprintAODShowMech"

    const-string v3, "stop"

    .line 323
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 324
    iput v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    .line 325
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->cancelRealHideRunnable()V

    .line 326
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mMotionMoving:Z

    .line 327
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAMDSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 328
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->unregisterProximitySensor()V

    return-void
.end method

.method private unregisterProximitySensor()V
    .locals 3

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintAODShowMech"

    const-string v2, "unregisterProximitySensor"

    .line 435
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProxSensorRegistered:Z

    .line 437
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mProxSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 438
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/common/AodManager;->setOnNearState(Z)V

    .line 439
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mNotifyAodClockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->hasCallbacksInWorkThread(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mNotifyAodClockRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->removeCallbacksInWorkThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doNotShowInAOD()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mDetecting:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mShowInAOD:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public execRealHide()Z
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mRealHideRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 393
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected registerListener(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;

    if-ne v2, p1, :cond_1

    .line 260
    monitor-exit v0

    return-void

    .line 263
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected start()V
    .locals 4

    .line 285
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStartTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStartTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->getDelayForRegisterSensor()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected stop()V
    .locals 2

    .line 312
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->sWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mStartTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected unregisterListener(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$OnScreenFingerprintAODShowMechListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAODClockClient(Z)V
    .locals 1

    .line 416
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->mAODClockSwitchOn:Z

    if-eqz p0, :cond_1

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAODClockClient connect="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Keyguard"

    const-string v0, "OnScreenFingerprintAODShowMech"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
