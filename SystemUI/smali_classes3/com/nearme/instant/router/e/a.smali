.class public final Lcom/nearme/instant/router/e/a;
.super Landroid/database/ContentObserver;


# static fields
.field private static e:Landroid/os/Handler;

.field private static f:Landroid/os/HandlerThread;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;

.field private c:Lcom/nearme/instant/router/callback/Callback;

.field private d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nearme/instant/router/e/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/nearme/instant/router/callback/Callback;Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/nearme/instant/router/e/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/nearme/instant/router/e/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nearme/instant/router/e/a;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/nearme/instant/router/e/a;->c:Lcom/nearme/instant/router/callback/Callback;

    iput-object p4, p0, Lcom/nearme/instant/router/e/a;->d:Landroid/net/Uri;

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/nearme/instant/router/e/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nearme/instant/router/e/a;->f:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nearme/instant/router/e/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "instant_callback"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/nearme/instant/router/e/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    sget-object v1, Lcom/nearme/instant/router/e/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/nearme/instant/router/e/a;->e:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/nearme/instant/router/e/a;->e:Landroid/os/Handler;

    :cond_2
    :goto_0
    sget-object v1, Lcom/nearme/instant/router/e/a;->e:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nearme/instant/router/e/a;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/nearme/instant/router/e/a;->onChange(ZLandroid/net/Uri;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nearme/instant/router/e/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/nearme/instant/router/e/a;->d:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nearme/instant/router/e/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nearme/instant/router/e/a;->c:Lcom/nearme/instant/router/callback/Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nearme/instant/router/e/a;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/nearme/instant/router/g/c;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/nearme/instant/router/callback/Callback;->onResponse(Ljava/util/Map;Landroid/database/Cursor;)V

    :cond_0
    iget-object p1, p0, Lcom/nearme/instant/router/e/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
