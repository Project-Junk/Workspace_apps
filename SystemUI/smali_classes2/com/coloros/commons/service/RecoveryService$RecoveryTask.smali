.class Lcom/coloros/commons/service/RecoveryService$RecoveryTask;
.super Landroid/os/AsyncTask;
.source "RecoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/commons/service/RecoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecoveryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/os/Messenger;",
        "Landroid/os/Messenger;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/coloros/commons/service/RecoveryService;


# direct methods
.method public constructor <init>(Lcom/coloros/commons/service/RecoveryService;Landroid/content/Context;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->this$0:Lcom/coloros/commons/service/RecoveryService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Messenger;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 94
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->mMessenger:Landroid/os/Messenger;

    .line 95
    iget-object p1, p0, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->this$0:Lcom/coloros/commons/service/RecoveryService;

    iget-object p0, p0, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/commons/service/RecoveryService;->doRecoveryOperation(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, [Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->doInBackground([Landroid/os/Messenger;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
