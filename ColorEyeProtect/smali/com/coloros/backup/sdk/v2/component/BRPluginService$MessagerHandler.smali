.class Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler<",
        "Lcom/coloros/backup/sdk/v2/component/BRPluginService;",
        ">;"
    }
.end annotation


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mSyncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mAsyncHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mSyncHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V
    .locals 2

    const-string p2, "BRPluginService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessagerHandler handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.arg1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroid/os/Message;->arg1:I

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mSyncHandler:Landroid/os/Handler;

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mAsyncHandler:Landroid/os/Handler;

    :goto_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    return-void
.end method
