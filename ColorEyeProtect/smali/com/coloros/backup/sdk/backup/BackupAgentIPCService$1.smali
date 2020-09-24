.class Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;
.super Lcom/coloros/backup/sdk/backup/BackupAgentIPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-direct {p0, p2}, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxCount()I
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$400(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/backup/sdk/IBackupAgentService;->getMaxCount()I

    move-result p0

    move v0, p0

    goto :goto_0

    :cond_1
    const-string p0, "BackupAgentIPCService"

    const-string v1, "mService == null"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BackupAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService onEnd error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public onBackupAndIncProgress()I
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$400(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0x3e8

    return p0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    invoke-interface {v1}, Lcom/coloros/backup/sdk/IBackupAgentService;->onBackupAndIncProgress()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, "BackupAgentIPCService"

    const-string v1, "mService == null"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    const-string v1, "BackupAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService onEnd error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public onEnd()Z
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$400(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    invoke-interface {v1}, Lcom/coloros/backup/sdk/IBackupAgentService;->onEnd()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, "BackupAgentIPCService"

    const-string v1, "mService == null"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    const-string v1, "BackupAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService onEnd error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public onInit()Z
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$102(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Z)Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$200(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/backup/sdk/IBackupAgentService;->onInit()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p0, "BackupAgentIPCService"

    const-string v0, "mService == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    move v0, v1

    :goto_0
    const-string v1, "BackupAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService onEnd error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public onRestoreAndIncProgress()I
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$400(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0x3e8

    return p0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    invoke-interface {v1}, Lcom/coloros/backup/sdk/IBackupAgentService;->onRestoreAndIncProgress()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, "BackupAgentIPCService"

    const-string v1, "mService == null"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    const-string v1, "BackupAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService onEnd error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public onStart()Z
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$400(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object v1

    invoke-interface {v1}, Lcom/coloros/backup/sdk/IBackupAgentService;->onStart()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$1;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, "BackupAgentIPCService"

    const-string v1, "mService == null"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    const-string v1, "BackupAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService onEnd error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method
