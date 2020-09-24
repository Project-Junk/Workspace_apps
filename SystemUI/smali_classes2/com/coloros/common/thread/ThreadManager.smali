.class public Lcom/coloros/common/thread/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadManager"

.field private static sThreadManager:Lcom/coloros/common/thread/ThreadManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMainHandler:Landroid/os/Handler;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/coloros/common/thread/ThreadManager;

    invoke-direct {v0}, Lcom/coloros/common/thread/ThreadManager;-><init>()V

    sput-object v0, Lcom/coloros/common/thread/ThreadManager;->sThreadManager:Lcom/coloros/common/thread/ThreadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/common/thread/ThreadManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/coloros/common/thread/ThreadManager;->sThreadManager:Lcom/coloros/common/thread/ThreadManager;

    return-object v0
.end method


# virtual methods
.method public getMainHandler()Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/common/thread/ThreadManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getThreadHandler()Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/common/thread/ThreadManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public initThreadPool()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 81
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public initThreadPool(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 75
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/common/thread/ThreadManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public postInMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/coloros/common/thread/ThreadManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public postInTheadPool(Ljava/lang/Runnable;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/coloros/common/thread/ThreadManager;->initThreadPool()V

    .line 87
    iget-object p0, p0, Lcom/coloros/common/thread/ThreadManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postInThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/common/thread/ThreadManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mMainHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThreadManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    iget-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    iget-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/common/thread/ThreadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/common/thread/ThreadManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
