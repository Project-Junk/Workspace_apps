.class final Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;
.super Lcom/coloros/settings/utils/be;
.source "ColorAppDetailOperationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 6

    .line 96
    check-cast p2, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    .line 1104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x56

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1121
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage MSG_CLEAR_SYSYTEM_USER_DATA"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->g(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z

    .line 1123
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_1

    .line 1125
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object p1

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;J)J

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    .line 1127
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object p1

    iput-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    .line 1129
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1130
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    .line 1131
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    goto :goto_2

    .line 1106
    :cond_3
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage MSG_DELETE_COMPLETE"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z

    .line 1108
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_4

    .line 1110
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 1111
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    add-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;J)J

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    .line 1113
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object p1

    iput-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    .line 1115
    :cond_5
    :goto_1
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->d(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1116
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    .line 1117
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    :cond_6
    :goto_2
    return-void
.end method
