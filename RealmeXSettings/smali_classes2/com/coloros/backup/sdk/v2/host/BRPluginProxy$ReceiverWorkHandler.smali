.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceiverWorkHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler<",
        "Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiverHandler, handleMessage, msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRPluginProxy"

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string p1, "ReceiverHandler msg.obj == null"

    .line 144
    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 148
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->handleMsg(Landroid/content/Intent;Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    return-void
.end method
