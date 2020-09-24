.class Lcom/oppo/camera/e$l;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oppo/camera/e$m;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 12416
    iput-object p1, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12418
    iput-object p1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 12419
    iput p1, p0, Lcom/oppo/camera/e$l;->c:I

    .line 12420
    iput p1, p0, Lcom/oppo/camera/e$l;->d:I

    .line 12421
    iput-boolean p1, p0, Lcom/oppo/camera/e$l;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 12416
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$l;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e$l;)Z
    .locals 0

    .line 12416
    iget-boolean p0, p0, Lcom/oppo/camera/e$l;->e:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 12424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperCameraId, properCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeExecutor"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12426
    iput p1, p0, Lcom/oppo/camera/e$l;->c:I

    return-void
.end method

.method public a(Lcom/oppo/camera/e$m;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 12571
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12572
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 12573
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    :cond_1
    const-string v1, "ModeChangeExecutor"

    .line 12576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addModeChangeTask, task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12578
    iget v1, p0, Lcom/oppo/camera/e$l;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 12579
    invoke-virtual {p1}, Lcom/oppo/camera/e$m;->d()V

    goto :goto_0

    .line 12580
    :cond_2
    iget v1, p0, Lcom/oppo/camera/e$l;->d:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 12581
    invoke-virtual {p1}, Lcom/oppo/camera/e$m;->c()V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 12584
    iput v1, p0, Lcom/oppo/camera/e$l;->d:I

    .line 12586
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 12587
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12589
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 12590
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 12592
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12594
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->g()V

    return-void

    :catchall_0
    move-exception p1

    .line 12592
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 12430
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12431
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 12432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Z
    .locals 2

    .line 12436
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12437
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    .line 12438
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/e$l;->d:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 12440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(I)Z
    .locals 2

    .line 12444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSwitchCamera, mProperCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", properCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeExecutor"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12446
    iget v0, p0, Lcom/oppo/camera/e$l;->c:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 3

    .line 12450
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12451
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ModeChangeExecutor"

    const-string v2, "handleOnSessionClosing, firstTask is null "

    .line 12454
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 12456
    iput v1, p0, Lcom/oppo/camera/e$l;->d:I

    .line 12457
    monitor-exit v0

    return-void

    .line 12460
    :cond_0
    invoke-virtual {v1}, Lcom/oppo/camera/e$m;->d()V

    .line 12461
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 3

    .line 12465
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12466
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ModeChangeExecutor"

    const-string v2, "handleOnSessionClosed, firstTask is null "

    .line 12469
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 12471
    iput v1, p0, Lcom/oppo/camera/e$l;->d:I

    .line 12472
    monitor-exit v0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 12475
    invoke-static {v1}, Lcom/oppo/camera/e$m;->c(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12476
    invoke-static {v1}, Lcom/oppo/camera/e$m;->c(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/d/a;->J()V

    .line 12479
    :cond_1
    invoke-virtual {v1}, Lcom/oppo/camera/e$m;->c()V

    .line 12480
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12482
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$l$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$l$1;-><init>(Lcom/oppo/camera/e$l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 12480
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 3

    const-string v0, "ModeChangeExecutor"

    const-string v1, "handleOnSessionConfigured"

    .line 12491
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12493
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12496
    invoke-static {v1}, Lcom/oppo/camera/e$m;->b(Lcom/oppo/camera/e$m;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/e$l;->e:Z

    .line 12498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnSessionConfigured, mbCurrentHFR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e$l;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12501
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->h()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "ModeChangeExecutor"

    const-string v1, "handleOnCameraOpened"

    .line 12505
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12507
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12510
    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 6

    .line 12515
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 12516
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12520
    iget-object v2, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 12521
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 12522
    iget-object v3, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 12524
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 12527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "looperExecuteModeChangeTask, firstTask: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ModeChangeExecutor"

    invoke-static {v5, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12529
    invoke-static {v0}, Lcom/oppo/camera/e$m;->d(Lcom/oppo/camera/e$m;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-le v3, v2, :cond_2

    .line 12536
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->h()V

    .line 12538
    invoke-virtual {p0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12541
    invoke-static {v0, v5}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;I)I

    .line 12542
    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->a()V

    goto :goto_1

    .line 12545
    :cond_2
    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->a()V

    goto :goto_1

    .line 12531
    :cond_3
    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->a()V

    .line 12555
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12556
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    .line 12557
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looperExecuteModeChangeTask, after size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModeChangeExecutor"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_6

    .line 12562
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    .line 12557
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 12524
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public h()V
    .locals 3

    .line 12598
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12599
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 12600
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    const-string v1, "ModeChangeExecutor"

    const-string v2, "popFirstModeChangeTask X "

    .line 12602
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12604
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Lcom/oppo/camera/e$m;
    .locals 3

    .line 12610
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12611
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 12612
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/e$m;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12614
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()Lcom/oppo/camera/e$m;
    .locals 2

    .line 12620
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12621
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 12622
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/e$m;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 12625
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 2

    const-string v0, "ModeChangeExecutor"

    const-string v1, "release"

    .line 12630
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12632
    iget-object v0, p0, Lcom/oppo/camera/e$l;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12633
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 12634
    iget-object v1, p0, Lcom/oppo/camera/e$l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 12636
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
