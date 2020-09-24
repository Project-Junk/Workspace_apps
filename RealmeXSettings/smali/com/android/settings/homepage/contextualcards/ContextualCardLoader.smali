.class public Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "ContextualCardLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/List<",
        "Lcom/android/settings/homepage/contextualcards/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Landroid/database/ContentObserver;

.field private final d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;

    new-instance v1, Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->c:Landroid/database/ContentObserver;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 138
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object p1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    .line 146
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    .line 148
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    const/16 v3, 0x680

    .line 150
    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/a/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContextualCardLoader"

    const-string v2, "Skipping - in legacy suggestion mode"

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/a;->a(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/a;

    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "cards"

    const-string v5, "card_dismissed=0"

    const-string v9, "score DESC"

    .line 1202
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 112
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    .line 114
    new-instance v3, Lcom/android/settings/homepage/contextualcards/b;

    invoke-direct {v3, v1}, Lcom/android/settings/homepage/contextualcards/b;-><init>(Landroid/database/Cursor;)V

    .line 2154
    iget-object v4, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3094
    iget-object v4, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2185
    sget-object v5, Lcom/android/settings/slices/a;->f:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 4094
    iget-object v4, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2186
    sget-object v6, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5094
    iget-object v4, v3, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2187
    sget-object v6, Lcom/android/settings/slices/a;->e:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    .line 5170
    iget-object v3, v3, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    .line 5385
    iput-boolean v5, v3, Lcom/android/settings/homepage/contextualcards/b$a;->r:Z

    .line 118
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 120
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_4
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 111
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    .line 124
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_5
    throw v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/b;

    .line 166
    new-instance v3, Lcom/android/settings/homepage/contextualcards/j;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/settings/homepage/contextualcards/j;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/b;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const-wide/16 v2, 0xfa

    .line 172
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/b;

    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    const-string v2, "ContextualCardLoader"

    const-string v3, "Failed to get eligible state for card, likely timeout. Skipping"

    .line 178
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onStartLoading()V
    .locals 4

    .line 84
    invoke-super {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStartLoading()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->a:Landroid/net/Uri;

    .line 86
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->c:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStopLoading()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStopLoading()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
