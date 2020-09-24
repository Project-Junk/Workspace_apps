.class public Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;
.super Lcom/coloros/backup/sdk/IRemoteService$Stub;

# interfaces
.implements Lcom/coloros/backup/sdk/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/backup/BackupAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyBinder"
.end annotation


# instance fields
.field mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

.field final synthetic this$0:Lcom/coloros/backup/sdk/backup/BackupAgentService;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/backup/BackupAgentService;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentService;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/IRemoteService$Stub;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/backup/sdk/backup/BackupAgentService;Lcom/coloros/backup/sdk/IBackupAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentService;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/IRemoteService$Stub;-><init>()V

    iput-object p2, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    return-void
.end method


# virtual methods
.method public getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxCount()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->getMaxCount()I

    move-result p0

    return p0
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->onBackupAndIncProgress()I

    move-result p0

    return p0
.end method

.method public onEnd()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->onEnd()Z

    move-result p0

    return p0
.end method

.method public onInit()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->onInit()Z

    move-result p0

    return p0
.end method

.method public onRestoreAndIncProgress()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->onRestoreAndIncProgress()I

    move-result p0

    return p0
.end method

.method public onStart()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentService$MyBinder;->mIBackup:Lcom/coloros/backup/sdk/IBackupAgent;

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgent;->onStart()Z

    move-result p0

    return p0
.end method
