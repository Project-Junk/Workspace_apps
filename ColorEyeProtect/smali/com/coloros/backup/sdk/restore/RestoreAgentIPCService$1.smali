.class Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;
.super Lcom/coloros/backup/sdk/BackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-direct {p0, p2}, Lcom/coloros/backup/sdk/BackupAgent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxCount()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->getMaxCount()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->onBackupAndIncProgress()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onEnd()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->onEnd()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInit()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$100(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Z

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->onInit()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRestoreAndIncProgress()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->onRestoreAndIncProgress()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onStart()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->onStart()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
