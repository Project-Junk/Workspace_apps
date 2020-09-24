.class final Lcom/android/ims/h$1;
.super Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/h;


# direct methods
.method constructor <init>(Lcom/android/ims/h;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic a(II)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->b(Lcom/android/ims/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    iget v1, v1, Lcom/android/ims/h;->a:I

    if-eq v1, p1, :cond_0

    .line 537
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "MmTelFeatureConnection"

    const-string v1, "MmTel removed on slotId: "

    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object p1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p1}, Lcom/android/ims/h;->f(Lcom/android/ims/h;)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object p2, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/ims/h;->a(Lcom/android/ims/h;Z)Z

    const-string p2, "MmTelFeatureConnection"

    const-string v1, "Emergency calling disabled on slotId: "

    .line 547
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic a(III)V
    .locals 4

    .line 558
    iget-object v0, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->b(Lcom/android/ims/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "MmTelFeatureConnection"

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imsStatusChanged: slot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    iget v1, v1, Lcom/android/ims/h;->a:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/ims/h;->a(Lcom/android/ims/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 563
    iget-object p1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p1}, Lcom/android/ims/h;->e(Lcom/android/ims/h;)Lcom/android/ims/h$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p1}, Lcom/android/ims/h;->e(Lcom/android/ims/h;)Lcom/android/ims/h$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/ims/h$c;->a()V

    .line 567
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic b(II)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->b(Lcom/android/ims/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    iget v1, v1, Lcom/android/ims/h;->a:I

    if-eq v1, p1, :cond_0

    .line 512
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    iget-object p2, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p2}, Lcom/android/ims/h;->g(Lcom/android/ims/h;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "MmTelFeatureConnection"

    const-string v1, "MmTel enabled on slotId: "

    .line 517
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p1, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p1}, Lcom/android/ims/h;->h(Lcom/android/ims/h;)Z

    goto :goto_0

    .line 523
    :cond_2
    iget-object p2, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {p2, v1}, Lcom/android/ims/h;->a(Lcom/android/ims/h;Z)Z

    const-string p2, "MmTelFeatureConnection"

    const-string v1, "Emergency calling enabled on slotId: "

    .line 524
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$4zJXw7-Z9FG5m522bDJJxb9YKWU(Lcom/android/ims/h$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/h$1;->a(II)V

    return-void
.end method

.method public static synthetic lambda$AfjANn3gMbSm1P4lHTMYQWxWRmk(Lcom/android/ims/h$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/h$1;->b(II)V

    return-void
.end method

.method public static synthetic lambda$UG1qnXyNCfw-pUJRlxZnzN5EmW8(Lcom/android/ims/h$1;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/h$1;->a(III)V

    return-void
.end method


# virtual methods
.method public final imsFeatureCreated(II)V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->d(Lcom/android/ims/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/-$$Lambda$h$1$AfjANn3gMbSm1P4lHTMYQWxWRmk;-><init>(Lcom/android/ims/h$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final imsFeatureRemoved(II)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->d(Lcom/android/ims/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$h$1$4zJXw7-Z9FG5m522bDJJxb9YKWU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/-$$Lambda$h$1$4zJXw7-Z9FG5m522bDJJxb9YKWU;-><init>(Lcom/android/ims/h$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final imsStatusChanged(III)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/ims/h$1;->a:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->d(Lcom/android/ims/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$h$1$UG1qnXyNCfw-pUJRlxZnzN5EmW8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ims/-$$Lambda$h$1$UG1qnXyNCfw-pUJRlxZnzN5EmW8;-><init>(Lcom/android/ims/h$1;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
