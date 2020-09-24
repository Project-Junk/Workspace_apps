.class public Lcom/android/internal/telephony/util/NotificationChannelController;
.super Ljava/lang/Object;
.source "NotificationChannelController.java"


# static fields
.field public static final CHANNEL_ID_ALERT:Ljava/lang/String; = "alert"

.field public static final CHANNEL_ID_CALL_FORWARD:Ljava/lang/String; = "callForward"

.field private static final CHANNEL_ID_MOBILE_DATA_ALERT_DEPRECATED:Ljava/lang/String; = "mobileDataAlert"

.field public static final CHANNEL_ID_MOBILE_DATA_STATUS:Ljava/lang/String; = "mobileDataAlertNew"

.field public static final CHANNEL_ID_SIM:Ljava/lang/String; = "sim"

.field public static final CHANNEL_ID_SMS:Ljava/lang/String; = "sms"

.field public static final CHANNEL_ID_VOICE_MAIL:Ljava/lang/String; = "voiceMail"

.field public static final CHANNEL_ID_WFC:Ljava/lang/String; = "wfc"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/android/internal/telephony/util/NotificationChannelController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController$1;-><init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    return-void
.end method

.method private static createAll(Landroid/content/Context;)V
    .locals 13

    .line 55
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x1040468

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "alert"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 59
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x5

    .line 60
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 64
    new-instance v3, Landroid/app/NotificationChannel;

    const v5, 0x1040467

    .line 66
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "mobileDataAlertNew"

    invoke-direct {v3, v7, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 69
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 71
    new-instance v5, Landroid/app/NotificationChannel;

    const v7, 0x104046f

    .line 73
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "sim"

    invoke-direct {v5, v8, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    .line 77
    invoke-virtual {v5, v7, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 79
    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/app/NotificationChannel;

    new-instance v9, Landroid/app/NotificationChannel;

    const v10, 0x104045f

    .line 82
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v11, "callForward"

    invoke-direct {v9, v11, v10, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Landroid/app/NotificationChannel;

    const v10, 0x1040470

    .line 85
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x4

    const-string v12, "sms"

    invoke-direct {v9, v12, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v9, v8, v1

    new-instance v1, Landroid/app/NotificationChannel;

    const v9, 0x1040477

    .line 88
    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const-string/jumbo v10, "wfc"

    invoke-direct {v1, v10, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v8, v6

    aput-object v0, v8, v2

    aput-object v3, v8, v11

    aput-object v5, v8, v4

    .line 80
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    const-string/jumbo v0, "voiceMail"

    .line 94
    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    :cond_0
    const-string v0, "mobileDataAlert"

    .line 99
    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 1

    .line 114
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 115
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method private static migrateVoicemailNotificationSettings(Landroid/content/Context;)V
    .locals 4

    .line 127
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x1040475

    .line 129
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "voiceMail"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 132
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 133
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    :cond_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x5

    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 137
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 138
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
