.class final Lcom/coloros/c/a/a/a$4;
.super Lcom/coloros/c/a/a/a$a;
.source "FindPhoneLogoutControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/c/a/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a;)V
    .locals 1

    .line 263
    iput-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/c/a/a/a$a;-><init>(Lcom/coloros/c/a/a/a;B)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/ComponentName;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 3

    .line 266
    invoke-static {}, Lcom/coloros/c/a/a/a;->a()Z

    move-result v0

    const-string v1, "FindPhoneLogoutControl"

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected, name = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", futureTask = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 270
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    new-instance v0, Lcom/coloros/c/a/a/a$4$1;

    invoke-direct {v0, p0, p0}, Lcom/coloros/c/a/a/a$4$1;-><init>(Lcom/coloros/c/a/a/a$4;Lcom/coloros/c/a/a/a$a;)V

    invoke-static {p1, v0}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Lcom/coloros/c/a/a/c;)Lcom/coloros/c/a/a/c;

    .line 276
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    new-instance v0, Landroid/os/Messenger;

    invoke-static {p1}, Lcom/coloros/c/a/a/a;->h(Lcom/coloros/c/a/a/a;)Lcom/coloros/c/a/a/c;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, v0}, Lcom/coloros/c/a/a/a;->b(Lcom/coloros/c/a/a/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 278
    :try_start_0
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    invoke-static {p1}, Lcom/coloros/c/a/a/a;->i(Lcom/coloros/c/a/a/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 280
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "find phone service is dead! with RemoteException exception = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    invoke-static {p1}, Lcom/coloros/c/a/a/a;->j(Lcom/coloros/c/a/a/a;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Landroid/content/Context;)V

    :goto_0
    if-eqz p3, :cond_1

    .line 285
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method protected final a(Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .locals 2

    .line 291
    invoke-static {}, Lcom/coloros/c/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected, name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", futureTask = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FindPhoneLogoutControl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    invoke-static {p1}, Lcom/coloros/c/a/a/a;->b(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    invoke-static {p1}, Lcom/coloros/c/a/a/a;->b(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    invoke-static {p2}, Lcom/coloros/c/a/a/a;->i(Lcom/coloros/c/a/a/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/coloros/c/a/a/a$4;->a:Lcom/coloros/c/a/a/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
