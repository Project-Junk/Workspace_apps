.class public final Lcom/coloros/settings/feature/othersettings/recover/i;
.super Ljava/lang/Object;
.source "ResetSettingsStrategy.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/recover/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120fc5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120f42

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 14

    .line 45
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_22

    const-string v0, "clear_all_settings"

    .line 46
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/f;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/f;-><init>(Landroid/app/Activity;)V

    .line 1196
    iget-object p1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 1200
    iput-boolean p1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->b:Z

    .line 1201
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const-string v2, "com.android.quicksearchbox"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1202
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const-string v2, "com.coloros.notificationmanager"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1203
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 1287
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1289
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v3

    const-string v4, "display_power_percent"

    .line 1290
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1291
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.power_percent_display"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "show_network_speed"

    .line 1294
    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "oppo_plmn_display_type"

    .line 1296
    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1298
    invoke-static {}, Lcom/coloros/settings/utils/al;->s()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v4, "oppo_disaplay_calculate_data_traffic"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "notification_light_pulse"

    .line 1300
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "keyguard_notice_wakelock_state"

    .line 1302
    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "simple_banner_switch_state"

    .line 1304
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "default_slide_notification"

    .line 1306
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "keyguard_notification_visibility"

    .line 1309
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "oppo_status_bar_enable_when_lock"

    .line 1311
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1312
    invoke-static {}, Lcom/coloros/settings/utils/al;->l()Z

    .line 1313
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    const-string v1, "notification_prompt_mode"

    invoke-static {v2, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1316
    invoke-static {}, Lcom/coloros/settings/utils/bh;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Z)Z

    .line 1204
    :cond_0
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 2277
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2278
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "timepower_config"

    .line 2277
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2279
    invoke-static {v1, p1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Z)V

    .line 1205
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 2283
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adaptive_sleep"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1206
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/f;->b(Landroid/content/Context;)V

    .line 1207
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const-string v2, "com.coloros.gesture"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1208
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 2416
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2419
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->D(Landroid/content/Context;)Z

    move-result v1

    const-string v4, "0"

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    const-string v1, "1"

    :goto_0
    const-string v5, "oppo_smart_apperceive_screen_capture"

    .line 2418
    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "oppo_prevent_misoperation_enabled"

    .line 2421
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "oppo_smart_apperceive_dial"

    .line 2423
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "oppo_smart_apperceive_auto_answer"

    .line 2425
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "oppo_smart_apperceive_adjust_speaker"

    .line 2427
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "oppo_smart_apperceive_slient"

    .line 2430
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "oppo_gesture_wake_up_arouse"

    .line 2432
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1209
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 2478
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2480
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    .line 2481
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2482
    iget-object v4, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, ""

    .line 2486
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/al;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 2487
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 2491
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power"

    .line 2494
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 2495
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->f(Landroid/content/Context;)Z

    move-result v6

    .line 2496
    invoke-static {v5, v6}, Lcom/coloros/settings/utils/al;->c(Landroid/os/PowerManager;Z)I

    move-result v5

    const-string v7, "screen_brightness"

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, -0x2

    if-eqz v6, :cond_2

    .line 2504
    new-array v6, v8, [Ljava/lang/Class;

    const-class v12, Landroid/content/ContentResolver;

    aput-object v12, v6, p1

    const-class v12, Ljava/lang/String;

    aput-object v12, v6, v3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v6, v9

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v6, v10

    new-array v12, v8, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 2506
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    aput-object v13, v12, p1

    aput-object v7, v12, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v9

    .line 2507
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v10

    const-string v7, "android.provider.Settings$System"

    const-string v13, "putIntForBrightness"

    .line 2504
    invoke-static {v7, v13, v6, v12}, Lcom/coloros/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2511
    :cond_2
    iget-object v6, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v7, v5, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2516
    :goto_1
    iget-object v6, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 2517
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    int-to-float v5, v5

    const-string v7, "screen_auto_brightness_adj"

    .line 2516
    invoke-static {v6, v7, v5, v11}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    const-string v5, "screen_brightness_mode"

    .line 2521
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "vibrate_when_ringing"

    .line 2523
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2526
    iget-object v6, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 2531
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->at(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0xea60

    goto :goto_2

    :cond_3
    const/16 v6, 0x7530

    :goto_2
    const-string v7, "screen_off_timeout"

    .line 2533
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2536
    invoke-static {v4}, Lcom/coloros/settings/feature/display/nightmode/b;->d(Landroid/content/ContentResolver;)Z

    move-result v6

    xor-int/2addr v6, v3

    const/16 v7, 0x16

    const-string v12, "eyeprotect_begin_time_hour"

    .line 2537
    invoke-static {v4, v12, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "eyeprotect_begin_time_min"

    .line 2538
    invoke-static {v4, v7, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v7, 0x7

    const-string v12, "eyeprotect_end_time_hour"

    .line 2539
    invoke-static {v4, v12, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v12, "eyeprotect_end_time_min"

    .line 2540
    invoke-static {v4, v12, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v12, 0x3e2e147b    # 0.17f

    const-string v13, "color_display_level"

    .line 2541
    invoke-static {v4, v13, v12}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const v12, 0x3f3051ca

    const-string v13, "color_eyeprotect_start_level"

    .line 2544
    invoke-static {v4, v13, v12}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    const-string v13, "color_eyeprotect_saved_level"

    .line 2546
    invoke-static {v4, v13, v12}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2547
    invoke-static {v4, p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;Z)V

    .line 2548
    invoke-static {v4, p1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(Landroid/content/ContentResolver;Z)V

    const-string v12, "eyeprotect_fix_time_change"

    if-eqz v6, :cond_4

    .line 2550
    invoke-static {v4, v12, v3, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3

    .line 2552
    :cond_4
    invoke-static {v4, v12, p1, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2554
    :goto_3
    invoke-static {v4, p1}, Lcom/coloros/settings/feature/display/nightmode/b;->d(Landroid/content/ContentResolver;Z)V

    const-string v6, "inverse_on"

    .line 3101
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2556
    invoke-static {v4, v3}, Lcom/coloros/settings/feature/display/nightmode/b;->e(Landroid/content/ContentResolver;Z)V

    .line 2561
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    const/high16 v12, 0x3f800000    # 1.0f

    .line 2562
    iput v12, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 2564
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12, v6}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v6, "RecoveryDataHelper"

    const-string v12, "Unable to save font size"

    .line 2566
    invoke-static {v6, v12}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    :goto_4
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Setting_AodUserSetTime"

    .line 2570
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "Setting_AodEnableImmediate"

    .line 2571
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "Setting_AodEnableDateMode"

    .line 2572
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "Setting_AodEnableClockOnly"

    .line 2573
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/16 v6, 0x10

    const-string v12, "Setting_AodClockMode"

    .line 2574
    invoke-static {v4, v12, v6, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v6, 0x6

    const-string v12, "Setting_AodSetTimeBeginHour"

    .line 2575
    invoke-static {v4, v12, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "Setting_AodSetTimeBeginMin"

    .line 2576
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "Setting_AodSetTimeEndHour"

    .line 2577
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "Setting_AodSetTimeEndMin"

    .line 2578
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2581
    :cond_5
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "key_realme_aod_clock_mode"

    .line 2582
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "key_aod_clock_date"

    .line 2583
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "key_aod_clock_date_select"

    .line 2584
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "key_realme_aod_notification_icon"

    .line 2585
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "key_realme_aod_battery"

    .line 2586
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "key_realme_aod_signature"

    .line 2587
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "realme_aod_notification_black_pkg"

    .line 2588
    invoke-static {v4, v6, v2, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v6, "realme_aod_signature_text"

    const-string v12, "Dare\nto\nLeap"

    .line 2589
    invoke-static {v4, v6, v12, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v6, "realme_aod_signature_color_index"

    .line 2590
    invoke-static {v4, v6, v7, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "realme_aod_signature_aligntype_index"

    .line 2591
    invoke-static {v4, v6, v10, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "realme_aod_signature_fontsize_index"

    .line 2592
    invoke-static {v4, v6, v3, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v6, "realme_aod_signature_face_type_index"

    .line 2593
    invoke-static {v4, v6, p1, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2596
    :cond_6
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->I(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "curved_screen_gesture_switch_state"

    .line 2597
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "curved_screen_gesture_split_state"

    .line 2598
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2601
    :cond_7
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->H(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "vendor_media_vpp_enable"

    .line 2602
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "vendor.media.vpp.enable"

    const-string v7, "false"

    .line 2603
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "vendor.media.vpp.default.config"

    const-string v7, "false"

    .line 2604
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    :cond_8
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->J(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "oppo_comm_incallui_curved_display_call_color"

    .line 2609
    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "oppo_comm_incallui_curved_display_notification_color"

    .line 2610
    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "oppo_aod_curved_display_notification_switch"

    .line 2611
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "oppo_aod_curved_display_call_switch"

    .line 2612
    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "oppo_comm_incallui_side_notification_incomming_type"

    .line 2613
    invoke-static {v4, v6, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    const-string v6, "edge_panel_toggle"

    .line 2615
    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2619
    invoke-static {}, Lcom/coloros/settings/utils/al;->u()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2620
    invoke-static {}, Lcom/coloros/settings/utils/al;->v()I

    move-result v6

    const-string v7, "oppo_color_mode"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2624
    :cond_a
    invoke-static {}, Lcom/coloros/settings/utils/bh;->p()Z

    move-result v6

    const-string v7, "coloros_screen_refresh_rate"

    if-eqz v6, :cond_b

    .line 2625
    invoke-static {v4, v7, p1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5

    .line 2627
    :cond_b
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2628
    invoke-static {v4, v7, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5

    .line 2630
    :cond_c
    invoke-static {v1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2631
    invoke-static {v4, v7, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2635
    :cond_d
    :goto_5
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "coloros_screen_resolution_adjust"

    .line 2636
    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2637
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;I)V

    .line 2640
    :cond_e
    invoke-static {}, Lcom/coloros/settings/utils/bh;->n()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "setting_enable_color_temperature_regulation"

    .line 2641
    invoke-static {v4, v6, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3660
    :cond_f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "carrier_info_settings_show"

    .line 3663
    invoke-static {v4, v6, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3668
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3670
    iget-object v6, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 3672
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "vibrate_when_silent"

    .line 3674
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4213
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4214
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "camera_3d_lifting_descending_sound_switch"

    .line 4215
    invoke-static {v5, v7, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "camera_3d_lifting_descending_sound_path"

    .line 4216
    invoke-static {v5, v7, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v7, "camera_3d_lifting_descending_sound_path_backup"

    .line 4217
    invoke-static {v5, v7, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4220
    :cond_10
    invoke-static {}, Lcom/coloros/settings/utils/bh;->i()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "camera_3d_lifting_descending_color_switch"

    .line 4221
    invoke-static {v5, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "camera_3d_lifting_descending_random_color_switch"

    .line 4222
    invoke-static {v5, v7, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "camera_3d_lifting_descending_color"

    .line 4223
    invoke-static {v5, v7, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3678
    :cond_11
    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 3680
    invoke-static {v9}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v2

    .line 3681
    invoke-static {v10}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v5

    .line 3682
    invoke-static {v8}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result v7

    const/16 v12, 0x400

    .line 3683
    invoke-virtual {v6, v9, v2, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3685
    invoke-virtual {v6, v10, v5, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3687
    invoke-virtual {v6, v8, v7, v12}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v2, "oppo_default_ringtone"

    .line 3690
    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3691
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "ringtone"

    .line 3692
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "ringtone_sim2"

    .line 3693
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_12
    const-string v2, "oppo_default_notification"

    .line 3695
    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3696
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "notification_sound"

    .line 3698
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_13
    const-string v2, "oppo_default_sms_notification_sound"

    .line 3700
    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3701
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "oppo_sms_notification_sound"

    .line 3702
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "notification_sim2"

    .line 3703
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14
    const-string v2, "calendar_default_sound"

    .line 3705
    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3706
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "calendar_sound"

    .line 3707
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    const-string v2, "default_volume_type_coloros_six"

    .line 3711
    invoke-static {v4, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3714
    invoke-static {v1}, Lcom/coloros/settings/utils/bh;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3715
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "coloros_sound_input_channel"

    invoke-static {v2, v5, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_16
    const-string v2, "oppo_default_alarm"

    .line 3718
    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3719
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "alarm_alert"

    .line 3720
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_17
    const-string v2, "sound_effects_enabled"

    .line 3723
    invoke-static {v4, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3725
    invoke-static {}, Lcom/coloros/settings/utils/al;->q()Z

    move-result v2

    xor-int/2addr v2, v3

    const-string v5, "dtmf_tone"

    .line 3724
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "lockscreen_sounds_enabled"

    .line 3726
    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "haptic_feedback_enabled"

    .line 3727
    invoke-static {v4, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "disable_screen_capture_sound"

    .line 3728
    invoke-static {v4, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "ktv_loopback_switch=open"

    .line 3731
    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ktv_loopback_switch=open"

    .line 3730
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "ktv_loopback_switch=close"

    .line 3732
    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3735
    :cond_18
    invoke-static {v1}, Lcom/coloros/settings/utils/aw;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3736
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "disable_front_finger_sound"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3739
    :cond_19
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "default_volume_type_coloros_six"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3740
    invoke-static {v1}, Lcom/coloros/settings/utils/bh;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3741
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "coloros_sound_input_channel"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3743
    :cond_1a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "global_delete_sound"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2441
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/f;->c(Landroid/content/Context;)V

    .line 4926
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "keyboard_position"

    .line 4927
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4931
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4932
    invoke-static {}, Lcom/coloros/settings/utils/al;->n()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "non_sensing_certification_enable"

    .line 4933
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5031
    :cond_1b
    invoke-static {}, Lcom/coloros/settings/utils/bh;->m()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5032
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_dc_settings_switch"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5038
    :cond_1c
    invoke-static {v1}, Lcom/coloros/settings/utils/bh;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5039
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "button_light_mode"

    invoke-static {v2, v4, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5041
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v4, 0x1770

    const-string v5, "button_light_timeout"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5473
    :cond_1d
    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 6467
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_services_talkback_float_hint"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6647
    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6648
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ap;->a(Landroid/content/Context;Z)V

    .line 6650
    :cond_1e
    invoke-static {v1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6651
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;Z)Z

    .line 6652
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    .line 6653
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;Z)Z

    .line 6654
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;Z)Z

    .line 6655
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;I)Z

    .line 7453
    :cond_1f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "key_display_nonimmersive_local_apps"

    invoke-static {v2, v5, v4, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7455
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "key_display_immersive_local_apps"

    invoke-static {v2, v5, v4, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7457
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "cutout_hide_app_list"

    invoke-static {v2, v5, v4, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7459
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "key_display_fullscreen_local_apps_v1"

    invoke-static {v2, v5, v4, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7461
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "key_display_compat_local_apps_v1"

    invoke-static {v2, v5, v4, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7463
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/recover/f;->d(Landroid/content/Context;)V

    .line 8266
    new-instance v1, Lcom/coloros/partners/dirac/a/c;

    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coloros/partners/dirac/a/c;-><init>(Landroid/content/Context;)V

    .line 8267
    invoke-virtual {v1}, Lcom/coloros/partners/dirac/a/c;->a()Z

    .line 1211
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    .line 9248
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-nez v2, :cond_20

    .line 9249
    new-instance v2, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-direct {v2, v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    .line 9250
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f120fb1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9251
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1, p1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 9252
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1, v3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCancelable(Z)V

    .line 9254
    :cond_20
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_21

    .line 9255
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->show()V

    .line 1212
    :cond_21
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(I)V

    .line 10069
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/f$c;

    invoke-direct {v2, v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/f$c;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f;B)V

    invoke-virtual {v1, v9, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 10273
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 10272
    invoke-static {v3, p1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1215
    iget-object p1, v0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Landroid/content/Context;)V

    :cond_22
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "ResetSettingsStrategy"

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120f5a

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204fa

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
