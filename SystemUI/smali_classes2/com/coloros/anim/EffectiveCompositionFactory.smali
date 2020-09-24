.class public Lcom/coloros/anim/EffectiveCompositionFactory;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"


# static fields
.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Lcom/coloros/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;>;)",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {}, Lcom/coloros/anim/model/EffectiveCompositionCache;->getInstance()Lcom/coloros/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/anim/model/EffectiveCompositionCache;->get(Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::cachdComposition isn\'t null, cacheKey is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 410
    new-instance p0, Lcom/coloros/anim/EffectiveAnimationTask;

    new-instance p1, Lcom/coloros/anim/EffectiveCompositionFactory$9;

    invoke-direct {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory$9;-><init>(Lcom/coloros/anim/EffectiveAnimationComposition;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 417
    sget-object v0, Lcom/coloros/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    sget-object p1, Lcom/coloros/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/EffectiveAnimationTask;

    return-object p0

    .line 421
    :cond_2
    new-instance v0, Lcom/coloros/anim/EffectiveAnimationTask;

    invoke-direct {v0, p1}, Lcom/coloros/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 422
    new-instance p1, Lcom/coloros/anim/EffectiveCompositionFactory$10;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveCompositionFactory$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationTask;->addListener(Lcom/coloros/anim/EffectiveAnimationListener;)Lcom/coloros/anim/EffectiveAnimationTask;

    .line 431
    new-instance p1, Lcom/coloros/anim/EffectiveCompositionFactory$11;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveCompositionFactory$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coloros/anim/EffectiveAnimationTask;->addFailureListener(Lcom/coloros/anim/EffectiveAnimationListener;)Lcom/coloros/anim/EffectiveAnimationTask;

    .line 437
    sget-object p1, Lcom/coloros/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static findImageAssetForFileName(Lcom/coloros/anim/EffectiveAnimationComposition;Ljava/lang/String;)Lcom/coloros/anim/EffectiveImageAsset;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/EffectiveImageAsset;

    .line 393
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 98
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromAsset fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 103
    new-instance v0, Lcom/coloros/anim/EffectiveCompositionFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 120
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromAssetSync fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 124
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    new-instance v0, Lcom/coloros/anim/EffectiveCompositionFactory$5;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$5;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 180
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonInputStream cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 183
    :cond_0
    new-instance v0, Lcom/coloros/anim/EffectiveCompositionFactory$4;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$4;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 196
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonInputStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 199
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 205
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 208
    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method

.method public static fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 266
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonReader cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 269
    :cond_0
    new-instance v0, Lcom/coloros/anim/EffectiveCompositionFactory$7;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$7;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 282
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonReaderSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 285
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-static {p0}, Lcom/coloros/anim/parser/EffectiveCompositionParser;->parse(Landroid/util/JsonReader;)Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/coloros/anim/model/EffectiveCompositionCache;->getInstance()Lcom/coloros/anim/model/EffectiveCompositionCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/coloros/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/coloros/anim/EffectiveAnimationComposition;)V

    .line 293
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {p1, v0}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 298
    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    :try_start_1
    new-instance v0, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {v0, p1}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 298
    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-object v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    throw p1
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 242
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonString cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 245
    :cond_0
    new-instance v0, Lcom/coloros/anim/EffectiveCompositionFactory$6;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 259
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonStringSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 262
    :cond_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 140
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectiveCompositionFactory::fromRawRes."

    .line 141
    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 145
    invoke-static {p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coloros/anim/EffectiveCompositionFactory$3;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$3;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 160
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectiveCompositionFactory::fromRawResSync."

    .line 161
    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 65
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromUrl url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/coloros/anim/EffectiveCompositionFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 84
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromUrlSync url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/anim/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationTask<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 304
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromZipStream cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 307
    :cond_0
    new-instance v0, Lcom/coloros/anim/EffectiveCompositionFactory$8;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory$8;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/EffectiveAnimationTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 322
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromZipStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 326
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/coloros/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationResult;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/EffectiveAnimationResult<",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    sget-boolean v1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v1, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectiveCompositionFactory::fromZipStreamSyncInternal cacheKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 340
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 341
    sget-boolean v2, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry == null ? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 345
    sget-boolean v6, Lcom/coloros/anim/utils/ColorLog;->DEBUG_COMPOSITION:Z

    if-eqz v6, :cond_3

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 348
    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "__MACOSX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 349
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 350
    :cond_4
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 351
    new-instance v1, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 352
    invoke-static {v1, v2, v4}, Lcom/coloros/anim/EffectiveCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/EffectiveAnimationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveAnimationComposition;

    move-object v5, v1

    goto :goto_2

    .line 353
    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 354
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 355
    array-length v6, v1

    sub-int/2addr v6, v3

    aget-object v1, v1, v6

    .line 356
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 358
    :cond_6
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 361
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    if-nez v5, :cond_8

    .line 369
    new-instance p0, Lcom/coloros/anim/EffectiveAnimationResult;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 372
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/coloros/anim/EffectiveCompositionFactory;->findImageAssetForFileName(Lcom/coloros/anim/EffectiveAnimationComposition;Ljava/lang/String;)Lcom/coloros/anim/EffectiveImageAsset;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 380
    :cond_a
    invoke-virtual {v5}, Lcom/coloros/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/EffectiveImageAsset;

    invoke-virtual {v1}, Lcom/coloros/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    .line 382
    new-instance p0, Lcom/coloros/anim/EffectiveAnimationResult;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/EffectiveImageAsset;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 386
    :cond_c
    invoke-static {}, Lcom/coloros/anim/model/EffectiveCompositionCache;->getInstance()Lcom/coloros/anim/model/EffectiveCompositionCache;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Lcom/coloros/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/coloros/anim/EffectiveAnimationComposition;)V

    .line 387
    new-instance p0, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {p0, v5}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 364
    new-instance p1, Lcom/coloros/anim/EffectiveAnimationResult;

    invoke-direct {p1, p0}, Lcom/coloros/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static rawResCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxCacheSize(I)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/coloros/anim/model/EffectiveCompositionCache;->getInstance()Lcom/coloros/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/anim/model/EffectiveCompositionCache;->resize(I)V

    return-void
.end method
