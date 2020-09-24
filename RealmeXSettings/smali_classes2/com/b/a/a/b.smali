.class public final Lcom/b/a/a/b;
.super Landroid/database/ContentObserver;
.source "OapsBridgeObserver.java"


# static fields
.field private static e:Landroid/os/Handler;

.field private static f:Landroid/os/HandlerThread;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/b/a/a/a/b;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/b/a/a/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/b/a/a/a/b;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/b/a/a/a/b;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/b/a/a/b;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/b/a/a/b;->a:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/b/a/a/b;->b:Lcom/b/a/a/a/b;

    .line 20
    iput-object v0, p0, Lcom/b/a/a/b;->c:Ljava/util/Map;

    .line 21
    iput-object v0, p0, Lcom/b/a/a/b;->d:Landroid/net/Uri;

    .line 25
    iput-object p1, p0, Lcom/b/a/a/b;->a:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/b/a/a/b;->b:Lcom/b/a/a/a/b;

    .line 27
    iput-object p2, p0, Lcom/b/a/a/b;->c:Ljava/util/Map;

    .line 28
    iput-object p4, p0, Lcom/b/a/a/b;->d:Landroid/net/Uri;

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 3

    .line 62
    sget-object v0, Lcom/b/a/a/b;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/b/a/a/b;->f:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/b/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "oaps_callback"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 65
    sput-object v1, Lcom/b/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/b/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/b/a/a/b;->e:Landroid/os/Handler;

    .line 68
    :cond_1
    sget-object v1, Lcom/b/a/a/b;->e:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/b/a/a/b;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/b;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/b/a/a/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/b/a/a/b;->d:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/b/a/a/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/b/a/a/b;->b:Lcom/b/a/a/a/b;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/b/a/a/b;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/b/a/p;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/b/a/a/a/b;->a(Ljava/util/Map;Landroid/database/Cursor;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/b/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
