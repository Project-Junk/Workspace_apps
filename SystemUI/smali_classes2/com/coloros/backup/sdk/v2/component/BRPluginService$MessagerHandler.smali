.class Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;
.super Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;
.source "BRPluginService.java"


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

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 72
    iput-object p3, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mAsyncHandler:Landroid/os/Handler;

    .line 73
    iput-object p4, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mSyncHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V
    .locals 1

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MessagerHandler handleMessage "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg.arg1:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BRPluginService"

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget p2, p1, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mSyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->mAsyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p2, Lcom/coloros/backup/sdk/v2/component/BRPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    return-void
.end method
