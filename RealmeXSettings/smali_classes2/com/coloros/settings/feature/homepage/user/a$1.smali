.class final Lcom/coloros/settings/feature/homepage/user/a$1;
.super Ljava/lang/Object;
.source "UserCenterProfileHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/user/a;->a(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Messenger;

.field final synthetic c:Lcom/coloros/settings/feature/homepage/user/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/user/a;Landroid/os/Messenger;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->c:Lcom/coloros/settings/feature/homepage/user/a;

    const/4 p1, 0x3

    iput p1, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->a:I

    iput-object p2, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->b:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->c:Lcom/coloros/settings/feature/homepage/user/a;

    .line 1021
    iget-object v0, v0, Lcom/coloros/settings/feature/homepage/user/a;->b:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 69
    iget v1, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->a:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->b:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/a$1;->c:Lcom/coloros/settings/feature/homepage/user/a;

    .line 2021
    iget-object v1, v1, Lcom/coloros/settings/feature/homepage/user/a;->b:Landroid/os/Messenger;

    .line 72
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteMessenger.send error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserCenterProfileHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
