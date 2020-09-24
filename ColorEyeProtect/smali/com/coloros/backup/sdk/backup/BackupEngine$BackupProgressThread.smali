.class Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/backup/BackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupProgressThread"
.end annotation


# static fields
.field private static final MAX_RETRY_TIME:I = 0x3


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/backup/BackupEngine;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    instance-of v3, v1, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v5, v2

    move v6, v5

    goto :goto_1

    :cond_1
    move v5, v2

    move v6, v4

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v7}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$100(Lcom/coloros/backup/sdk/backup/BackupEngine;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v7}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    const-string v8, "BackupRestore BackupEngine"

    const-string v9, "BackupThread wait..."

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v8}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    monitor-exit v7

    goto :goto_4

    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_2
    const-string v9, "BackupRestore BackupEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BackupThread->backupAgent:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v11

    iget v11, v11, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " start..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v9

    if-nez v9, :cond_7

    if-lez v5, :cond_4

    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/coloros/backup/sdk/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    invoke-static {v9}, Lcom/coloros/backup/sdk/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v9

    const-string v10, "BackupRestore BackupEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BackupThread->backupAgent getMaxCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->start()Z

    const-string v9, "BackupRestore BackupEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BackupThread->backupAgent:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v11

    iget v11, v11, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " init finish"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, -0x2

    :goto_5
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v9}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$100(Lcom/coloros/backup/sdk/backup/BackupEngine;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v9}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v10, "BackupRestore BackupEngine"

    const-string v11, "BackupThread wait..."

    invoke-static {v10, v11}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v10}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v10

    goto :goto_7

    :catch_1
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    monitor-exit v9

    goto :goto_8

    :goto_7
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v10

    :cond_5
    :goto_8
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onBackupOne()I

    move-result v9

    const-string v10, "BackupRestore BackupEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BackupThread->backupAgent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v12

    iget v12, v12, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " onBackupOne"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v9, "BackupRestore BackupEngine"

    const-string v10, "BackupThread->backupAgent, backupAgent.getMaxCount() == 0"

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v9, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v9}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$300(Lcom/coloros/backup/sdk/backup/BackupEngine;)Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v9, :cond_8

    const-wide/16 v9, 0x1f4

    :try_start_6
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_2
    move-exception v9

    :try_start_7
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_8
    :goto_9
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->end()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    sget-object v10, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Success:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$402(Lcom/coloros/backup/sdk/backup/BackupEngine;Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    iget-object v9, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v9}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$500(Lcom/coloros/backup/sdk/backup/BackupEngine;)Lcom/coloros/backup/sdk/ITransport;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/coloros/backup/sdk/ITransport;->performBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_3
    move-exception v9

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->end()Z

    const-string v10, "BackupRestore BackupEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BackupThread e, failed:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    sget-object v10, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    invoke-static {v9, v10}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$402(Lcom/coloros/backup/sdk/backup/BackupEngine;Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    :cond_9
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-string v7, "BackupRestore BackupEngine--Time Cost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BackupThread->backupAgent:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v11

    iget v11, v11, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " finish and cost time : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    if-eqz v3, :cond_a

    move-object v6, v1

    check-cast v6, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->isCompleted()Z

    move-result v6

    goto :goto_c

    :cond_a
    instance-of v7, v1, Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-eqz v7, :cond_d

    move-object v6, v1

    check-cast v6, Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/BackupGroupAgent;->getChildAgents()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v8, v2

    move v9, v4

    :goto_b
    if-ge v8, v7, :cond_c

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coloros/backup/sdk/BackupAgent;

    instance-of v11, v10, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    if-eqz v11, :cond_b

    move-object v11, v10

    check-cast v11, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    invoke-virtual {v11}, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->isCompleted()Z

    move-result v11

    if-nez v11, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BackupRestore BackupEngineis not isCompleted, bAgent:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", packageName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;)V

    move v9, v2

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_c
    move v6, v9

    :cond_d
    :goto_c
    const/4 v7, 0x3

    if-le v5, v4, :cond_e

    const-string v8, "BackupRestore BackupEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "last time error, retry time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", this loop isCompleted:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v7, :cond_e

    if-nez v6, :cond_e

    const-string v8, "BackupRestore BackupEngine"

    const-string v9, "retry time over, return failed!"

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    sget-object v9, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    invoke-static {v8, v9}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$402(Lcom/coloros/backup/sdk/backup/BackupEngine;Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    :cond_e
    const-string v8, "BackupRestore BackupEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_0

    if-lt v5, v7, :cond_2

    goto/16 :goto_0

    :cond_f
    const-string v0, "BackupRestore BackupEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupThread run finish, result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v3}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$400(Lcom/coloros/backup/sdk/backup/BackupEngine;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$602(Lcom/coloros/backup/sdk/backup/BackupEngine;Z)Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$100(Lcom/coloros/backup/sdk/backup/BackupEngine;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    const-string v1, "BackupRestore BackupEngine"

    const-string v2, "BackupThread wait before end..."

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p0

    goto :goto_e

    :catch_4
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_d
    monitor-exit v0

    goto :goto_f

    :goto_e
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :cond_10
    :goto_f
    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$708(Lcom/coloros/backup/sdk/backup/BackupEngine;)I

    const-string v0, "BackupRestore BackupEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupProgressThread mCompletedTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v2}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$700(Lcom/coloros/backup/sdk/backup/BackupEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$700(Lcom/coloros/backup/sdk/backup/BackupEngine;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const-wide/16 v0, 0x64

    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_10
    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$800(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    const-string v1, "BackupRestore BackupEngine"

    const-string v2, "BackupProgressThread mBackupProgressLock notify..."

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->this$0:Lcom/coloros/backup/sdk/backup/BackupEngine;

    invoke-static {p0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->access$800(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_11

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :cond_11
    :goto_11
    return-void
.end method
