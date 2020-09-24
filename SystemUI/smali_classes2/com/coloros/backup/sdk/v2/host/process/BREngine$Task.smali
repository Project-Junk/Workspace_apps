.class Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;
.super Ljava/lang/Object;
.source "BREngine.java"


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

    .line 520
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->this$0:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 518
    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    .line 521
    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    .line 522
    iput p3, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    return-void
.end method


# virtual methods
.method public getPluginInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getPriority()I

    move-result p0

    return p0
.end method

.method public getTaskID()I
    .locals 2

    .line 530
    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 533
    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mPluginInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getThreadID()I

    move-result p0

    return p0
.end method

.method public isManual()Z
    .locals 2

    .line 549
    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isManualBegin()Z
    .locals 1

    .line 558
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

    .line 566
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

    .line 562
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

    .line 570
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

    .line 537
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

    .line 575
    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 578
    :cond_0
    iget v0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    const-string v1, "runType"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mRunType:I

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runPreview(Landroid/os/Bundle;)V

    goto :goto_0

    .line 590
    :cond_2
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runEndByManual(Landroid/os/Bundle;)V

    goto :goto_0

    .line 587
    :cond_3
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runStepByManual(Landroid/os/Bundle;)V

    goto :goto_0

    .line 584
    :cond_4
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runBeginByManual(Landroid/os/Bundle;)V

    goto :goto_0

    .line 581
    :cond_5
    invoke-virtual {p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->runOne(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public setSingleTaskID(I)V
    .locals 0

    .line 541
    iput p1, p0, Lcom/coloros/backup/sdk/v2/host/process/BREngine$Task;->mSingleTaskID:I

    return-void
.end method
