.class public final Lcom/android/settings/network/telephony/c;
.super Ljava/lang/Object;
.source "Enhanced4gLteSliceHelper.java"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Landroid/telephony/CarrierConfigManager;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    return-object v0
.end method

.method private a(Ljava/lang/String;IZ)Z
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/android/settings/network/telephony/c;->a()Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p2, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    :cond_0
    return p3
.end method

.method private b(I)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "com.android.phone"

    .line 219
    iget-object v1, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    const v2, 0x7f1208ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :try_start_0
    const-string v2, "enhanced_4g_lte_title_variant_bool"

    const/4 v3, 0x0

    .line 221
    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/network/telephony/c;->a(Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "enhanced_4g_lte_mode_title_variant"

    const-string v3, "string"

    .line 228
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    const-string p1, "Enhanced4gLteSlice"

    const-string v0, "package name not found"

    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 10

    .line 1270
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const-string v1, "Enhanced4gLteSlice"

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const-string p1, "Invalid subscription Id"

    .line 118
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 122
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/c;->a(I)Lcom/android/ims/e;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/android/ims/e;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {v3}, Lcom/android/ims/e;->d()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x0

    const-string v5, "hide_enhanced_4g_lte_bool"

    .line 130
    invoke-direct {p0, v5, v0, v4}, Lcom/android/settings/network/telephony/c;->a(Ljava/lang/String;IZ)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    const-string v6, "editable_enhanced_4g_lte_bool"

    .line 132
    invoke-direct {p0, v6, v0, v5}, Lcom/android/settings/network/telephony/c;->a(Ljava/lang/String;IZ)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    .line 2150
    :cond_2
    :try_start_0
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/android/settings/network/telephony/c$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/network/telephony/c$1;-><init>(Lcom/android/settings/network/telephony/c;Lcom/android/ims/e;)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2156
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 2157
    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x7d0

    .line 2159
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2167
    iget-object v5, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    const v6, 0x7f08072e

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 2170
    new-instance v6, Landroidx/slice/builders/ListBuilder;

    iget-object v7, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    const-wide/16 v8, -0x1

    invoke-direct {v6, v7, p1, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    .line 2171
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 2173
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    const-string v7, "com.android.settings.mobilenetwork.action.ENHANCED_4G_LTE_CHANGED"

    .line 2260
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2261
    iget-object v7, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    const-class v9, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v8, v7, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2262
    iget-object v7, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    const/high16 v9, 0x10000000

    invoke-static {v7, v4, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2175
    invoke-static {v7, v2, v3}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 2174
    invoke-virtual {v6, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    const-string v6, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 2277
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2279
    iget-object v6, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    invoke-static {v6, v4, v7, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2183
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2179
    invoke-static {v6, v5, v4, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 2178
    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 2172
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 2184
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

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
    const-string v0, "Unable to read the current Enhanced 4g LTE status"

    .line 143
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_3
    :goto_1
    const-string p1, "Setting is either hidden or not editable"

    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    :goto_2
    const-string p1, "Setting is either not provisioned or not enabled by Platform"

    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final a(I)Lcom/android/ims/e;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/settings/network/telephony/c;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    return-object p1
.end method
