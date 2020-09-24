.class public Lcom/coloros/systemui/notification/helper/AdbHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "AdbHelper.java"


# static fields
.field private static final ACTION_CLOSE_ADB:Ljava/lang/String; = "com.oppo.intent.action.ACTION_CLOSE_ADB"

.field private static final Aging_TEST_PROPERTY:Ljava/lang/String; = "SPECIAL_OPPO_CONFIG"

.field private static final DELAY_TIME:J = 0x927c0L

.field private static final ENGINEER_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.adb.engineermode"

.field private static final FULL_LOG_PROPERTY:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final OPPO_FACTORY_MODE:Ljava/lang/String; = "ro.oppo.factory_mode"

.field private static final RELEASE_TYPE_PROPERTY:Ljava/lang/String; = "ro.build.release_type"

.field private static final TAG:Ljava/lang/String; = "AdbHelper"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 53
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isUsbCharge(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mUsbConnected:Z

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->initContentObserver()V

    .line 55
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->initAlarmReceiver()V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->restoreAlarmIfNeed()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/AdbHelper;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mUsbConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/notification/helper/AdbHelper;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/AdbHelper;Landroid/content/Context;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isUsbCharge(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isAdbEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private fullLogOn()Z
    .locals 3

    const-string p0, "persist.sys.assert.panic"

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is full log on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "AdbHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.ACTION_CLOSE_ADB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private initAlarmReceiver()V
    .locals 4

    .line 75
    new-instance v0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/AdbHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/AdbHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oppo.intent.action.ACTION_CLOSE_ADB"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private initContentObserver()V
    .locals 3

    .line 110
    new-instance v0, Lcom/coloros/systemui/notification/helper/AdbHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/notification/helper/AdbHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/AdbHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mObserver:Landroid/database/ContentObserver;

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    .line 126
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private isATOVersion()Z
    .locals 3

    const-string p0, "ro.oppo.factory_mode"

    const-string v0, "0"

    .line 213
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is ATO version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "AdbHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static isAdbEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isAgingTest()Z
    .locals 3

    const-string p0, "SPECIAL_OPPO_CONFIG"

    .line 219
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is Aging test: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "AdbHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private isDebugVersion()Z
    .locals 3

    const-string p0, "ro.build.release_type"

    const/4 v0, 0x0

    .line 195
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is release version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "AdbHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isEngineerMode()Z
    .locals 3

    const/4 p0, 0x1

    const-string v0, "persist.sys.adb.engineermode"

    .line 201
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 202
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is engineer mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "AdbHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private isUsbCharge(Landroid/content/Context;)Z
    .locals 4

    .line 60
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "AdbHelper"

    const-string v1, "Notification"

    if-nez p0, :cond_0

    const-string p0, "not get battery status"

    .line 64
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const/4 v2, -0x1

    const-string v3, "plugged"

    .line 67
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    const/4 p1, 0x1

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb charge:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method public cancelAutoCloseAlarm()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    const-string v1, "AdbHelper"

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p0, "cancel auto-close alarm"

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "context not init while canceling alarm"

    .line 160
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public closeAdb()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    const-string v1, "AdbHelper"

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->shouldNotAutoClose()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v2, "adb_enabled"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "close adb for time out"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "context not init while close adb"

    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public restoreAlarmIfNeed()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    const-string v1, "AdbHelper"

    const-string v2, "Notification"

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adb "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v4, "enabled"

    goto :goto_0

    :cond_0
    const-string v4, "disabled"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->setAutoCloseAlarm()V

    goto :goto_1

    :cond_1
    const-string p0, "AdbHelper not init"

    .line 232
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAutoCloseAlarm()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    const-string v1, "AdbHelper"

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->shouldNotAutoClose()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 141
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 142
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x2

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    add-long/2addr v3, v5

    .line 143
    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string p0, "set auto-close alarm"

    .line 146
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "context not init while settings alarm"

    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public shouldNotAutoClose()Z
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isDebugVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isEngineerMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->fullLogOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isAgingTest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->isATOVersion()Z

    move-result p0

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
