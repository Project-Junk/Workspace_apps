.class public abstract Lcom/coloros/commons/service/RecoveryService;
.super Landroid/app/Service;
.source "RecoveryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/commons/service/RecoveryService$RecoveryTask;,
        Lcom/coloros/commons/service/RecoveryService$ServerHandler;
    }
.end annotation


# static fields
.field private static final MSG_FROM_CLIENT_TO_SERVER_RECOVERY:I = 0x1

.field private static final MSG_FROM_SERVER_TO_CLIENT_FAIL:I = 0x3

.field private static final MSG_FROM_SERVER_TO_CLIENT_SUCCEED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RecoveryService"


# instance fields
.field private mRecoveryTask:Lcom/coloros/commons/service/RecoveryService$RecoveryTask;

.field private mServerMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doRecoveryOperation(Landroid/content/Context;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 31
    new-instance p1, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;

    invoke-direct {p1, p0, p0}, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;-><init>(Lcom/coloros/commons/service/RecoveryService;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/commons/service/RecoveryService;->mRecoveryTask:Lcom/coloros/commons/service/RecoveryService$RecoveryTask;

    .line 32
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/coloros/commons/service/RecoveryService$ServerHandler;

    iget-object v1, p0, Lcom/coloros/commons/service/RecoveryService;->mRecoveryTask:Lcom/coloros/commons/service/RecoveryService$RecoveryTask;

    invoke-direct {v0, v1}, Lcom/coloros/commons/service/RecoveryService$ServerHandler;-><init>(Lcom/coloros/commons/service/RecoveryService$RecoveryTask;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/commons/service/RecoveryService;->mServerMessenger:Landroid/os/Messenger;

    .line 33
    iget-object p0, p0, Lcom/coloros/commons/service/RecoveryService;->mServerMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 47
    iget-object p0, p0, Lcom/coloros/commons/service/RecoveryService;->mRecoveryTask:Lcom/coloros/commons/service/RecoveryService$RecoveryTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/coloros/commons/service/RecoveryService;->mRecoveryTask:Lcom/coloros/commons/service/RecoveryService$RecoveryTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/coloros/commons/service/RecoveryService$RecoveryTask;->cancel(Z)Z

    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
