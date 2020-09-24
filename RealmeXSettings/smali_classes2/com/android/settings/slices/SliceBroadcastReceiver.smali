.class public Lcom/android/settings/slices/SliceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SliceBroadcastReceiver.java"


# static fields
.field private static a:Ljava/lang/String; = "SettSliceBroadcastRec"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/a;
    .locals 1

    .line 216
    new-instance v0, Lcom/android/settings/slices/h;

    invoke-direct {v0, p0}, Lcom/android/settings/slices/h;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/android/settings/slices/h;->a(Ljava/lang/String;)Lcom/android/settings/slices/e;

    move-result-object p1

    .line 218
    invoke-static {p0, p1}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/slices/e;)Lcom/android/settings/core/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 208
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x55c

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    .line 209
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "android.settings.slices"

    goto :goto_0

    :cond_0
    const-string p2, "com.android.settings.slices"

    .line 225
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 226
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "action"

    .line 228
    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 229
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.slice.extra.key"

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "com.android.settings.slice.extra.platform"

    .line 61
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 64
    invoke-static {v2}, Lcom/android/settings/slices/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/slices/a;->a(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Lcom/android/settings/slices/b;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/b;

    move-result-object v0

    .line 68
    invoke-interface {v0, v1}, Lcom/android/settings/slices/b;->a(Landroid/content/Intent;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_CELLULAR_PREFERRED"

    const-string v8, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_ONLY"

    const-string v9, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_PREFERRED"

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "com.android.settings.notification.ZEN_MODE_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v6, "com.android.settings.slice.action.COPY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v6, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v12

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v6, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_7
    const-string v6, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v10

    goto :goto_1

    :sswitch_8
    const-string v6, "com.android.settings.mobilenetwork.action.ENHANCED_4G_LTE_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_9
    const-string v6, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v11

    :goto_1
    const-string v6, " since the setting is unavailable"

    const-string v13, "Can\'t update "

    const/4 v14, 0x0

    const-string v15, "android.app.slice.extra.TOGGLE_STATE"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 3181
    :pswitch_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3185
    invoke-static {v0, v3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object v1

    .line 3187
    instance-of v2, v1, Lcom/android/settings/slices/g;

    if-eqz v2, :cond_4

    .line 3192
    invoke-virtual {v1}, Lcom/android/settings/core/a;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3193
    sget-object v2, Lcom/android/settings/slices/SliceBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    invoke-virtual {v1}, Lcom/android/settings/core/a;->hasAsyncUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3195
    invoke-static {v0, v3, v5}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void

    .line 3200
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/core/a;->copy()V

    goto/16 :goto_6

    .line 3188
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Copyable action passed for a non-copyable key:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3182
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key passed to Intent for controller"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v2

    .line 104
    invoke-interface {v2, v0}, Lcom/android/settings/slices/j;->d(Landroid/content/Context;)Lcom/android/settings/wifi/calling/d;

    move-result-object v0

    .line 2506
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    if-ltz v2, :cond_e

    const-string v3, "editable_wfc_mode_bool"

    .line 2419
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/String;IZ)Z

    move-result v3

    const-string v5, "carrier_wfc_supports_wifi_only_bool"

    .line 2421
    invoke-virtual {v0, v5, v2, v12}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/String;IZ)Z

    move-result v5

    .line 2424
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/calling/d;->a(I)Lcom/android/ims/e;

    move-result-object v2

    if-eqz v3, :cond_e

    .line 2426
    invoke-virtual {v2}, Lcom/android/ims/e;->m()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2427
    invoke-virtual {v2}, Lcom/android/ims/e;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2428
    invoke-virtual {v2}, Lcom/android/ims/e;->j()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2429
    invoke-virtual {v2}, Lcom/android/ims/e;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2432
    invoke-virtual {v2, v4}, Lcom/android/ims/e;->c(Z)I

    move-result v3

    .line 2434
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v13, -0x523c66d

    if-eq v6, v13, :cond_8

    const v9, 0xa8b033a

    if-eq v6, v9, :cond_7

    const v8, 0x1d8fe7a8

    if-eq v6, v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v10

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v4

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v12

    goto :goto_3

    :cond_9
    :goto_2
    move v1, v11

    :goto_3
    if-eqz v1, :cond_b

    if-eq v1, v12, :cond_d

    if-eq v1, v10, :cond_a

    goto :goto_4

    :cond_a
    move v10, v12

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_c

    move v10, v4

    goto :goto_5

    :cond_c
    :goto_4
    move v10, v11

    :cond_d
    :goto_5
    if-eq v10, v11, :cond_e

    if-eq v10, v3, :cond_e

    .line 2450
    invoke-virtual {v2, v10, v4}, Lcom/android/ims/e;->a(IZ)V

    .line 2457
    :cond_e
    iget-object v0, v0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->x:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 94
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v2

    .line 96
    invoke-interface {v2, v0}, Lcom/android/settings/slices/j;->e(Landroid/content/Context;)Lcom/android/settings/network/telephony/c;

    move-result-object v0

    .line 2270
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    if-ltz v2, :cond_10

    .line 2201
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/c;->a(I)Lcom/android/ims/e;

    move-result-object v2

    .line 2202
    invoke-virtual {v2}, Lcom/android/ims/e;->c()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2203
    invoke-virtual {v2}, Lcom/android/ims/e;->d()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2204
    invoke-virtual {v2}, Lcom/android/ims/e;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2205
    invoke-virtual {v2}, Lcom/android/ims/e;->b()Z

    move-result v3

    if-eqz v3, :cond_f

    move v4, v12

    .line 2206
    :cond_f
    invoke-virtual {v1, v15, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v4, :cond_10

    .line 2209
    invoke-virtual {v2, v1}, Lcom/android/ims/e;->a(Z)V

    .line 2215
    :cond_10
    iget-object v0, v0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->j:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 91
    :pswitch_3
    invoke-static/range {p1 .. p2}, Lcom/android/settings/notification/x;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 85
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v2

    .line 87
    invoke-interface {v2, v0}, Lcom/android/settings/slices/j;->d(Landroid/content/Context;)Lcom/android/settings/wifi/calling/d;

    move-result-object v0

    .line 1506
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    if-ltz v2, :cond_13

    .line 1382
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/calling/d;->a(I)Lcom/android/ims/e;

    move-result-object v3

    .line 1383
    invoke-virtual {v3}, Lcom/android/ims/e;->m()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1384
    invoke-virtual {v3}, Lcom/android/ims/e;->e()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1385
    invoke-virtual {v3}, Lcom/android/ims/e;->j()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1386
    invoke-virtual {v3}, Lcom/android/ims/e;->b()Z

    move-result v5

    if-eqz v5, :cond_11

    move v4, v12

    .line 1387
    :cond_11
    invoke-virtual {v1, v15, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1390
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/calling/d;->b(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v1, :cond_12

    if-nez v2, :cond_13

    :cond_12
    if-eq v1, v4, :cond_13

    .line 1395
    invoke-virtual {v3, v1}, Lcom/android/ims/e;->b(Z)V

    .line 1402
    :cond_13
    iget-object v0, v0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->w:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 82
    :pswitch_5
    invoke-static/range {p2 .. p2}, Lcom/android/settings/bluetooth/i;->a(Landroid/content/Intent;)V

    return-void

    :pswitch_6
    const-string v2, "android.app.slice.extra.RANGE_VALUE"

    .line 78
    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    if-eq v1, v11, :cond_17

    .line 1154
    invoke-static {v0, v3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object v2

    .line 1156
    instance-of v4, v2, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz v4, :cond_16

    .line 1160
    invoke-virtual {v2}, Lcom/android/settings/core/a;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1161
    sget-object v1, Lcom/android/settings/slices/SliceBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-static {v0, v3, v5}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 1166
    :cond_14
    check-cast v2, Lcom/android/settings/core/SliderPreferenceController;

    .line 1167
    invoke-virtual {v2}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v4

    .line 1168
    invoke-virtual {v2}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v6

    if-lt v1, v4, :cond_15

    if-gt v1, v6, :cond_15

    .line 1175
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    .line 1176
    invoke-static {v0, v3, v1}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1177
    invoke-static {v0, v3, v5}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 1170
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid position passed to Slider controller. Expected between "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Slider action passed for a non-slider key: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position passed to Slider controller"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key passed to Intent for slider controller. Use extra: com.android.settings.slice.extra.key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_7
    invoke-virtual {v1, v15, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1115
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1119
    invoke-static {v0, v3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object v2

    .line 1121
    instance-of v4, v2, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v4, :cond_1c

    .line 1125
    invoke-virtual {v2}, Lcom/android/settings/core/a;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1126
    sget-object v1, Lcom/android/settings/slices/SliceBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {v2}, Lcom/android/settings/core/a;->hasAsyncUpdate()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1128
    invoke-static {v0, v3, v5}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_19
    return-void

    .line 1135
    :cond_1a
    move-object v4, v2

    check-cast v4, Lcom/android/settings/core/TogglePreferenceController;

    .line 1136
    invoke-virtual {v4, v1}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    .line 1137
    invoke-static {v0, v3, v1}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1138
    invoke-virtual {v2}, Lcom/android/settings/core/a;->hasAsyncUpdate()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1139
    invoke-static {v0, v3, v5}, Lcom/android/settings/slices/SliceBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1b
    return-void

    .line 1122
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Toggle action passed for a non-toggle key: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No key passed to Intent for toggle controller"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bba0bda -> :sswitch_9
        -0x78091e88 -> :sswitch_8
        -0x379033de -> :sswitch_7
        -0x1598e57d -> :sswitch_6
        -0x523c66d -> :sswitch_5
        0x10bd4b3 -> :sswitch_4
        0xa8b033a -> :sswitch_3
        0x1d8fe7a8 -> :sswitch_2
        0x35d1b332 -> :sswitch_1
        0x720b8ab8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
