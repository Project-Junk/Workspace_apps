.class public Lcom/coloros/systemui/notification/helper/OtgHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "OtgHelper.java"


# static fields
.field private static final ACTION_CLOSE_OTG:Ljava/lang/String; = "com.oppo.intent.action.ACTION_CLOSE_OTG"

.field private static final DELAY_TIME:J = 0x927c0L

.field public static final OTG_STATE_PATH:Ljava/lang/String; = "/sys/class/power_supply/usb/otg_online"

.field public static final OTG_STATE_UNDEFINE:I = -0x1

.field public static final OTG_STATE_UNUSED:I = 0x0

.field public static final OTG_STATE_USED:I = 0x1

.field private static final OTG_SUPPORT:Ljava/lang/String; = "sys.oppo.otg_support"

.field private static final OTG_SUPPORT_PROPERTY:Ljava/lang/String; = "persist.vendor.otg.switch"

.field private static final TAG:Ljava/lang/String; = "OtgHelper"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/OtgHelper;->initContentObserver()V

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/OtgHelper;->initAlarmReceiver()V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/OtgHelper;->restoreAlarmIfNeed()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->isOnFromProperty()Z

    move-result v0

    return v0
.end method

.method public static cancelAutoCloseAlarm()V
    .locals 4

    .line 122
    sget-object v0, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    const-string v1, "OtgHelper"

    const-string v2, "SystemUi--"

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "cancel auto-close alarm!"

    .line 125
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "context not init while cancelling alarm"

    .line 127
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .line 132
    sget-object v0, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method public static getOtgState()I
    .locals 2

    const-string v0, "/sys/class/power_supply/usb/otg_online"

    .line 191
    invoke-static {v0}, Lcom/coloros/systemui/notification/helper/OtgHelper;->readDriverNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 136
    sget-object v0, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.ACTION_CLOSE_OTG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "OtgHelper"

    const-string v1, "context not init while getting PendingIntent"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SystemUi--"

    const-string v2, "context not init while cancelling alarm"

    .line 142
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private initAlarmReceiver()V
    .locals 4

    .line 65
    new-instance v0, Lcom/coloros/systemui/notification/helper/OtgHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/OtgHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/OtgHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oppo.intent.action.ACTION_CLOSE_OTG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private initContentObserver()V
    .locals 3

    .line 87
    new-instance v0, Lcom/coloros/systemui/notification/helper/OtgHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/notification/helper/OtgHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/OtgHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->mObserver:Landroid/database/ContentObserver;

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys.oppo.otg_support"

    .line 102
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static isOnFromProperty()Z
    .locals 2

    const-string v0, "persist.vendor.otg.switch"

    const/4 v1, 0x0

    .line 165
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readDriverNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "bufclose_IOException_e = "

    const-string v1, "OtgHelper"

    const-string v2, "SystemUi--"

    const/4 v3, 0x0

    .line 172
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v4, v3

    .line 177
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException_e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    .line 181
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_5
    move-exception p0

    move-object v4, v3

    .line 175
    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException_e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_0

    .line 181
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception p0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_3
    return-object v3

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v4, :cond_1

    .line 181
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v3

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    :goto_5
    throw p0
.end method

.method public static setAutoCloseAlarm()V
    .locals 9

    .line 108
    sget-object v0, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    const-string v1, "OtgHelper"

    const-string v2, "SystemUi--"

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 111
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x2

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x927c0

    add-long/2addr v5, v7

    .line 112
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string v0, "set auto-close alarm!"

    .line 115
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "context not init while setting alarm"

    .line 117
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeOtg()V
    .locals 4

    .line 148
    sget-object p0, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    const-string v0, "OtgHelper"

    const-string v1, "SystemUi--"

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 149
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.vendor.otg.switch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v2, Lcom/coloros/systemui/notification/helper/OtgHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sys.oppo.otg_support"

    invoke-static {v2, v3, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "close otg for time out"

    .line 151
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "context not init while close otg"

    .line 153
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public restoreAlarmIfNeed()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->isOnFromProperty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SystemUi--"

    const-string v0, "OtgHelper"

    const-string v1, "restoreAlarm"

    .line 159
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->setAutoCloseAlarm()V

    :cond_0
    return-void
.end method
