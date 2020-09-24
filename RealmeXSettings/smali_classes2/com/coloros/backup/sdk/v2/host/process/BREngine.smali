.class public Lcom/coloros/backup/sdk/v2/host/process/BREngine;
.super Ljava/lang/Object;
.source "BREngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;,
        Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;,
        Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;,
        Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;
    }
.end annotation


# static fields
.field private static final HYPNUS_TIME_OUT:I = 0x493e0

.field private static final MSG_FOR_HYPNUS:I = 0x11

.field public static final RUN_TYPE:Ljava/lang/String; = "runType"

.field public static final RUN_TYPE_AUTO:I = 0x0

.field public static final RUN_TYPE_MANUAL_BEGIN:I = 0x1

.field public static final RUN_TYPE_MANUAL_END:I = 0x3

.field public static final RUN_TYPE_MANUAL_STEP:I = 0x2

.field public static final RUN_TYPE_PREVIEW:I = 0x4

.field public static final TAG:Ljava/lang/String; = "BackupEngine"


# instance fields
.field private mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

.field private mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

.field private mCancelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mChildPlugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

.field private mContext:Landroid/content/Context;

.field private volatile mDirtyOnAllEnd:Z

.field private mHypnusHandler:Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;

.field private volatile mIsAllCancel:Z

.field private mLastSetHypnusTime:J

.field private mListenerThread:Landroid/os/HandlerThread;

.field private mPluginInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveMsgThread:Landroid/os/HandlerThread;

.field private mReceiveWorkThread:Landroid/os/HandlerThread;

.field private mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkThreadPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mPluginInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mIsAllCancel:Z

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mCancelMap:Ljava/util/HashMap;

    .line 70
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mTasks:Landroid/util/SparseArray;

    .line 72
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v1, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-direct {v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    .line 145
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRunningTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mDirtyOnAllEnd:Z

    const-string v0, "BackupEngine"

    const-string v1, "new BREngine()"

    .line 285
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mContext:Landroid/content/Context;

    .line 287
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mListenerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mListenerThread:Landroid/os/HandlerThread;

    .line 288
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 289
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mReceiverMsgThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveMsgThread:Landroid/os/HandlerThread;

    .line 290
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 291
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mReceiverWorkThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveWorkThread:Landroid/os/HandlerThread;

    .line 292
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v1, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    invoke-direct {v1, p0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mWorkThreadPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    .line 295
    invoke-static {}, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->perfServiceInit()V

    .line 296
    invoke-static {}, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->perfServiceEnable()V

    .line 298
    :try_start_0
    invoke-static {}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusServiceInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "HypnusServiceHelper.HypnusSetAction init failed"

    .line 300
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mHypnusHandler:Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/util/SparseArray;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mTasks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRunningTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/Bundle;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->getConfigBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1302(Lcom/coloros/backup/sdk/v2/host/process/BREngine;J)J
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mLastSetHypnusTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mIsAllCancel:Z

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mCancelMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mDirtyOnAllEnd:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mDirtyOnAllEnd:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/HandlerThread;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveMsgThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/os/HandlerThread;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveWorkThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-object p0
.end method

.method private getChildPlugins()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mChildPlugins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getChildBRPluginServiceInfos(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mChildPlugins:Ljava/util/HashMap;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mChildPlugins:Ljava/util/HashMap;

    return-object v0
.end method

.method private getConfigBundle()Landroid/os/Bundle;
    .locals 3

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    const-string v2, "config"

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 502
    :cond_0
    new-instance v1, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    .line 503
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 5

    const/4 v0, 0x1

    .line 439
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mIsAllCancel:Z

    .line 440
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BackupEngine"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    .line 442
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "plugin onCancel: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 443
    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->cancel(Landroid/os/Bundle;)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    .line 446
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRunningTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 447
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 448
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    const-string v4, "config"

    if-eqz v3, :cond_1

    .line 449
    invoke-virtual {v3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 451
    :cond_1
    new-instance v3, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>()V

    iput-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    .line 452
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    const-string v3, "cancelAll ,no task do onAllEnd"

    .line 454
    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onAllEnd(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public cancelPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mCancelMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->cancel(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public continueAll()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v2, 0x0

    .line 434
    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->doContinue(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public continuePlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->doContinue(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public getBRListener()Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    return-object v0
.end method

.method public invokeOtherPluginMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 394
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mPluginInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    .line 395
    invoke-virtual {v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->getChildPlugins()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 402
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    .line 403
    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 410
    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v4, p1

    move-object v6, p0

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V

    .line 413
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->setBRExceptionHandler(Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;)V

    .line 414
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->setBREngineConfig(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    .line 416
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->setBRListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V

    .line 417
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->getConfigBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 418
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 419
    invoke-virtual {p1, v0, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->invokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 421
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "invokeOtherPluginMethod not info found:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupEngine"

    invoke-static {p2, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public pauseAll()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v2, 0x0

    .line 428
    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->doPause(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pausePlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mRecordTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->doPause(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mWorkThreadPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->stop()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mReceiveWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 487
    :cond_3
    invoke-static {}, Lcom/coloros/backup/sdk/v2/common/utils/PerfServiceManager;->perfServiceDisable()V

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 490
    :try_start_0
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusSetAction(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BackupEngine"

    const-string v1, "HypnusServiceHelper.HypnusSetAction failed"

    .line 492
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    .line 494
    iput-wide v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mLastSetHypnusTime:J

    return-void
.end method

.method public setBRConfig(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 1

    .line 464
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    .line 465
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setBRConfig: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupEngine"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getLogLevel()I

    move-result p1

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->setLogLevel(I)V

    :cond_0
    return-void
.end method

.method public setBRListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    const-string v1, "BackupEngine"

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v2, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    invoke-direct {v2, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    goto :goto_0

    :cond_0
    const-string v0, "looper is not alive when setBRListener!"

    .line 312
    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setBRListener: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->setListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V

    :cond_2
    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->start(Ljava/util/List;I)V

    return-void
.end method

.method public start(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;I)V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mPluginInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start offer"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupEngine"

    invoke-static {v3, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0, v2, p2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->startPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->startPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;I)V

    return-void
.end method

.method public startPlugin(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;I)V
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mHypnusHandler:Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mLastSetHypnusTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mHypnusHandler:Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mCancelMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->onPluginAdd(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Bundle;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mWorkThreadPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    new-instance v2, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;

    invoke-direct {v2, p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;I)V

    invoke-virtual {v0, v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->applyTask(Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;)V

    .line 334
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->getChildPlugins()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    .line 339
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start offer child:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupEngine"

    invoke-static {v3, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mBRListenerHandler:Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v2, v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->onPluginAdd(Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Bundle;)V

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->mWorkThreadPool:Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;

    new-instance v3, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;

    invoke-direct {v3, p0, v0, p2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->applyTask(Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;)V

    goto :goto_0

    :cond_3
    return-void
.end method