.class Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "BackupAgentIPCService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p2}, Lcom/coloros/backup/sdk/IBackupAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$302(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Lcom/coloros/backup/sdk/IBackupAgentService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    :try_start_0
    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p2}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$000(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/coloros/backup/sdk/IBackupAgentService;->setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$300(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p2}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$000(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->getParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/coloros/backup/sdk/IBackupAgentService;->setParams(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$500(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$602(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Z)Z

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$500(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "BackupAgentIPCService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {p1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$000(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$000(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Lcom/coloros/backup/sdk/backup/BackupAgentIPC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPC;->isCompleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$102(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Z)Z

    :cond_0
    const-string p1, "BackupAgentIPCService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected mIsInterrupted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    invoke-static {v1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$100(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$602(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Z)Z

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService$2;->this$0:Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;->access$302(Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;Lcom/coloros/backup/sdk/IBackupAgentService;)Lcom/coloros/backup/sdk/IBackupAgentService;

    return-void
.end method
