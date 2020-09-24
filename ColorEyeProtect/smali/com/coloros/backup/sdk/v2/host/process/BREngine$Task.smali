.class Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/process/BREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private final mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

.field private final mRunType:I

.field private mSingleTaskID:I

.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    iput p3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    return-void
.end method


# virtual methods
.method public getPluginInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getPriority()I

    move-result p0

    return p0
.end method

.method public getTaskID()I
    .locals 2

    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getThreadID()I

    move-result p0

    return p0
.end method

.method public isManual()Z
    .locals 3

    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isManualBegin()Z
    .locals 1

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManualEnd()Z
    .locals 1

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isManualStep()Z
    .locals 1

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreview()Z
    .locals 1

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSingleThread()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isSingleThread()Z

    move-result p0

    return p0
.end method

.method public run(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "BackupEngine"

    const-string p1, "run BRPluginProxy, plugin == null!"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "runType"

    iget v1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runPreview(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runEndByManual(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runStepByManual(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runBeginByManual(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runOne(Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSingleTaskID(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    return-void
.end method
