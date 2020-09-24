.class public Lcom/oppo/music/manager/AsyncRequestManager;
.super Ljava/lang/Object;
.source "AsyncRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;,
        Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;,
        Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRequestManager"

.field private static final THREAD_POOL_ALIVE_TIME:I = 0x1e

.field private static final THREAD_POOL_CORE_SIZE:I = 0x0

.field private static final THREAD_POOL_MAX_SIZE:I = 0xa

.field private static sInstance:Lcom/oppo/music/manager/AsyncRequestManager;


# instance fields
.field private mBlocked:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 11

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 54
    new-instance v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V

    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xa

    const-wide/16 v5, 0x1e

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/music/manager/AsyncRequestManager;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oppo/music/manager/AsyncRequestManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oppo/music/manager/AsyncRequestManager;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/oppo/music/manager/AsyncRequestManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-direct {v0}, Lcom/oppo/music/manager/AsyncRequestManager;-><init>()V

    sput-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    .line 65
    :cond_0
    sget-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    return-object v0
.end method


# virtual methods
.method public block()V
    .locals 2

    const-string v0, "AsyncRequestManager"

    const-string v1, "block()"

    .line 69
    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 72
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 128
    sput-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    .line 129
    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 131
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    .line 133
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 134
    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public isBlocked()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-boolean p0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "request() request=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncRequestManager"

    invoke-static {v1, v0}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Lcom/oppo/music/manager/AsyncRequestManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/music/manager/AsyncRequestManager$1;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V

    .line 120
    iget-object p0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 121
    invoke-virtual {p1, p0}, Lcom/oppo/music/manager/Request;->setFuture(Ljava/util/concurrent/Future;)V

    goto :goto_0

    :cond_0
    const-string p0, "request() parameters are invalid!"

    .line 123
    invoke-static {v1, p0}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unBlock()V
    .locals 2

    const-string v0, "AsyncRequestManager"

    const-string v1, "unBlock()"

    .line 77
    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 81
    iget-object p0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
