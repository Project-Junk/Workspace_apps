.class public Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static volatile sThreadPollManager:Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;


# instance fields
.field private mComputationPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mIoThreadPollManager:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mIoThreadPollManager:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    iput-object v0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mComputationPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->sThreadPollManager:Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->sThreadPollManager:Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    invoke-direct {v1}, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;-><init>()V

    sput-object v1, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->sThreadPollManager:Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->sThreadPollManager:Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public getComputationPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 40
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mComputationPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    .line 42
    div-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 43
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mComputationPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mComputationPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public getIOPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 29
    iget-object v0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mIoThreadPollManager:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    .line 31
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 32
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mIoThreadPollManager:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/oppo/weatherservicesdk/Utils/ThreadPoolManager;->mIoThreadPollManager:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method
