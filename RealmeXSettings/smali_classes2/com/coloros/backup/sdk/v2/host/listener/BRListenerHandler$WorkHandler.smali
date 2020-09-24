.class Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$WorkHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRListenerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler<",
        "Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;Landroid/os/Looper;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;)V
    .locals 3

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;

    iget-object v0, v0, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$Agrs;->objects:[Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;->access$000(Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    move-result-object p2

    if-nez p2, :cond_0

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "listener == null, msg:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BRListenerHandler"

    invoke-static {p2, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    .line 90
    :pswitch_1
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    goto :goto_0

    .line 87
    :pswitch_2
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onProgressChanged(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    .line 84
    :pswitch_3
    aget-object p1, v0, v2

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p2, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onAllEnd(Landroid/os/Bundle;)V

    return-void

    .line 81
    :pswitch_4
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    .line 78
    :pswitch_5
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    .line 75
    :pswitch_6
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    .line 69
    :pswitch_7
    aget-object p1, v0, v2

    check-cast p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler$WorkHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/host/listener/BRListenerHandler;)V

    return-void
.end method
