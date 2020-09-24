.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$PluginSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DozeSensors"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDebounceFrom:J

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field protected mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSettingRegistered:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v1, v10, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v10, v1}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p1

    .line 84
    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    .line 85
    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p3

    .line 86
    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v8, p4

    .line 87
    iput-object v8, v10, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v9, p5

    .line 88
    iput-object v9, v10, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v0, p6

    .line 89
    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move-object/from16 v0, p8

    .line 90
    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 91
    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    .line 93
    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v11

    const/4 v0, 0x7

    .line 94
    new-array v12, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x11

    .line 96
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x19

    .line 102
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 104
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v4

    const-string v3, "doze_pulse_on_pick_up"

    const/4 v5, 0x3

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    iput-object v13, v10, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v15, 0x1

    aput-object v13, v12, v15

    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 108
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 112
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->doubleTapReportsTouchCoordinates()Z

    move-result v6

    const-string v3, "doze_pulse_on_double_tap"

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v8, 0x2

    aput-object v13, v12, v8

    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 115
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_tap_gesture"

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x3

    aput-object v13, v12, v0

    new-instance v13, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 122
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_long_press"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v9, 0x1

    move-object v0, v13

    move v14, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V

    const/4 v0, 0x4

    aput-object v13, v12, v0

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v14}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 132
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v11, :cond_0

    move v4, v15

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "doze_wake_screen_gesture"

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v13, 0x6

    new-instance v14, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v15}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 139
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    move v4, v15

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 142
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    move-result-wide v8

    const-string v3, "doze_wake_screen_gesture"

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V

    aput-object v14, v12, v13

    iput-object v12, v10, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 145
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v1, p9

    invoke-direct {v0, v10, v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v0, p7

    .line 146
    iput-object v0, v10, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/DozeSensors;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 165
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 167
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method private registerSettingsObserverIfNeeded(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 245
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "  Sensor: "

    .line 228
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "  ProxSensor: "

    .line 230
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public ignoreTouchScreenSensorsSettingInterferingWithDocking(Z)V
    .locals 4

    .line 218
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 219
    iget-boolean v3, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {v2, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->ignoreSetting(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isProximityCurrentlyFar()Ljava/lang/Boolean;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onUserSwitched()V
    .locals 3

    .line 191
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 192
    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestTemporaryDisable()V
    .locals 2

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 176
    invoke-virtual {v3, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->registerSettingsObserverIfNeeded(Z)V

    return-void
.end method

.method public setProxListening(Z)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRequested(Z)V

    return-void
.end method

.method public setTouchscreenSensorsListening(Z)V
    .locals 4

    .line 183
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 184
    iget-boolean v3, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v2, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
