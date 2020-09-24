.class Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/process/BREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThreadPool"
.end annotation


# static fields
.field public static final UNIVERSAL_INDEX:I = -0x1


# instance fields
.field private mNotApplyedTaskIDs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordTaskIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleThreadCount:I

.field private mThreadArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;I)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;I)V
    .locals 3

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mThreadArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mSingleThreadCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mRecordTaskIDs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mNotApplyedTaskIDs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;

    const/4 v2, -0x1

    invoke-direct {v1, p1, p0, v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;I)V

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->start()V

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mThreadArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized applyTask(Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->getTaskID()I

    move-result v0

    const-string v1, "BackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkThreadPool mRecordTaskIDs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mRecordTaskIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", applyTaskID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->getPluginInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->isSingleThread()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mSingleThreadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mSingleThreadCount:I

    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mSingleThreadCount:I

    rsub-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->setSingleTaskID(I)V

    new-instance v1, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {v1, v2, p0, v0}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;-><init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;I)V

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->start()V

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mThreadArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkThreadPool start new thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mRecordTaskIDs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mRecordTaskIDs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mNotApplyedTaskIDs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-string v1, "BackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkThreadPool mNotApplyedTaskIDs.offer(applyTaskID)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v1, "BackupEngine"

    const-string v2, "WorkThreadPool no need to apply."

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$000(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$100(Lcom/coloros/backup/sdk/v2/host/process/BREngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pollNotApplyedTaskID()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mNotApplyedTaskIDs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mThreadArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThreadPool;->mThreadArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$WorkThread;->stopRun()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
