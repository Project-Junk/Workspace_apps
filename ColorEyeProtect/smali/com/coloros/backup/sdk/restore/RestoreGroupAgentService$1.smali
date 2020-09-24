.class Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;
.super Lcom/coloros/backup/sdk/BackupGroupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-direct {p0, p2}, Lcom/coloros/backup/sdk/BackupGroupAgent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxCount()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->getMaxCount()I

    move-result p0

    return p0
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->onBackupAndIncProgress()I

    move-result p0

    return p0
.end method

.method public onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->onCancel()V

    return-void
.end method

.method public onEnd()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->onEnd()Z

    move-result p0

    return p0
.end method

.method public onInit()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->onInit()Z

    move-result p0

    return p0
.end method

.method public onRestoreAndIncProgress()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->onRestoreAndIncProgress()I

    move-result p0

    return p0
.end method

.method public onStart()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService$1;->this$0:Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreGroupAgentService;->onStart()Z

    move-result p0

    return p0
.end method
