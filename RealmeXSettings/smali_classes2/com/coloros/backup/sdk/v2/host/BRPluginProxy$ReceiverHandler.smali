.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceiverHandler"
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

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiverHandler"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRPluginProxy"

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "args"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 102
    iget-object v0, p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p2, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    .line 87
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 88
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$000(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/high16 v2, -0x80000000

    const-string v3, "max_count"

    .line 89
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "completed_count"

    .line 91
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReceiverHandler:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {p1, p2, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onProgressChanged(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 96
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    return-void

    .line 122
    :pswitch_2
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    .line 123
    iput v0, p1, Landroid/os/Message;->what:I

    .line 124
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$300(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 117
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "return"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 118
    invoke-static {p2, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$200(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    return-void
.end method
