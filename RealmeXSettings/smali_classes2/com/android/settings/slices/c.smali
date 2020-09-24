.class public abstract Lcom/android/settings/slices/c;
.super Ljava/lang/Object;
.source "SliceBackgroundWorker.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/net/Uri;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/slices/c;->a:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/settings/slices/c;->b:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;)Lcom/android/settings/slices/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/c;",
            ">;)",
            "Lcom/android/settings/slices/c;"
        }
    .end annotation

    .line 97
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create instance: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SliceBackgroundWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 99
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/net/Uri;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/slices/c;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 102
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid slice background worker: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Landroid/content/Context;Lcom/android/settings/slices/g;Landroid/net/Uri;)Lcom/android/settings/slices/c;
    .locals 1

    .line 85
    invoke-static {p2}, Lcom/android/settings/slices/c;->a(Landroid/net/Uri;)Lcom/android/settings/slices/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/android/settings/slices/g;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;)Lcom/android/settings/slices/c;

    move-result-object v0

    .line 90
    sget-object p0, Lcom/android/settings/slices/c;->a:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Lcom/android/settings/slices/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/slices/c;",
            ">(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/android/settings/slices/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/slices/c;

    return-object p0
.end method

.method static d()V
    .locals 4

    .line 108
    sget-object v0, Lcom/android/settings/slices/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/c;

    .line 110
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/slices/c;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SliceBackgroundWorker"

    const-string v3, "Shutting down worker failed"

    .line 112
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/android/settings/slices/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)Z"
        }
    .end annotation

    .line 160
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract b()V
.end method

.method protected final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settings/slices/c;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/settings/slices/c;->c:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/slices/c;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 154
    iput-object p1, p0, Lcom/android/settings/slices/c;->c:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/slices/c;->f()V

    :cond_2
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/settings/slices/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final f()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/slices/c;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
