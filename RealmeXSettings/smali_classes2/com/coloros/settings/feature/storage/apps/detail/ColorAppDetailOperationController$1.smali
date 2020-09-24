.class final Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;
.super Ljava/lang/Object;
.source "ColorAppDetailOperationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 346
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v0

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-wide/16 v3, 0x0

    move-wide v4, v3

    move v3, v1

    :goto_1
    const/4 v6, 0x1

    if-ge v3, v2, :cond_4

    .line 353
    aget-object v7, v0, v3

    .line 1389
    iget-object v8, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v8}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->k(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/a;

    move-result-object v8

    .line 1563
    iget-object v8, v8, Lcom/coloros/settings/feature/storage/apps/usage/a;->c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v8, v7}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v6, :cond_3

    .line 357
    iget-object v6, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v6}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->i(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v6}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->i(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Ljava/util/ArrayList;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 361
    :cond_1
    new-instance v6, Ljava/io/File;

    aget-object v7, v0, v3

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 363
    aget-object v7, v0, v3

    invoke-static {v7}, Lcom/coloros/settings/utils/al;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 364
    invoke-static {v6}, Lcom/coloros/settings/utils/al;->c(Ljava/io/File;)J

    move-result-wide v6

    goto :goto_2

    .line 366
    :cond_2
    invoke-static {v6}, Lcom/coloros/settings/utils/al;->d(Ljava/io/File;)J

    move-result-wide v6

    :goto_2
    add-long/2addr v4, v6

    .line 368
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file.exists and file.delete, path = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 371
    :cond_4
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteSize ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mAppDataHolder.storageSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    .line 372
    invoke-static {v3}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v3

    iget-wide v7, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x56

    .line 374
    iput v2, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v2

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move v1, v6

    :cond_5
    if-eqz v1, :cond_6

    const/4 v2, 0x2

    .line 377
    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 379
    :cond_6
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 380
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v3}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v3

    iget-wide v6, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    sub-long/2addr v6, v4

    iput-wide v6, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    .line 381
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    :goto_3
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->j(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;->sendMessage(Landroid/os/Message;)Z

    .line 384
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sent message MSG_DELETE_COMPLETE deleteCompleted = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
