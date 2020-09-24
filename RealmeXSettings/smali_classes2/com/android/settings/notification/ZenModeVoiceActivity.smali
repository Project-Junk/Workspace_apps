.class public Lcom/android/settings/notification/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/f;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/utils/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 12

    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ZenModeVoiceActivity"

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    const/4 v1, -0x1

    const-string v4, "android.settings.extra.do_not_disturb_mode_minutes"

    .line 57
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 61
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v0, :cond_1

    if-lez v4, :cond_0

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v4, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    move-object v7, v0

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v3

    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_2

    .line 1106
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v7, v7, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 1108
    :cond_2
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_2
    const-string v5, "android.intent.extra.REFERRER_NAME"

    .line 74
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 75
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 78
    invoke-static {p1, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.google.android.googlequicksearchbox"

    .line 79
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v9

    goto :goto_3

    :catch_0
    move-exception v5

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Failed to parse referName "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with exception : "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move p1, v9

    :goto_3
    const-string v2, "audio"

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-eqz v2, :cond_4

    const/4 v5, 0x5

    .line 90
    invoke-virtual {v2, v5, v3, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_4
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    move v2, v1

    move v5, v2

    move v6, v5

    goto :goto_4

    :cond_5
    const v1, 0x7f121b94

    const v2, 0x7f100069

    const v5, 0x7f100068

    const v6, 0x7f121b93

    goto :goto_4

    :cond_6
    const v2, 0x7f121b95

    move v5, v1

    move v6, v5

    move v1, v2

    move v2, v6

    :goto_4
    if-ltz v4, :cond_b

    if-nez v0, :cond_7

    goto :goto_6

    .line 1137
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v7, 0xea60

    mul-int/2addr v7, v4

    int-to-long v10, v7

    add-long/2addr v0, v10

    .line 1138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {p0, v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "Hm"

    goto :goto_5

    :cond_8
    const-string v7, "hma"

    .line 1139
    :goto_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1140
    invoke-static {v7, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1141
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v7, 0x3c

    if-ge v4, v7, :cond_9

    .line 1144
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v0, v5, v9

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1145
    :cond_9
    rem-int/lit8 v2, v4, 0x3c

    if-eqz v2, :cond_a

    .line 1146
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1148
    :cond_a
    div-int/2addr v4, v7

    .line 1149
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v0, v2, v9

    invoke-virtual {v1, v5, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1134
    :cond_b
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->a(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_c

    return v9

    :cond_c
    return v3

    :cond_d
    const-string p1, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    .line 98
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->finish()V

    return v3
.end method
