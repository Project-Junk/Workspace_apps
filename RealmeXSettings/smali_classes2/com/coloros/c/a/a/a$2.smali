.class final Lcom/coloros/c/a/a/a$2;
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

.field final synthetic b:Lcom/coloros/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a;Landroid/content/Context;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/coloros/c/a/a/a$2;->b:Lcom/coloros/c/a/a/a;

    iput-object p2, p0, Lcom/coloros/c/a/a/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    iget-object v2, p0, Lcom/coloros/c/a/a/a$2;->a:Landroid/content/Context;

    const-string v3, "TYPE_REQUEST_IS_NEED_VERIFY_PWD"

    invoke-direct {v1, v2, v3}, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KEY_EXTRA_REQUEST_ENTITY"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    iget-object v2, p0, Lcom/coloros/c/a/a/a$2;->b:Lcom/coloros/c/a/a/a;

    invoke-static {v2}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/coloros/c/a/a/a$2;->b:Lcom/coloros/c/a/a/a;

    invoke-static {v2}, Lcom/coloros/c/a/a/a;->b(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 204
    iget-object v0, p0, Lcom/coloros/c/a/a/a$2;->b:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->c(Lcom/coloros/c/a/a/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/coloros/c/a/a/a$2;->b:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->d(Lcom/coloros/c/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    iget-object v0, p0, Lcom/coloros/c/a/a/a$2;->b:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->e(Lcom/coloros/c/a/a/a;)Z

    return-void
.end method
