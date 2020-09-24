.class public abstract Lcom/coloros/backup/sdk/restore/RestoreAgentService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/coloros/backup/sdk/IBackupAgent;
.implements Lcom/coloros/backup/sdk/IBackupAgentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/restore/RestoreAgentService$MyBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreAgentService"


# instance fields
.field private mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 1

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/coloros/backup/sdk/restore/RestoreAgentService$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreAgentService$1;-><init>(Lcom/coloros/backup/sdk/restore/RestoreAgentService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object p0
.end method

.method public abstract getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
.end method

.method public abstract getMaxCount()I
.end method

.method protected getOnProgressListener()Lcom/coloros/backup/sdk/OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreAgentService"

    const-string v0, "getOnProgressListener, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getProgressListener()Lcom/coloros/backup/sdk/OnProgressListener;

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

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreAgentService"

    const-string v0, "getParams, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getParams()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreAgentService"

    const-string v0, "getTargetDirInfo, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object p0

    return-object p0
.end method

.method protected isCancel()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result p0

    return p0
.end method

.method protected notifyCompletedCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreAgentService"

    const-string p1, "setCompletedCount, mBackupAgent == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupAgent;->notifyCompletedCount(I)V

    return-void
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/coloros/backup/sdk/restore/RestoreAgentService$MyBinder;

    invoke-direct {p1, p0, p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentService$MyBinder;-><init>(Lcom/coloros/backup/sdk/restore/RestoreAgentService;Lcom/coloros/backup/sdk/IBackupAgent;)V

    return-object p1
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0, p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;

    return-void
.end method

.method public abstract onInit()Z
.end method

.method public abstract onRestoreAndIncProgress()I
.end method

.method protected setCancel(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupAgent;->setCancel(Z)V

    return-void
.end method
