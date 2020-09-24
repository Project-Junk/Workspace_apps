.class final Lcom/coloros/c/a/a/a$3;
.super Ljava/lang/Object;
.source "FindPhoneLogoutControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/coloros/c/a/a/a$3;->c:Lcom/coloros/c/a/a/a;

    iput-object p2, p0, Lcom/coloros/c/a/a/a$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/c/a/a/a$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 237
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    iget-object v2, p0, Lcom/coloros/c/a/a/a$3;->a:Landroid/content/Context;

    const-string v3, "TYPE_REQUEST_REQUEST_LOGOUT"

    invoke-direct {v1, v2, v3}, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 241
    iget-object v3, p0, Lcom/coloros/c/a/a/a$3;->b:Ljava/lang/String;

    const-string v4, "SEND_MSG_BUNDLE_REQUEST_LOGOUT_TICKETNO"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-object v2, v1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->bundle:Landroid/os/Bundle;

    .line 243
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KEY_EXTRA_REQUEST_ENTITY"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    iget-object v2, p0, Lcom/coloros/c/a/a/a$3;->c:Lcom/coloros/c/a/a/a;

    invoke-static {v2}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/coloros/c/a/a/a$3;->c:Lcom/coloros/c/a/a/a;

    invoke-static {v2}, Lcom/coloros/c/a/a/a;->b(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 247
    iget-object v0, p0, Lcom/coloros/c/a/a/a$3;->c:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->c(Lcom/coloros/c/a/a/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/coloros/c/a/a/a$3;->c:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->f(Lcom/coloros/c/a/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 251
    iget-object v0, p0, Lcom/coloros/c/a/a/a$3;->c:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->g(Lcom/coloros/c/a/a/a;)Z

    return-void
.end method
