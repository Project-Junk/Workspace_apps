.class public final Lcom/coloros/settings/cloud/b;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field private static final a:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1c

    .line 80
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "int"

    const-string v2, "notification_light_pulse"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "display_power_percent"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "show_network_speed"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "oppo_plmn_display_type"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "oppo_disaplay_calculate_data_traffic"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "oppo_status_bar_enable_when_lock"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "keyguard_notice_wakelock_state"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "screen_brightness_mode"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "accelerometer_rotation"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const-string v2, "font_scale"

    const-string v3, "float"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const-string v2, "vibrate_when_ringing"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const-string v2, "vibrate_when_silent"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const-string v2, "string"

    const-string v3, "ringtone"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-string v3, "oppo_sms_notification_sound"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const-string v3, "calendar_sound"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const-string v2, "dtmf_tone"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const-string v2, "lockscreen_sounds_enabled"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v0, v3

    const-string v2, "haptic_feedback_enabled"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const-string v2, "screen_off_timeout"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const-string v2, "oppo_double_press_home_lock_screen"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const-string v2, "oppo_smart_apperceive_screen_capture"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v0, v3

    const-string v2, "oppo_gesture_screen_hovering"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v0, v3

    const-string v2, "oppo_smart_apperceive_dial"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v0, v3

    const-string v2, "oppo_smart_apperceive_auto_answer"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v0, v3

    const-string v2, "oppo_smart_apperceive_adjust_speaker"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v0, v3

    const-string v2, "oppo_smart_apperceive_slient"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const-string v2, "oppo_prevent_misoperation_enabled"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    const-string v2, "oppo_leather_mode_enabled"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/cloud/b;->a:[[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "content://media/internal/"

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "title"

    const-string v2, "_data"

    .line 394
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 397
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 398
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 404
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_1
    throw p1

    .line 409
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getInternalRingtoneFilePath uriStr"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filePath="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsHelper"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 147
    :goto_0
    sget-object v4, Lcom/coloros/settings/cloud/b;->a:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 148
    aget-object v4, v4, v3

    aget-object v4, v4, v2

    .line 149
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1361
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ringtone"

    .line 1363
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oppo_sms_notification_sound"

    .line 1365
    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "calendar_sound"

    .line 1367
    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1370
    invoke-static {p0, v0}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    invoke-static {p0, v2}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-static {p0, v3}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    const-string v3, "call_ringtone_file_path"

    .line 1375
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, "sms_ringtone_file_path"

    .line 1378
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "calendar_ringtone_file_path"

    .line 1381
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    .line 1417
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "1"

    goto :goto_1

    :cond_5
    const-string p0, "0"

    :goto_1
    const-string v0, "sync_auto"

    .line 161
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/google/b/n;)V
    .locals 11

    if-eqz p1, :cond_13

    .line 2180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SettingsHelper"

    const-string v2, "restoreSystemTable"

    .line 2185
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 2186
    :goto_0
    sget-object v4, Lcom/coloros/settings/cloud/b;->a:[[Ljava/lang/String;

    array-length v5, v4

    const-string v6, "1"

    if-ge v3, v5, :cond_12

    .line 2187
    aget-object v5, v4, v3

    aget-object v5, v5, v2

    .line 2188
    aget-object v4, v4, v3

    const/4 v7, 0x1

    aget-object v4, v4, v7

    .line 2189
    invoke-virtual {p1, v5}, Lcom/google/b/n;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 2191
    invoke-virtual {v7}, Lcom/google/b/k;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v8

    .line 2196
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "font_scale"

    if-eqz v9, :cond_7

    const-string v7, "show_network_speed"

    .line 2264
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "0"

    if-eqz v7, :cond_1

    :goto_2
    move-object v7, v9

    goto :goto_3

    :cond_1
    const-string v7, "oppo_plmn_display_type"

    .line 2266
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "keyguard_notice_wakelock_state"

    .line 2268
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "vibrate_when_silent"

    .line 2270
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "oppo_leather_mode_enabled"

    .line 2272
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    .line 2274
    :cond_5
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v8

    .line 2199
    :cond_7
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "display_power_percent"

    .line 2200
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_11

    .line 2283
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "setPowerPercent value="

    .line 2284
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2286
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.power_percent_display"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 2289
    :catch_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setPowerPercent error value="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2202
    :cond_8
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2295
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setFontScale value="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_11

    .line 2298
    :try_start_1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 2299
    invoke-static {v0, v10, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2301
    :try_start_2
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 2302
    iput v4, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 2303
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_1
    :try_start_3
    const-string v4, "Unable to set font size"

    .line 2305
    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 2308
    :catch_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setFontScale error value="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const-string v6, "ringtone"

    .line 2204
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v4, "call_ringtone_file_path"

    .line 2205
    invoke-virtual {p1, v4}, Lcom/google/b/n;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2207
    invoke-virtual {v4}, Lcom/google/b/k;->c()Ljava/lang/String;

    move-result-object v4

    .line 2208
    invoke-static {p0, v5, v7, v4}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v6, "oppo_sms_notification_sound"

    .line 2210
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v4, "sms_ringtone_file_path"

    .line 2211
    invoke-virtual {p1, v4}, Lcom/google/b/n;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2213
    invoke-virtual {v4}, Lcom/google/b/k;->c()Ljava/lang/String;

    move-result-object v4

    .line 2214
    invoke-static {p0, v5, v7, v4}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v6, "calendar_sound"

    .line 2216
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v4, "calendar_ringtone_file_path"

    .line 2217
    invoke-virtual {p1, v4}, Lcom/google/b/n;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2219
    invoke-virtual {v4}, Lcom/google/b/k;->c()Ljava/lang/String;

    move-result-object v4

    .line 2220
    invoke-static {p0, v5, v7, v4}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v6, "string"

    .line 2223
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2224
    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_d
    const-string v6, "int"

    .line 2225
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, " key="

    if-eqz v6, :cond_e

    .line 2227
    :try_start_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2228
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    .line 2230
    :catch_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "restoreSystemTable int value="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v6, "float"

    .line 2233
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2235
    :try_start_5
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 2236
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 2238
    :catch_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "restoreSystemTable float value="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string v6, "long"

    .line 2241
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2243
    :try_start_6
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 2244
    invoke-static {v0, v5, v9, v10}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    .line 2246
    :catch_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "restoreSystemTable long value="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2252
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "restoreSystemTable String key="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    const-string p0, "sync_auto"

    .line 171
    invoke-virtual {p1, p0}, Lcom/google/b/n;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 173
    invoke-virtual {p0}, Lcom/google/b/k;->c()Ljava/lang/String;

    move-result-object p0

    .line 2422
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p0, :cond_13

    .line 2427
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 2430
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    :cond_13
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const-string v0, "content://media/internal/"

    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "title"

    const-string v2, "_data"

    .line 326
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 329
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 330
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    move-object v7, p2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v7, v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v7, :cond_2

    .line 343
    new-instance v0, Lcom/coloros/settings/cloud/a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/cloud/a;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v0, p3}, Lcom/coloros/settings/cloud/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 346
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v7, p0

    :cond_2
    if-eqz v7, :cond_4

    .line 351
    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v7, :cond_3

    .line 338
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_3
    throw p0

    .line 355
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setRingTone key="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ringtoneUri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filePath="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " localRingtoneUri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsHelper"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
