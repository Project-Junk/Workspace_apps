.class public abstract Lcom/coloros/backup/sdk/BackupAgent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/backup/sdk/IBackupAgent;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "BackupAgent"


# instance fields
.field private mCanAlong:Z

.field private mCommand:I

.field protected mCompletedCount:I

.field protected mContext:Landroid/content/Context;

.field private mGroupType:I

.field private mIsAlong:Z

.field protected mIsCancel:Z

.field private mIsChildAgent:Z

.field protected mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

.field protected mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirInfo:Lcom/coloros/backup/sdk/TargetDirInfo;

.field protected mZipFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsCancel:Z

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mContext:Landroid/content/Context;

    const-string p1, "BackupAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupAgent is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkedCommand()Z
    .locals 3

    iget v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCommand:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p0

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public end()Z
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->onEnd()Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    if-eqz v1, :cond_1

    const-string v1, "BackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnd--- type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v3

    iget v3, v3, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mCompletedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "getMaxCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v2

    iget v3, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, p0, v2}, Lcom/coloros/backup/sdk/OnProgressListener;->onEnd(Lcom/coloros/backup/sdk/BackupAgent;Z)V

    :cond_1
    return v0
.end method

.method public abstract getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
.end method

.method public getCanAlone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCanAlong:Z

    return p0
.end method

.method public getCompletedCount()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    return p0
.end method

.method public getDataname()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getGroupType()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mGroupType:I

    return p0
.end method

.method public getIsAlong()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsAlong:Z

    return p0
.end method

.method public getIsChildAgent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsChildAgent:Z

    return p0
.end method

.method public abstract getMaxCount()I
.end method

.method public getParams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mParams:Ljava/util/List;

    return-object p0
.end method

.method public getProgressListener()Lcom/coloros/backup/sdk/OnProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    return-object p0
.end method

.method public getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mTargetDirInfo:Lcom/coloros/backup/sdk/TargetDirInfo;

    return-object p0
.end method

.method public isCancel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsCancel:Z

    return p0
.end method

.method public notifyCompletedCount(I)V
    .locals 3

    iput p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    const-string v0, "BackupAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseComposed---mOnProgressListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/OnProgressListener;->onOneFinished(Lcom/coloros/backup/sdk/BackupAgent;I)V

    :cond_0
    return-void
.end method

.method public abstract onBackupAndIncProgress()I
.end method

.method public onBackupOne()I
    .locals 5

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->onBackupAndIncProgress()I

    move-result v0

    const-string v2, "BackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackupOne, onBackupAndIncProgress() return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    :cond_1
    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-interface {v1, p0, v0}, Lcom/coloros/backup/sdk/OnProgressListener;->onOneFinished(Lcom/coloros/backup/sdk/BackupAgent;I)V

    :cond_2
    return v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public abstract onInit()Z
.end method

.method public abstract onRestoreAndIncProgress()I
.end method

.method public onRestoreOne()I
    .locals 5

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->onRestoreAndIncProgress()I

    move-result v0

    const-string v2, "BackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreOne, onRestoreAndIncProgress() return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    :cond_1
    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-interface {v1, p0, v0}, Lcom/coloros/backup/sdk/OnProgressListener;->onOneFinished(Lcom/coloros/backup/sdk/BackupAgent;I)V

    :cond_2
    return v0
.end method

.method public setCanAlone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCanAlong:Z

    return-void
.end method

.method public setCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsCancel:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCompletedCount:I

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    :goto_0
    return-void
.end method

.method public setCommand(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mCommand:I

    return-void
.end method

.method public setGroupType(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mGroupType:I

    return-void
.end method

.method public setIsAlong(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsAlong:Z

    return-void
.end method

.method public setIsChildAgent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsChildAgent:Z

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mParams:Ljava/util/List;

    return-void
.end method

.method public setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    return-void
.end method

.method public setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mTargetDirInfo:Lcom/coloros/backup/sdk/TargetDirInfo;

    return-void
.end method

.method public setZipFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mZipFileName:Ljava/lang/String;

    return-void
.end method

.method public start()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/BackupAgent;->mIsCancel:Z

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->onStart()Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgent;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-interface {v1, p0}, Lcom/coloros/backup/sdk/OnProgressListener;->onStart(Lcom/coloros/backup/sdk/BackupAgent;)V

    :cond_0
    return v0
.end method
