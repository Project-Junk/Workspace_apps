.class public Lcom/android/settings/slices/SettingsSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "SettingsSliceProvider.java"


# static fields
.field private static final d:Landroid/util/KeyValueListParser;


# instance fields
.field a:Lcom/android/settings/slices/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/e;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    sput-object v0, Lcom/android/settings/slices/SettingsSliceProvider;->d:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    .line 132
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->c:Ljava/util/Map;

    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 436
    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/slices/a;->y:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/a;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/a;->l:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 372
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "action"

    .line 374
    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 377
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 379
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 430
    invoke-static {}, Lcom/android/settings/slices/SettingsSliceProvider;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 432
    :cond_0
    invoke-static {}, Lcom/android/settings/slices/SettingsSliceProvider;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSliceProvider"

    if-eqz v0, :cond_3

    .line 319
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 323
    new-array v2, v2, [Ljava/lang/Object;

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Whitelisting %d uris to %d pkgs."

    .line 323
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-class v1, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceManager;

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 329
    array-length v2, v0

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 330
    invoke-virtual {p0, v5, v1}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "No packages to whitelist, skipping."

    .line 320
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/content/IntentFilter;Landroid/net/Uri;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/slices/SliceRelayReceiver;

    invoke-static {v0, p2, v1, p1}, Lcom/android/settingslib/j;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 416
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$pJcyi6e0wGkitFLtq4mEHDmyO7U;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$pJcyi6e0wGkitFLtq4mEHDmyO7U;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic a(Lcom/android/settings/core/a;Landroid/net/Uri;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Lcom/android/settings/slices/g;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/slices/b;Landroid/net/Uri;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Lcom/android/settings/slices/g;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Lcom/android/settings/slices/g;Landroid/net/Uri;)V
    .locals 2

    .line 336
    invoke-interface {p1}, Lcom/android/settings/slices/g;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 345
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting background worker for: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    invoke-static {v0, p1, p2}, Lcom/android/settings/slices/c;->a(Landroid/content/Context;Lcom/android/settings/slices/g;Landroid/net/Uri;)Lcom/android/settings/slices/c;

    move-result-object p1

    .line 348
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p1}, Lcom/android/settings/slices/c;->a()V

    return-void
.end method

.method private static b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 444
    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/slices/a;->k:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/a;->o:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/a;->z:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic b(Landroid/net/Uri;)V
    .locals 6

    const-string v0, "SettingsSliceProvider"

    .line 17387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 17391
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->a:Lcom/android/settings/slices/h;

    invoke-virtual {v3, p1}, Lcom/android/settings/slices/h;->a(Landroid/net/Uri;)Lcom/android/settings/slices/e;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17398
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 17397
    invoke-static {v4, v3}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/slices/e;)Lcom/android/settings/core/a;

    move-result-object v4

    .line 17400
    invoke-virtual {v4}, Lcom/android/settings/core/a;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 17402
    invoke-direct {p0, v5, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 17405
    :cond_0
    new-instance v5, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$aQdLTOFEDP1zwrX5cLyIIhfQpeo;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/a;Landroid/net/Uri;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    .line 17407
    iget-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->b:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17408
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 17410
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Built slice ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") in: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17410
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    .line 17393
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Could not create slicedata for uri: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blocked_slices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 468
    :try_start_0
    sget-object v2, Lcom/android/settings/slices/SettingsSliceProvider;->d:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const-string v2, ":"

    .line 16481
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16482
    array-length v2, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16486
    new-array v0, v0, [Ljava/lang/String;

    .line 475
    :goto_0
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SettingsSliceProvider"

    const-string v3, "Bad Settings Slices Whitelist flags"

    .line 470
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private synthetic c(Landroid/net/Uri;)V
    .locals 3

    .line 18353
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/c;

    if-eqz v0, :cond_0

    .line 18355
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping background worker for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsSliceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18356
    invoke-virtual {v0}, Lcom/android/settings/slices/c;->b()V

    .line 18357
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic d()V
    .locals 0

    .line 364
    invoke-static {}, Lcom/android/settings/slices/c;->d()V

    return-void
.end method

.method public static synthetic lambda$I2GoBDK3AEpHEBwiisEoMMxtPxg(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/b;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Lcom/android/settings/slices/b;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$WLH9TcofNDU2UnDhTKbwnxckmeA()V
    .locals 0

    invoke-static {}, Lcom/android/settings/slices/SettingsSliceProvider;->d()V

    return-void
.end method

.method public static synthetic lambda$ZC2OpEGpgHda4qyTTzPt-zsPu3w(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$aQdLTOFEDP1zwrX5cLyIIhfQpeo(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/a;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Lcom/android/settings/core/a;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$pJcyi6e0wGkitFLtq4mEHDmyO7U(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->b(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 13

    const-string v0, "SliceBuilder"

    .line 176
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 178
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 180
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 179
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->c()Ljava/util/Set;

    move-result-object v2

    .line 184
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v0, "SettingsSliceProvider"

    const-string v2, "Requested blocked slice with Uri: "

    .line 186
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    .line 192
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/settings/slices/a;->c(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/android/settings/slices/j;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/b;

    move-result-object p1

    .line 196
    invoke-interface {p1}, Lcom/android/settings/slices/b;->a()Landroidx/slice/Slice;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 199
    :cond_2
    :try_start_2
    sget-object v2, Lcom/android/settings/slices/a;->w:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/slices/j;->d(Landroid/content/Context;)Lcom/android/settings/wifi/calling/d;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/calling/d;->a(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 204
    :cond_3
    :try_start_3
    sget-object v2, Lcom/android/settings/slices/a;->z:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/x;->a(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 206
    :cond_4
    :try_start_4
    sget-object v2, Lcom/android/settings/slices/a;->c:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/i;->a(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 208
    :cond_5
    :try_start_5
    sget-object v2, Lcom/android/settings/slices/a;->j:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/slices/j;->e(Landroid/content/Context;)Lcom/android/settings/network/telephony/c;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/c;->a(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 213
    :cond_6
    :try_start_6
    sget-object v2, Lcom/android/settings/slices/a;->x:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/slices/j;->d(Landroid/content/Context;)Lcom/android/settings/wifi/calling/d;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/calling/d;->b(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 220
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/slices/e;

    if-nez v2, :cond_8

    .line 222
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/net/Uri;)V

    .line 1425
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 232
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    .line 227
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getPinnedSlices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 228
    iget-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating slice for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2111
    iget-object v5, v2, Lcom/android/settings/slices/e;->i:Ljava/lang/String;

    .line 2078
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/slices/e;)Lcom/android/settings/core/a;

    move-result-object v4

    .line 2080
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x55b

    const/4 v9, 0x0

    .line 3079
    iget-object v10, v2, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    const/4 v11, 0x0

    .line 2081
    invoke-virtual/range {v6 .. v11}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 2087
    invoke-virtual {v4}, Lcom/android/settings/core/a;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_1

    .line 2092
    :cond_a
    invoke-virtual {v4}, Lcom/android/settings/core/a;->getAvailabilityStatus()I

    move-result v5

    const/4 v6, 0x5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-ne v5, v6, :cond_c

    .line 4083
    iget-object v0, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 3419
    invoke-static {v2}, Lcom/android/settings/slices/d;->a(Lcom/android/settings/slices/e;)Ljava/util/Set;

    move-result-object v3

    .line 3420
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v4

    .line 4123
    iget-object v5, v2, Lcom/android/settings/slices/e;->l:Ljava/lang/String;

    .line 3423
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_0

    :cond_b
    const v5, 0x7f1207f5

    .line 3424
    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3425
    :goto_0
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->d(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    .line 3427
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->b(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 3426
    invoke-static {v10, v6, v9, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v10

    .line 3430
    new-instance v11, Landroidx/slice/builders/ListBuilder;

    .line 5107
    iget-object v2, v2, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 3430
    invoke-direct {v11, p1, v2, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 3431
    invoke-virtual {v11, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 3433
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 3434
    invoke-virtual {v0, v6, v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 3435
    invoke-virtual {v0, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 3436
    invoke-virtual {v0, v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 3432
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 3437
    invoke-virtual {p1, v3}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 3438
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3

    goto/16 :goto_1

    .line 2096
    :cond_c
    invoke-virtual {v4}, Lcom/android/settings/core/a;->isCopyableSlice()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v0, "com.android.settings.slice.action.COPY"

    .line 5376
    invoke-static {p1, v0, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f0806c6

    .line 5378
    invoke-static {p1, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    .line 6083
    iget-object v5, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 5380
    invoke-static {v0, v3, v9, v5}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 5333
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->b(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 5334
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->d(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 7083
    iget-object v6, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 5335
    invoke-static {v3, v5, v9, v6}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 5338
    invoke-static {p1, v4, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/core/a;Lcom/android/settings/slices/e;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5339
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v5

    .line 5340
    invoke-static {v2}, Lcom/android/settings/slices/d;->a(Lcom/android/settings/slices/e;)Ljava/util/Set;

    move-result-object v6

    .line 5342
    new-instance v9, Landroidx/slice/builders/ListBuilder;

    .line 7107
    iget-object v10, v2, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 5342
    invoke-direct {v9, p1, v10, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 5343
    invoke-virtual {v9, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 8083
    iget-object v2, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 5345
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 5346
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 5347
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 5348
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 5344
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 5349
    invoke-virtual {p1, v6}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 5350
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3

    goto/16 :goto_1

    .line 8115
    :cond_d
    iget v5, v2, Lcom/android/settings/slices/e;->j:I

    if-eqz v5, :cond_11

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 14302
    move-object v5, v4

    check-cast v5, Lcom/android/settings/core/SliderPreferenceController;

    .line 14303
    invoke-virtual {v5}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v10

    if-gt v6, v10, :cond_e

    .line 14304
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid sliderController: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/settings/core/SliderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    const-string v0, "com.android.settings.slice.action.SLIDER_CHANGED"

    .line 14372
    invoke-static {p1, v0, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 14308
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->b(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 14309
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->d(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    .line 14310
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v10

    .line 14311
    invoke-static {p1, v4, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/core/a;Lcom/android/settings/slices/e;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 15083
    iget-object v11, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 14312
    invoke-static {v3, v6, v9, v11}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 14314
    invoke-static {v2}, Lcom/android/settings/slices/d;->a(Lcom/android/settings/slices/e;)Ljava/util/Set;

    move-result-object v6

    .line 14316
    new-instance v9, Landroidx/slice/builders/ListBuilder;

    .line 15107
    iget-object v11, v2, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 14316
    invoke-direct {v9, p1, v11, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 14317
    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v7, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    .line 16083
    iget-object v2, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 14319
    invoke-virtual {v7, v2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    .line 14320
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    .line 14321
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    .line 14322
    invoke-virtual {v5}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    .line 14323
    invoke-virtual {v5}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMin(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    .line 14324
    invoke-virtual {v5}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v2

    .line 14325
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    .line 14318
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 14326
    invoke-virtual {p1, v6}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 14327
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3

    goto/16 :goto_1

    .line 2108
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Slice type passed was invalid: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16115
    iget v2, v2, Lcom/android/settings/slices/e;->j:I

    .line 2109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11256
    :cond_10
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->b(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 11257
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->d(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 11258
    invoke-static {p1, v4, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/core/a;Lcom/android/settings/slices/e;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 11259
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v10

    .line 11260
    check-cast v4, Lcom/android/settings/core/TogglePreferenceController;

    .line 11263
    invoke-virtual {v4}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v4

    const-string v11, "com.android.settings.slice.action.TOGGLE_CHANGED"

    .line 11366
    invoke-static {p1, v11, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 11368
    invoke-static {v11, v3, v4}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 11264
    invoke-static {v2}, Lcom/android/settings/slices/d;->a(Lcom/android/settings/slices/e;)Ljava/util/Set;

    move-result-object v4

    .line 11266
    new-instance v11, Landroidx/slice/builders/ListBuilder;

    .line 12107
    iget-object v12, v2, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 11266
    invoke-direct {v11, p1, v12, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 11267
    invoke-virtual {v11, v10}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v7, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 13083
    iget-object v8, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 11269
    invoke-virtual {v7, v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v7

    .line 11270
    invoke-virtual {v7, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    .line 14083
    iget-object v2, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 11272
    invoke-static {v0, v5, v9, v2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 11271
    invoke-virtual {v6, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 11274
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 11268
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 11275
    invoke-virtual {p1, v4}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 11276
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3

    goto :goto_1

    .line 8281
    :cond_11
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->b(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 8282
    invoke-static {p1, v2}, Lcom/android/settings/slices/d;->d(Landroid/content/Context;Lcom/android/settings/slices/e;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    .line 8283
    invoke-static {p1, v4, v2}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/core/a;Lcom/android/settings/slices/e;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 8284
    invoke-static {p1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v5

    .line 8285
    invoke-static {v2}, Lcom/android/settings/slices/d;->a(Lcom/android/settings/slices/e;)Ljava/util/Set;

    move-result-object v6

    .line 8287
    new-instance v10, Landroidx/slice/builders/ListBuilder;

    .line 9107
    iget-object v11, v2, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 8287
    invoke-direct {v10, p1, v11, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 8288
    invoke-virtual {v10, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 10083
    iget-object v7, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 8290
    invoke-virtual {v5, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 8291
    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 11083
    iget-object v2, v2, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 8293
    invoke-static {v0, v3, v9, v2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 8292
    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 8289
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 8296
    invoke-virtual {p1, v6}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 8297
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 232
    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    :catchall_0
    move-exception p1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 233
    throw p1
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 306
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 137
    new-instance v0, Lcom/android/settings/slices/h;

    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/slices/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->a:Lcom/android/settings/slices/h;

    .line 138
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->b:Ljava/util/Map;

    const/4 v0, 0x1

    return v0
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-static {p1}, Lcom/android/settings/slices/d;->a(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "android.settings.slices"

    if-eqz v2, :cond_1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    iget-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->a:Lcom/android/settings/slices/h;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/slices/h;->a(Z)Ljava/util/List;

    move-result-object p1

    .line 274
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->a:Lcom/android/settings/slices/h;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/slices/h;->a(Z)Ljava/util/List;

    move-result-object v2

    .line 276
    invoke-static {p1, v3}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "com.android.settings.slices"

    .line 277
    invoke-static {v2, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-static {v1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-static {v4}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "/action"

    .line 286
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/intent"

    .line 287
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 294
    :cond_2
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 295
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->a:Lcom/android/settings/slices/h;

    invoke-virtual {v2, p1}, Lcom/android/settings/slices/h;->a(Z)Ljava/util/List;

    move-result-object v2

    .line 296
    invoke-static {v2, v1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-static {p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 2

    .line 144
    invoke-static {p1}, Lcom/android/settings/slices/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/settings/slices/j;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/b;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Lcom/android/settings/slices/b;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0, v1, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 152
    :cond_0
    new-instance v1, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$I2GoBDK3AEpHEBwiisEoMMxtPxg;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$I2GoBDK3AEpHEBwiisEoMMxtPxg;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/b;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/android/settings/slices/a;->z:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object v0, Lcom/android/settings/notification/x;->a:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 159
    :cond_2
    sget-object v0, Lcom/android/settings/slices/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lcom/android/settings/bluetooth/i;->a:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 165
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/j;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$ZC2OpEGpgHda4qyTTzPt-zsPu3w;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$ZC2OpEGpgHda4qyTTzPt-zsPu3w;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 363
    sget-object v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$WLH9TcofNDU2UnDhTKbwnxckmeA;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$WLH9TcofNDU2UnDhTKbwnxckmeA;

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
