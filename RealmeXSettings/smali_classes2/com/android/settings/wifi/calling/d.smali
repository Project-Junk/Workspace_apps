.class public final Lcom/android/settings/wifi/calling/d;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 549
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 551
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1

    .line 499
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;
    .locals 5

    .line 470
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const v1, 0x7f080a2e

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 471
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p3, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p3, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 472
    invoke-static {p3}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p3

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 474
    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 475
    invoke-virtual {v1, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    const/4 v1, 0x1

    .line 476
    invoke-static {p4, v0, v1, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 473
    invoke-virtual {p3, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const v1, 0x7f080971

    .line 325
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 326
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 327
    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 328
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 329
    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 328
    invoke-static {p2, v0, p1, p3}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/android/ims/e;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/wifi/calling/d$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/d$1;-><init>(Lcom/android/settings/wifi/calling/d;Lcom/android/ims/e;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 179
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 180
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 182
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/android/ims/e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 561
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    iget-object p1, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 10

    .line 1506
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiCallingSliceHelper"

    if-gez v0, :cond_0

    const-string p1, "Invalid subscription Id"

    .line 135
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/d;->a(I)Lcom/android/ims/e;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/android/ims/e;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-virtual {v3}, Lcom/android/ims/e;->e()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 148
    :cond_1
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/calling/d;->a(Lcom/android/ims/e;)Z

    move-result v3

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/d;->b(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "android.settings.WIFI_CALLING_SETTINGS"

    const v5, 0x7f121942

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    :try_start_1
    const-string v0, "Needs Activation"

    .line 155
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 159
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const v5, 0x7f121941

    .line 160
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 162
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/calling/d;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 158
    invoke-direct {p0, v0, v3, p1, v4}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p1

    return-object p1

    .line 2191
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const v6, 0x7f080a2e

    invoke-static {v0, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 2193
    new-instance v6, Landroidx/slice/builders/ListBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const-wide/16 v8, -0x1

    invoke-direct {v6, v7, p1, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 2194
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 2196
    invoke-virtual {v7, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    const-string v7, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    .line 2199
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2198
    invoke-static {v7, v1, v3}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 2197
    invoke-virtual {v6, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 2202
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/calling/d;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 2205
    invoke-virtual {v7, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2201
    invoke-static {v4, v0, v6, v5}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 2195
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 2206
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v0, "Unable to read the current WiFi calling status"

    .line 166
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "Wifi calling is either not provisioned or not enabled by Platform"

    .line 143
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final a(I)Lcom/android/ims/e;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;IZ)Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/d;->a(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 492
    invoke-virtual {p2, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(I)Landroid/content/Intent;
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/d;->a(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 519
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const-string v0, "wfc_emergency_address_carrier_app_string"

    .line 524
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 530
    :cond_2
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 535
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 536
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 14

    .line 2506
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const-string v1, "WifiCallingSliceHelper"

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const-string p1, "Invalid Subscription Id"

    .line 228
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const-string v4, "editable_wfc_mode_bool"

    .line 232
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/String;IZ)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "carrier_wfc_supports_wifi_only_bool"

    .line 234
    invoke-virtual {p0, v6, v0, v5}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/String;IZ)Z

    move-result v6

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/d;->a(I)Lcom/android/ims/e;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/android/ims/e;->m()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 239
    invoke-virtual {v0}, Lcom/android/ims/e;->e()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez v4, :cond_2

    const-string p1, "Wifi calling preference is not editable"

    .line 245
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 252
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/d;->a(Lcom/android/ims/e;)Z

    move-result v4

    .line 3361
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v8, Lcom/android/settings/wifi/calling/d$2;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/wifi/calling/d$2;-><init>(Lcom/android/settings/wifi/calling/d;Lcom/android/ims/e;)V

    invoke-direct {v7, v8}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3367
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3368
    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v8, 0x7d0

    .line 3369
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.settings.WIFI_CALLING_SETTINGS"

    const v7, 0x7f121937

    if-nez v4, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 261
    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const v3, 0x7f121946

    .line 262
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 263
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/d;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 260
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/settings/wifi/calling/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p1

    return-object p1

    .line 4281
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const v8, 0x7f080a2e

    invoke-static {v4, v8}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 4283
    new-instance v8, Landroidx/slice/builders/ListBuilder;

    iget-object v9, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    const-wide/16 v10, -0x1

    invoke-direct {v8, v9, p1, v10, v11}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 4284
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v8, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 4285
    new-instance v8, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 4286
    invoke-virtual {v9, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v8

    const-string v9, "com.android.internal.R.string.wfc_mode_wifi_preferred_summary"

    const-string v10, "com.android.internal.R.string.wfc_mode_cellular_preferred_summary"

    const-string v11, "com.android.internal.R.string.wfc_mode_wifi_only_summary"

    const/4 v12, 0x2

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v12, :cond_4

    goto :goto_0

    .line 4345
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 4346
    invoke-static {v9}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4345
    invoke-virtual {v2, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 4348
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 4349
    invoke-static {v10}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4348
    invoke-virtual {v2, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 4342
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 4343
    invoke-static {v11}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4342
    invoke-virtual {v2, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4287
    :goto_0
    invoke-virtual {v8, v2}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v2

    .line 4289
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/d;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v8, p0, Lcom/android/settings/wifi/calling/d;->a:Landroid/content/Context;

    .line 4292
    invoke-virtual {v8, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 4288
    invoke-static {v1, v4, v3, v7}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v1

    .line 4285
    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    if-eqz v6, :cond_8

    .line 4296
    invoke-static {v11}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v0, :cond_7

    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    const-string v4, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_ONLY"

    .line 4295
    invoke-direct {p0, v1, v4, v2}, Lcom/android/settings/wifi/calling/d;->a(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 4302
    :cond_8
    invoke-static {v9}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v12, :cond_9

    move v2, v5

    goto :goto_2

    :cond_9
    move v2, v3

    :goto_2
    const-string v4, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_PREFERRED"

    .line 4301
    invoke-direct {p0, v1, v4, v2}, Lcom/android/settings/wifi/calling/d;->a(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 4307
    invoke-static {v10}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v5, :cond_a

    move v3, v5

    :cond_a
    const-string v0, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_CELLULAR_PREFERRED"

    .line 4306
    invoke-direct {p0, v1, v0, v3}, Lcom/android/settings/wifi/calling/d;->a(ILjava/lang/String;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 4311
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_3
    const-string v0, "Unable to get wifi calling preferred mode"

    .line 255
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_b
    :goto_4
    const-string p1, "Wifi calling is either not provisioned or not enabled by platform"

    .line 240
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
