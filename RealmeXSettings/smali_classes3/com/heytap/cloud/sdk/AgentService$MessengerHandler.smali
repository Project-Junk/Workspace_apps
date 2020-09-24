.class public Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;
.super Lcom/heytap/cloud/sdk/utils/StaticHandler;
.source "AgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/AgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessengerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/cloud/sdk/utils/StaticHandler<",
        "Lcom/heytap/cloud/sdk/AgentService;",
        ">;"
    }
.end annotation


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mSyncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 59
    iput-object p3, p0, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;->mAsyncHandler:Landroid/os/Handler;

    .line 60
    iput-object p4, p0, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;->mSyncHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/heytap/cloud/sdk/AgentService;)V
    .locals 1

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MessengerHandler handleMessage "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg.arg1:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AgentService"

    invoke-static {v0, p2}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget p2, p1, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;->mSyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;->mAsyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Lcom/heytap/cloud/sdk/AgentService;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;->handleMessage(Landroid/os/Message;Lcom/heytap/cloud/sdk/AgentService;)V

    return-void
.end method
