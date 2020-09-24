.class public Lcom/coloros/anim/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;)Lcom/coloros/anim/a;

    move-result-object v0

    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;Lcom/coloros/anim/a;)V

    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, v0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/coloros/anim/e;

    invoke-direct {v0, p1}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_1
    return-object v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_2
    throw p1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonInputStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method

.method public static a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromZipStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/coloros/anim/g;->b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectiveCompositionFactory::fromRawRes."

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/coloros/anim/g;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coloros/anim/g$5;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/g$5;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromUrl url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coloros/anim/g$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonReader cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/g$6;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/g$6;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;>;)",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;)Lcom/coloros/anim/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::cachdComposition isn\'t null, cacheKey is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/anim/f;

    new-instance p1, Lcom/coloros/anim/g$7;

    invoke-direct {p1, v0}, Lcom/coloros/anim/g$7;-><init>(Lcom/coloros/anim/a;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/f;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/f;

    return-object p0

    :cond_2
    new-instance v0, Lcom/coloros/anim/f;

    invoke-direct {v0, p1}, Lcom/coloros/anim/f;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/coloros/anim/g$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/g$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    new-instance p1, Lcom/coloros/anim/g$3;

    invoke-direct {p1, p0}, Lcom/coloros/anim/g$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f;->c(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    sget-object p1, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Lcom/coloros/anim/a;Ljava/lang/String;)Lcom/coloros/anim/h;
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/anim/a;->l()Ljava/util/Map;

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

    check-cast v0, Lcom/coloros/anim/h;

    invoke-virtual {v0}, Lcom/coloros/anim/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/coloros/anim/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectiveCompositionFactory::fromRawResSync."

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lcom/coloros/anim/g;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, p0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonReaderSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-boolean v1, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectiveCompositionFactory::fromZipStreamSyncInternal cacheKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    sget-boolean v2, Lcom/coloros/anim/f/b;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry == null ? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_7

    sget-boolean v6, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "__MACOSX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v1, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1, v2, v3}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/e;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/a;

    move-object v5, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    sub-int/2addr v6, v4

    aget-object v1, v1, v6

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    if-nez v5, :cond_8

    new-instance p0, Lcom/coloros/anim/e;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p0

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/coloros/anim/g;->a(Lcom/coloros/anim/a;Ljava/lang/String;)Lcom/coloros/anim/h;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/coloros/anim/h;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Lcom/coloros/anim/a;->l()Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/h;

    invoke-virtual {v1}, Lcom/coloros/anim/h;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    new-instance p0, Lcom/coloros/anim/e;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/h;

    invoke-virtual {v0}, Lcom/coloros/anim/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_c
    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;Lcom/coloros/anim/a;)V

    new-instance p0, Lcom/coloros/anim/e;

    invoke-direct {p0, v5}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, p0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromAsset fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/coloros/anim/g$4;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/g$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromAssetSync fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

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

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/coloros/anim/g;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, p0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
