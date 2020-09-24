.class Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BREngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/process/BREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HypnusHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler<",
        "Lcom/coloros/backup/sdk/v2/host/process/BREngine;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Landroid/os/Looper;)V
    .locals 0

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/process/BREngine;)V
    .locals 2

    .line 608
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc

    const v0, 0x493e0

    .line 610
    :try_start_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/utils/HypnusServiceHelper;->hypnusSetAction(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BackupEngine"

    const-string v0, "HypnusServiceHelper.HypnusSetAction failed"

    .line 612
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->access$1302(Lcom/coloros/backup/sdk/v2/host/process/BREngine;J)J

    :cond_0
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 601
    check-cast p2, Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine$HypnusHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/process/BREngine;)V

    return-void
.end method
