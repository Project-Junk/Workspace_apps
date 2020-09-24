.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 1

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReceiverHandler, handleMessage, msg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string p0, "ReceiverHandler msg.obj == null"

    .line 146
    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "args"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 150
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->handleMsg(Landroid/content/Intent;Z)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    return-void
.end method
