.class public final Lcom/android/settings/homepage/contextualcards/j;
.super Ljava/lang/Object;
.source "EligibleCardChecker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/homepage/contextualcards/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/homepage/contextualcards/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/j;->b:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/j;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 116
    new-array v7, v1, [Landroidx/slice/Slice;

    .line 117
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 118
    new-instance v9, Lcom/android/settings/homepage/contextualcards/j$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/homepage/contextualcards/j$1;-><init>(Lcom/android/settings/homepage/contextualcards/j;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroid/net/Uri;Landroidx/slice/SliceViewManager;)V

    .line 135
    invoke-virtual {v0, p1, v9}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 137
    invoke-virtual {v0, p1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v1

    invoke-interface {v9, v1}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    const-wide/16 v1, 0xc8

    .line 139
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error waiting for slice binding for uri"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EligibleCardChecker"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-virtual {v0, p1, v9}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :goto_0
    const/4 p1, 0x0

    .line 144
    aget-object p1, v7, p1

    return-object p1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1059
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/j;->b:Landroid/content/Context;

    .line 1060
    invoke-static {v2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    .line 1063
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    .line 2086
    iget-wide v4, v3, Lcom/android/settings/homepage/contextualcards/b;->b:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v4, :cond_0

    goto :goto_0

    .line 2154
    :cond_0
    iget-object v4, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3094
    iget-object v4, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1096
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 1100
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/homepage/contextualcards/j;->a(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v7

    .line 3149
    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/j;->b:Landroid/content/Context;

    invoke-static {v8, v7}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v8

    .line 3150
    invoke-virtual {v8}, Landroidx/slice/SliceMetadata;->getToggles()Ljava/util/List;

    move-result-object v8

    .line 3152
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_2

    .line 3170
    iget-object v3, v3, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    .line 3400
    iput-boolean v5, v3, Lcom/android/settings/homepage/contextualcards/b$a;->u:Z

    .line 1103
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    :cond_2
    if-eqz v7, :cond_3

    const-string v3, "error"

    .line 1106
    invoke-virtual {v7, v3}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1107
    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to bind slice, not eligible for display "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EligibleCardChecker"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    if-eqz v6, :cond_5

    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    .line 1064
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    .line 4090
    iget-object v7, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v3, v2

    .line 1064
    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 1068
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    .line 1070
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    .line 5090
    iget-object v7, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v2

    .line 1070
    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    const/4 v3, 0x0

    :goto_1
    move-object v9, v3

    const/4 v4, 0x0

    const/16 v5, 0x694

    const/16 v6, 0x5de

    .line 1077
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/j;->a:Lcom/android/settings/homepage/contextualcards/b;

    .line 6090
    iget-object v7, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    long-to-int v8, v10

    move-object v3, v2

    .line 1077
    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-object v9
.end method
