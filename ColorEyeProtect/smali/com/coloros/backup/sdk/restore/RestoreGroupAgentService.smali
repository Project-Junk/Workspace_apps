.class public abstract Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;
.super Lcom/coloros/backup/sdk/restore/RestoreAgentService;


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreGroupAgentService"


# instance fields
.field private agents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

.field protected mContext:Landroid/content/Context;

.field private mITransport:Lcom/coloros/backup/sdk/ITransport;

.field private mIsInGetMaxCount:Z

.field private mNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mIsInGetMaxCount:Z

    return-void
.end method


# virtual methods
.method public createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 1

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;-><init>(Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    return-object p0
.end method

.method protected dealWithCount(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChildAgents()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getMaxCount()I
    .locals 4

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mIsInGetMaxCount:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mNum:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mIsInGetMaxCount:Z

    iget p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mNum:I

    return p0
.end method

.method protected getOnProgressListener()Lcom/coloros/backup/sdk/OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreGroupAgentService"

    const-string v0, "getOnProgressListener, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupGroupAgent;->getProgressListener()Lcom/coloros/backup/sdk/OnProgressListener;

    move-result-object p0

    return-object p0
.end method

.method protected getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreGroupAgentService"

    const-string v0, "getParams, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupGroupAgent;->getParams()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreGroupAgentService"

    const-string v0, "getTargetDirInfo, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupGroupAgent;->getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object p0

    return-object p0
.end method

.method protected isCancel()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupGroupAgent;->isCancel()Z

    move-result p0

    return p0
.end method

.method protected notifyCompletedCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreGroupAgentService"

    const-string p1, "setCompletedCount, mBackupAgent == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupGroupAgent;->notifyCompletedCount(I)V

    return-void
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onEnd()Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mIsInGetMaxCount:Z

    const-string v1, "RestoreGroupAgentService"

    const-string v2, "Group--->onEnd--->in"

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onEnd()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onInit()Z
    .locals 3

    const-string v0, "RestoreGroupAgentService"

    const-string v1, "Group--->onInit--->in"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupGroupAgent;->getChildAgents()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupGroupAgent;->getITransport()Lcom/coloros/backup/sdk/ITransport;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    const-string v0, "RestoreGroupAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agents.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v2, v1}, Lcom/coloros/backup/sdk/ITransport;->prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v2, v1}, Lcom/coloros/backup/sdk/ITransport;->getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/BackupAgent;->setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRestoreAndIncProgress()I
    .locals 5

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x2

    :goto_1
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->onRestoreAndIncProgress()I

    move-result v3

    add-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->dealWithCount(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->notifyCompletedCount(I)V

    goto :goto_1

    :cond_0
    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    const-string p0, "RestoreGroupAgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreAndIncProgress()--->count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onStart()Z
    .locals 3

    const-string v0, "RestoreGroupAgentService"

    const-string v1, "Group--->onStart--->in"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onStart()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected setCancel(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupGroupAgent;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupGroupAgent;->setCancel(Z)V

    return-void
.end method

.method public setChildAgents(ILcom/coloros/backup/sdk/BackupAgent;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->agents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
