.class public Lcom/android/settings/wifi/slice/WifiSlice;
.super Ljava/lang/Object;
.source "WifiSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field protected final c:Landroid/content/Context;

.field protected final d:Landroid/net/wifi/WifiManager;

.field protected final e:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    .line 81
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    .line 82
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->e:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private a(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 296
    invoke-static {p1, p3, v1, p4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/android/settingslib/wifi/a;ZLandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 5

    .line 244
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->hashCode()I

    move-result v0

    if-eqz p2, :cond_0

    .line 246
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const-class v1, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    .line 247
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    const-string v1, "android.net.extra.NETWORK"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 248
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/settings/wifi/slice/WifiSlice;->b(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 252
    invoke-virtual {p1, p2}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.settings.WIFI_EDITOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "Edit"

    .line 273
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10014
    iget v3, p1, Lcom/android/settingslib/wifi/a;->e:I

    const-string v4, "Security"

    .line 274
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10095
    iget-object v3, p1, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    const-string v4, "SSID"

    .line 275
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ChangeToData"

    .line 276
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.coloros.wirelesssettings"

    .line 277
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v3

    const-string v4, "Arrow"

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    .line 279
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/settings/wifi/slice/WifiSlice;->a(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1

    .line 281
    :cond_1
    invoke-static {p1}, Lcom/android/settings/wifi/i;->a(Lcom/android/settingslib/wifi/a;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const-class v2, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "access_point_state"

    .line 283
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 284
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/settings/wifi/slice/WifiSlice;->b(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1

    .line 286
    :cond_2
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/settings/wifi/slice/WifiSlice;->a(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method

.method private b(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 2

    const/high16 v0, 0x10000000

    .line 301
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {v0, p1, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 p2, 0x0

    .line 304
    invoke-static {p1, p3, p2, p4}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Landroidx/slice/Slice;
    .locals 16

    move-object/from16 v0, p0

    .line 93
    iget-object v1, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f130401

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1354
    iget-object v1, v0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2150
    :goto_0
    iget-object v3, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v6, 0x7f080845

    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    .line 2152
    iget-object v6, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v7, 0x7f121a45

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2153
    iget-object v7, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/slice/WifiSlice;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/slice/WifiSlice;->c()Landroid/content/Intent;

    move-result-object v8

    .line 2365
    iget-object v9, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-static {v9, v5, v8, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2155
    invoke-static {v8, v3, v5, v6}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    const/4 v8, 0x0

    .line 2157
    invoke-static {v7, v8, v1}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v7

    .line 2160
    new-instance v9, Landroidx/slice/builders/ListBuilder;

    iget-object v10, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/slice/WifiSlice;->b()Landroid/net/Uri;

    move-result-object v11

    const-wide/16 v12, -0x1

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v10, -0x1

    .line 2161
    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v9

    .line 2370
    iget-object v10, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v11, 0x7f120bcd

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    .line 2371
    invoke-static {v10, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 2372
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    sget-object v11, Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;->INSTANCE:Lcom/android/settings/wifi/slice/-$$Lambda$MGZTkxm_LWhWFo0-u65o5bz97bA;

    .line 2373
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 2374
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 2162
    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v9

    new-instance v10, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 2164
    invoke-virtual {v10, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    .line 2165
    invoke-virtual {v6, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    .line 2166
    invoke-virtual {v6, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 2163
    invoke-virtual {v9, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->j()V

    .line 99
    invoke-virtual {v3}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    .line 102
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/slice/WifiSlice;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/slices/c;->a(Landroid/net/Uri;)Lcom/android/settings/slices/c;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/slice/WifiScanWorker;

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1}, Lcom/android/settings/wifi/slice/WifiScanWorker;->e()Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v8

    :goto_1
    if-nez v6, :cond_3

    move v7, v5

    goto :goto_2

    .line 104
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-lez v7, :cond_4

    .line 105
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/wifi/a;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v9, :cond_6

    .line 3143
    iget-object v10, v0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 3173
    iget-object v11, v1, Lcom/android/settings/wifi/slice/WifiScanWorker;->a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    if-eqz v11, :cond_5

    iget-object v11, v1, Lcom/android/settings/wifi/slice/WifiScanWorker;->a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    invoke-virtual {v11, v10}, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a(Landroid/net/Network;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 3177
    :cond_5
    invoke-virtual {v1}, Lcom/android/settings/wifi/slice/WifiScanWorker;->k()V

    .line 3179
    new-instance v11, Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    invoke-direct {v11, v1, v10}, Lcom/android/settings/wifi/slice/WifiScanWorker$a;-><init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Landroid/net/Network;)V

    iput-object v11, v1, Lcom/android/settings/wifi/slice/WifiScanWorker;->a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    .line 3180
    iget-object v10, v1, Lcom/android/settings/wifi/slice/WifiScanWorker;->b:Landroid/net/ConnectivityManager;

    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 3182
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 3183
    invoke-virtual {v11, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    .line 3184
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v11

    iget-object v1, v1, Lcom/android/settings/wifi/slice/WifiScanWorker;->a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    new-instance v12, Landroid/os/Handler;

    .line 3186
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3180
    invoke-virtual {v10, v11, v1, v12}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_4

    .line 3145
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings/wifi/slice/WifiScanWorker;->k()V

    :cond_7
    :goto_4
    if-ge v9, v7, :cond_9

    .line 115
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    move v1, v2

    .line 122
    :goto_5
    iget-object v9, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v10, 0x7f121621

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    move v10, v1

    move v1, v5

    :goto_6
    if-ge v1, v4, :cond_16

    if-ge v1, v7, :cond_14

    .line 125
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/wifi/a;

    .line 4170
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 4321
    iget-object v12, v0, Lcom/android/settings/wifi/slice/WifiSlice;->e:Landroid/net/ConnectivityManager;

    iget-object v13, v0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    .line 4322
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v13

    .line 4321
    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    .line 4323
    invoke-static {v12}, Lcom/android/settings/wifi/i;->a(Landroid/net/NetworkCapabilities;)Z

    move-result v12

    if-eqz v12, :cond_a

    move v12, v2

    goto :goto_7

    :cond_a
    move v12, v5

    .line 4171
    :goto_7
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_b

    .line 5194
    iget-object v14, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v15, 0x7f121a6d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_8

    .line 6187
    :cond_b
    invoke-virtual {v11, v5}, Lcom/android/settingslib/wifi/a;->b(Z)Ljava/lang/String;

    move-result-object v14

    .line 5198
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    iget-object v14, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v15, 0x7f1207fd

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 6202
    :cond_c
    :goto_8
    iget-object v15, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    .line 6204
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v2

    .line 6990
    iget v4, v11, Lcom/android/settingslib/wifi/a;->h:I

    .line 6994
    iget-boolean v8, v11, Lcom/android/settingslib/wifi/a;->i:Z

    if-eqz v8, :cond_d

    .line 6998
    iget-boolean v8, v11, Lcom/android/settingslib/wifi/a;->j:Z

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    move v8, v5

    .line 6203
    :goto_9
    invoke-static {v2, v4, v8}, Lcom/android/settingslib/l;->a(IIZ)I

    move-result v2

    .line 6202
    invoke-virtual {v15, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6210
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v4

    const v8, 0x1010429

    if-eqz v4, :cond_f

    .line 7010
    iget-object v4, v11, Lcom/android/settingslib/wifi/a;->l:Landroid/net/NetworkInfo;

    .line 6211
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 6212
    sget-object v15, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v15, :cond_e

    .line 6213
    iget-object v4, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v4

    goto :goto_a

    .line 6215
    :cond_e
    iget-object v4, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v4, v8}, Lcom/android/settings/m;->h(Landroid/content/Context;I)I

    move-result v4

    goto :goto_a

    .line 6219
    :cond_f
    iget-object v4, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result v4

    .line 6222
    :goto_a
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v4, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6223
    invoke-static {v2}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 4174
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 4175
    invoke-virtual {v4, v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 4176
    invoke-virtual {v4, v13}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 4177
    invoke-virtual {v4, v14}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 4178
    invoke-direct {v0, v11, v12, v2, v13}, Lcom/android/settings/wifi/slice/WifiSlice;->a(Lcom/android/settingslib/wifi/a;ZLandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    if-eqz v12, :cond_10

    .line 7238
    iget-object v4, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v8, 0x7f080813

    .line 7239
    invoke-static {v4, v8}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 7238
    invoke-direct {v0, v11, v5, v4, v13}, Lcom/android/settings/wifi/slice/WifiSlice;->a(Lcom/android/settingslib/wifi/a;ZLandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 4182
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    goto :goto_c

    .line 8227
    :cond_10
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v4

    if-nez v4, :cond_12

    .line 9014
    iget v4, v11, Lcom/android/settingslib/wifi/a;->e:I

    if-eqz v4, :cond_11

    .line 8230
    iget-object v4, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v8, 0x7f0806ee

    invoke-static {v4, v8}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    goto :goto_b

    .line 8231
    :cond_11
    invoke-virtual {v11}, Lcom/android/settingslib/wifi/a;->e()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 8232
    iget-object v4, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v8, 0x7f0806ef

    invoke-static {v4, v8}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_13

    .line 4186
    invoke-virtual {v2, v8, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 125
    :cond_13
    :goto_c
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_d

    :cond_14
    if-eqz v10, :cond_15

    .line 9308
    iget-object v2, v0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v4, 0x7f1219ac

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 9311
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v4}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 9314
    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 9315
    invoke-virtual {v8, v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 9316
    invoke-virtual {v4, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 9317
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move v10, v5

    goto :goto_d

    .line 130
    :cond_15
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 131
    invoke-virtual {v2, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 130
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :goto_d
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 135
    :cond_16
    invoke-virtual {v3}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    .line 333
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 332
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/settings/slices/a;->y:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const v1, 0x7f121a45

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 344
    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/WifiSettings;

    .line 345
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25b

    .line 344
    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->c:Landroid/content/Context;

    .line 347
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    .line 379
    const-class v0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    return-object v0
.end method
