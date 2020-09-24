.class public Lcom/coloros/backup/sdk/restore/RestoreEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;,
        Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;,
        Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;,
        Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupTAG/RestoreEngine"

.field private static final TIME_TAG:Ljava/lang/String; = "Time Cost"


# instance fields
.field private mAllBackupAgentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mITransport:Lcom/coloros/backup/sdk/ITransport;

.field private mIsCancel:Z

.field private mIsPause:Z

.field private mIsRunning:Z

.field private mLock:Ljava/lang/Object;

.field mModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

.field mParasMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestoreDoneListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;

.field private mRestoreFolder:Ljava/lang/String;

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mRestoreStartListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;Lcom/coloros/backup/sdk/OnProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;",
            "Lcom/coloros/backup/sdk/OnProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsCancel:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mParasMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    iput-object p2, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mAllBackupAgentArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/restore/RestoreEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->executeRestoreOperation()V

    return-void
.end method

.method private addBackupAgent(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mParasMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setParams(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setCancel(Z)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private executeRestoreOperation()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "RestoreEngine"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v4, "BackupTAG/RestoreEngine"

    const-string v5, "RestoreThread begin..."

    invoke-static {v4, v5}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;->Success:Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;

    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "BackupTAG/RestoreEngine"

    const-string v6, "RestoreThread begin InterruptedException"

    invoke-static {v5, v6}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v6, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreFolder:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/coloros/backup/sdk/ITransport;->onInitRestore(Ljava/lang/String;)Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/backup/sdk/BackupAgent;

    instance-of v8, v7, Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/coloros/backup/sdk/BackupGroupAgent;

    iget-object v9, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-virtual {v8, v9}, Lcom/coloros/backup/sdk/BackupGroupAgent;->setTransport(Lcom/coloros/backup/sdk/ITransport;)V

    :cond_1
    iget-boolean v8, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    const-string v9, "BackupTAG/RestoreEngine"

    const-string v10, "RestoreThread wait..."

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    :try_start_2
    const-string v9, "BackupTAG/RestoreEngine"

    const-string v10, "RestoreThread wait InterruptedException"

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    monitor-exit v8

    goto :goto_4

    :goto_3
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v8, v7}, Lcom/coloros/backup/sdk/ITransport;->prepareRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z

    iget-object v8, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v8, v7}, Lcom/coloros/backup/sdk/ITransport;->getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/coloros/backup/sdk/BackupAgent;->setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V

    invoke-virtual {v7}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v8

    iget v8, v8, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {v8}, Lcom/coloros/backup/sdk/utils/ModuleType;->needToCount(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    invoke-virtual {v7}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    invoke-virtual {v7}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v8

    iget-object v9, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-virtual {v7, v9}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    invoke-virtual {v7}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v7

    iget v7, v7, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v7, "BackupTAG/RestoreEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RestoreThread init, failed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;->Fail:Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-string v0, "BackupTAG/RestoreEngine--Time Cost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RestoreThread begin... and init cost time : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreStartListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreStartListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;

    invoke-interface {v0, v5}, Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;->onStartRestore(Ljava/util/HashMap;)V

    goto :goto_5

    :cond_4
    const-string v0, "BackupTAG/RestoreEngine"

    const-string v1, "mRestoreStartListner == null, error!, do you set this null? Something like cancel backup."

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "BackupTAG/RestoreEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RestoreThread agent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v9

    iget v9, v9, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " start..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->start()Z

    const-string v7, "BackupTAG/RestoreEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RestoreThread agent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v9

    iget v9, v9, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " init finish"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v8

    if-eqz v8, :cond_6

    :goto_7
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    iget-boolean v7, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v8, "BackupTAG/RestoreEngine"

    const-string v9, "RestoreThread wait..."

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v4

    goto :goto_9

    :catch_3
    :try_start_6
    const-string v8, "BackupTAG/RestoreEngine"

    const-string v9, "RestoreThread wait... InterruptedException"

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    monitor-exit v7

    goto :goto_a

    :goto_9
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4

    :cond_5
    :goto_a
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onRestoreOne()I

    move-result v7

    const-string v8, "BackupTAG/RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RestoreThread resultOne:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "BackupTAG/RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RestoreThread agent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v10

    iget v10, v10, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "agent one entiry"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const-string v7, "BackupTAG/RestoreEngine"

    const-string v8, "RestoreThread->backupAgent, backupAgent.getMaxCount() == 0"

    invoke-static {v7, v8}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-boolean v7, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsCancel:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-nez v7, :cond_8

    const-wide/16 v7, 0x1f4

    :try_start_8
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_b

    :catch_4
    :try_start_9
    const-string v7, "BackupTAG/RestoreEngine"

    const-string v8, "RestoreThread sleep InterruptedException"

    invoke-static {v7, v8}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_b
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->end()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v4, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;->Success:Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;

    iget-object v7, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v7, v1}, Lcom/coloros/backup/sdk/ITransport;->performRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_c

    :catch_5
    move-exception v4

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->end()Z

    const-string v7, "BackupTAG/RestoreEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RestoreThread error, failed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;->Fail:Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;

    :cond_9
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-string v5, "BackupTAG/RestoreEngine--Time Cost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RestoreThread agent:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " agent finish and cost time : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    const-string v0, "BackupTAG/RestoreEngine"

    const-string v1, "RestoreThread run finish"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsRunning:Z

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsCancel:Z

    if-eqz v0, :cond_b

    sget-object v4, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;->Cancel:Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;

    :cond_b
    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v0}, Lcom/coloros/backup/sdk/ITransport;->onEndRestore()Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreDoneListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    const-string v1, "B&R"

    const-string v3, "backupEngineBackupThread wait before end..."

    invoke-static {v1, v3}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p0

    goto :goto_e

    :catch_6
    :try_start_b
    const-string v1, "BackupThread wait before end... InterruptedException"

    invoke-static {v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;)V

    :goto_d
    monitor-exit v0

    goto :goto_f

    :goto_e
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p0

    :cond_c
    :goto_f
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreDoneListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;

    invoke-interface {p0, v4}, Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;->onFinishRestore(Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreResultType;)V

    :cond_d
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mParasMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mParasMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsCancel:Z

    return-void
.end method

.method private setupBackupAgent(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BackupTAG/RestoreEngine"

    const-string v1, "setupBackupAgent begin..."

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mAllBackupAgentArray:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/backup/sdk/BackupAgent;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->addBackupAgent(Lcom/coloros/backup/sdk/BackupAgent;)V

    goto :goto_0

    :cond_1
    const-string p0, "BackupTAG/RestoreEngine"

    const-string p1, "setupBackupAgent finish"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/BackupAgent;->setCancel(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsCancel:Z

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->continueRestore()V

    return-void
.end method

.method public continueRestore()V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getITransport()Lcom/coloros/backup/sdk/ITransport;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-object p0
.end method

.method public getRestoreRunnable(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    if-nez v0, :cond_0

    new-instance p1, Lcom/coloros/backup/sdk/simple/SimpleTransport;

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/backup/sdk/simple/SimpleTransport;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->setITransport(Lcom/coloros/backup/sdk/ITransport;)V

    const-string p1, "BackupTAG/RestoreEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mITransport is null!!!, so use SimpleTransport in SDK. Only for test!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v1}, Lcom/coloros/backup/sdk/ITransport;->getTranportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {p1}, Lcom/coloros/backup/sdk/ITransport;->getBackupPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "BackupTAG/RestoreEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBackup(), Transport name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v2}, Lcom/coloros/backup/sdk/ITransport;->getTranportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreFolder:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, ".backup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreFolder:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->setupBackupAgent(Ljava/util/ArrayList;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsRunning:Z

    iget-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    new-instance p1, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;

    invoke-direct {p1, p0}, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;-><init>(Lcom/coloros/backup/sdk/restore/RestoreEngine;)V

    return-object p1

    :cond_3
    return-object v0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsRunning:Z

    return p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsPause:Z

    return-void
.end method

.method public setITransport(Lcom/coloros/backup/sdk/ITransport;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-void
.end method

.method public setOnRestoreEndListner(Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreDoneListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreDoneListener;

    return-void
.end method

.method public setOnRestoreStartListner(Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreStartListener:Lcom/coloros/backup/sdk/restore/RestoreEngine$OnRestoreStartListener;

    return-void
.end method

.method public setRestoreItemParam(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mParasMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setRestoreModelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->reset()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    return-void
.end method

.method public startRestore(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    if-nez v0, :cond_0

    new-instance p1, Lcom/coloros/backup/sdk/simple/SimpleTransport;

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/backup/sdk/simple/SimpleTransport;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->setITransport(Lcom/coloros/backup/sdk/ITransport;)V

    const-string p1, "BackupTAG/RestoreEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mITransport is null!!!, so use SimpleTransport in SDK. Only for test!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v1}, Lcom/coloros/backup/sdk/ITransport;->getTranportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {p1}, Lcom/coloros/backup/sdk/ITransport;->getBackupPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "BackupTAG/RestoreEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBackup(), Transport name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v2}, Lcom/coloros/backup/sdk/ITransport;->getTranportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreFolder:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, ".backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mRestoreFolder:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreEngine;->setupBackupAgent(Ljava/util/ArrayList;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/restore/RestoreEngine;->mIsRunning:Z

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/restore/RestoreEngine$RestoreRunnable;-><init>(Lcom/coloros/backup/sdk/restore/RestoreEngine;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
