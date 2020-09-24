.class final Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ColorAppDetailOperationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->j(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

    move-result-object p1

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 418
    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 419
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->j(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;->sendMessage(Landroid/os/Message;)Z

    .line 420
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onRemoveCompleted succeeded = "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
