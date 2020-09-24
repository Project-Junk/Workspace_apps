.class public Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "WakeupScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeKeyguardSettingsObserver;,
        Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEYGUARD_NOTICE_WAKELOCK_STATE:Ljava/lang/String; = "keyguard_notice_wakelock_state"

.field private static final TAG:Ljava/lang/String; = "Notification--SensorHelper"

.field private static final ZEN_MODE_DEFAULT:I = 0x0

.field private static final ZEN_MODE_ON:I = 0x1

.field private static final ZEN_MODE_SCREEN_ON:I = 0x0

.field private static final ZEN_SUPPRESSED_EFFECT_KEY_GARD:Ljava/lang/String; = "zen_suppressed_effect_key_gard"


# instance fields
.field private mHasRegisteredSensor:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mZenModeKeyguardSettingsObserver:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeKeyguardSettingsObserver;

.field private mZenModeKeyguardStatus:I

.field private final mZenModeSettingsObserver:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;

.field private mZenModeStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 59
    new-instance p2, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;-><init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeSettingsObserver:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;

    .line 60
    new-instance p2, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeKeyguardSettingsObserver;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeKeyguardSettingsObserver;-><init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeKeyguardSettingsObserver:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeKeyguardSettingsObserver;

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mHasRegisteredSensor:Z

    .line 70
    new-instance v0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mResolver:Landroid/content/ContentResolver;

    .line 92
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "zen_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeStatus:I

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "zen_suppressed_effect_key_gard"

    invoke-static {p1, v2, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeKeyguardStatus:I

    .line 94
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 95
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeSettingsObserver:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeSettingsObserver;

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeKeyguardSettingsObserver:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$ZenModeKeyguardSettingsObserver;

    invoke-virtual {p1, v0, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->unregisterSensor()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeKeyguardStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeKeyguardStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private displayAod()Z
    .locals 3

    .line 219
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 221
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isOppoAodSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 223
    :try_start_0
    invoke-static {p0}, Lcom/color/compat/os/PowerManagerNative;->getDisplayAodStatus(Landroid/os/PowerManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    .line 228
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--isDisplayAod  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "Notification--SensorHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isNoticeWakeUpSwitchTurnedOn(Landroid/content/Context;)Z
    .locals 4

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "keyguard_notice_wakelock_state"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification--isNoticeWakeUpSwitchTurnedOn value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    const-string v3, "Notification--SensorHelper"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private registerSensor()V
    .locals 4

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mHasRegisteredSensor:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mHasRegisteredSensor:Z

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterSensor()V
    .locals 2

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mHasRegisteredSensor:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mHasRegisteredSensor:Z

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pokeWakeLock(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--pokeWakeLock sbn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification--SensorHelper"

    const-string v2, "Notification"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    .line 139
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getNotificationEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Notification--pokeWakeLock mNotificationData null"

    .line 146
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "Notification--pokeWakeLock entry null"

    .line 151
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->channel:Landroid/app/NotificationChannel;

    .line 157
    new-instance v5, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;

    invoke-direct {v5, p0, v0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-static {v2, v1, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    .line 166
    iget v5, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeStatus:I

    if-ne v5, v3, :cond_4

    .line 167
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 169
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mZenModeKeyguardStatus:I

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 171
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->isNoticeWakeUpSwitchTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 184
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "key_option_stow"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 186
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v3, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->shouldShowOnKeguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {v0}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->isLockDeadState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-nez v0, :cond_6

    const-string p1, "Notification--pokeWakeLock pass"

    .line 188
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isSupportUnderScreenProximity()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->displayAod()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Notification--wake up directly when proximate sensor under screen and AOD working"

    .line 190
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->powerOnScreen()V

    goto :goto_0

    .line 193
    :cond_5
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->registerSensor()V

    goto :goto_0

    :cond_6
    const-string v0, "Notification--pokeWakeLock not pass"

    .line 196
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;-><init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;Landroid/service/notification/StatusBarNotification;)V

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    :goto_0
    return-void

    :cond_7
    :goto_1
    const-string p0, "Notification--pokeWakeLock screenLifecycle not pass"

    .line 140
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public powerOnScreen()V
    .locals 3

    .line 102
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 103
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    :cond_0
    const-string v0, "Notification"

    const-string v1, "Notification--SensorHelper"

    const-string v2, "Notification--powerOnScreen, powerManager.wakeUp"

    .line 106
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    :goto_0
    return-void
.end method
