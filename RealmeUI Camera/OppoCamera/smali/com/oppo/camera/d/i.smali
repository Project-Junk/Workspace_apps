.class public Lcom/oppo/camera/d/i;
.super Ljava/lang/Object;
.source "ModeManager.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/oppo/camera/d/a;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/oppo/camera/e/f;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Landroid/app/Activity;

.field private l:Lcom/oppo/camera/d/b;

.field private m:Lcom/oppo/camera/ui/c;

.field private n:Lcom/oppo/camera/ui/preview/a/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/oppo/camera/d/i;->a:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    .line 66
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    .line 67
    iput-object v0, p0, Lcom/oppo/camera/d/i;->e:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/oppo/camera/d/i;->f:Z

    const/4 v2, 0x1

    .line 70
    iput-boolean v2, p0, Lcom/oppo/camera/d/i;->g:Z

    .line 71
    iput-boolean v1, p0, Lcom/oppo/camera/d/i;->h:Z

    .line 72
    iput-boolean v1, p0, Lcom/oppo/camera/d/i;->i:Z

    const-string v1, "common"

    .line 74
    iput-object v1, p0, Lcom/oppo/camera/d/i;->j:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    .line 77
    iput-object v0, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    .line 78
    iput-object v0, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    .line 79
    iput-object v0, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    .line 82
    iput-object p1, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    return-void
.end method

.method private be()V
    .locals 2

    .line 711
    iget v0, p0, Lcom/oppo/camera/d/i;->b:I

    iget-object v1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    iget-object v1, v1, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->k()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    iget-object v0, v0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/i;->b:I

    .line 713
    iget v0, p0, Lcom/oppo/camera/d/i;->b:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/i;->a(I)V

    :cond_0
    return-void
.end method

.method private k(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/oppo/camera/d/i;->be()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->y()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public C()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aN()V

    :cond_0
    return-void
.end method

.method public D()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aQ()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E()V
    .locals 2

    const-string v0, "ModeManager"

    const-string v1, "displayScreenHint"

    .line 497
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cz()V

    .line 501
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cy()V

    .line 502
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bD()V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->H()V

    :cond_0
    return-void
.end method

.method public G()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/oppo/camera/d/i;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->au()I

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bv()Z

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aB()Z

    move-result v0

    return v0
.end method

.method public M()I
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ab()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x100

    return v0
.end method

.method public N()I
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ac()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O()V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->C()V

    :cond_0
    return-void
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "full"

    return-object v0
.end method

.method public Q()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->J()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->L()V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->M()V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->O()V

    :cond_0
    return-void
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public V()V
    .locals 4

    .line 686
    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 690
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/d/a;

    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {v2}, Lcom/oppo/camera/d/a;->N()V

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/oppo/camera/d/i;->f:Z

    .line 702
    iput-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    .line 703
    iput-object v1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    .line 705
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iput-object v1, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    return-void

    :catchall_0
    move-exception v0

    .line 705
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public W()Z
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bh()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public X()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->G()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    const-string v1, "pref_time_lapse_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ay()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ModeManager"

    const-string v1, "isCanFastCapture(), being timelapse, not support"

    .line 738
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bq()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bF()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-string v0, "getPreviewSize"

    .line 545
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    .line 549
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/oppo/camera/d/a;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/d/a;

    return-object p1
.end method

.method public a(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/i;->b(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnabledModeForCameraId, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not enabled for cameraId: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ModeManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->h()Z

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnabledModeForCameraId, switch mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->c(I)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/media/Image;)V
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/media/ImageReader;Z)V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/media/ImageReader;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    .line 88
    iput-object p2, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    .line 89
    iput-object p3, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    return-void
.end method

.method public a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1282
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/e/f;)V
    .locals 1

    .line 311
    iput-object p1, p0, Lcom/oppo/camera/d/i;->e:Lcom/oppo/camera/e/f;

    .line 313
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->g(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public a([BIIIZ)V
    .locals 6

    .line 1223
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1224
    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/d/a;->a([BIIIZ)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/media/ImageReader;IZ)Z
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Landroid/media/ImageReader;IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 242
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public aA()V
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cf()V

    :cond_0
    return-void
.end method

.method public aB()Z
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cg()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public aC()Z
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ch()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aD()Z
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aK()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aE()V
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ci()V

    :cond_0
    return-void
.end method

.method public aF()Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cm()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aG()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cn()V

    :cond_0
    return-void
.end method

.method public aH()Z
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aI()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->A()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aJ()Z
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1318
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->z()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aK()I
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cq()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aL()Z
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bJ()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aM()I
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aV()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aN()V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cr()V

    :cond_0
    return-void
.end method

.method public aO()Ljava/lang/String;
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ct()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public aP()I
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bP()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bQ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public aR()I
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aS()I
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->K()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aT()I
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aS()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aU()V
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aT()V

    :cond_0
    return-void
.end method

.method public aV()I
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1433
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bM()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x28

    return v0
.end method

.method public aW()[I
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v0

    return-object v0

    .line 1443
    :cond_0
    sget-object v0, Lcom/oppo/camera/c;->e:[I

    return-object v0
.end method

.method public aX()Z
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aU()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public aY()Z
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ax()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aZ()V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->v()V

    :cond_0
    return-void
.end method

.method public aa()I
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bG()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ab()V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bH()V

    return-void
.end method

.method public ac()I
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cl()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ad()V
    .locals 8

    const-string v0, "initBaseModeMap"

    .line 779
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v2, "ModeManager"

    if-nez v1, :cond_0

    const-string v0, "initBaseModeMap, mBaseModeMap is null!"

    .line 782
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 786
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBaseModeMap, mBaseModeList Size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    const-string v3, "commonVideo"

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 791
    new-instance v1, Lcom/oppo/camera/d/f;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/f;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 793
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v4, "common"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 797
    new-instance v1, Lcom/oppo/camera/d/e;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v7, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/oppo/camera/d/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 799
    iget-object v4, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_2
    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 803
    iget-object v1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 804
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 805
    new-instance v1, Lcom/oppo/camera/d/f;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/f;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 807
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 811
    :cond_3
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_PORTRAIT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v4, "portrait"

    .line 812
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 813
    new-instance v1, Lcom/oppo/camera/k/b;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v7, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/oppo/camera/k/b;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 815
    iget-object v4, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 819
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 820
    new-instance v1, Lcom/oppo/camera/d/f;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/f;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 822
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "panorama"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 826
    new-instance v1, Lcom/oppo/camera/panorama/e;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/panorama/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 828
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "fastVideo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 832
    new-instance v1, Lcom/oppo/camera/g/a;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/g/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 834
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "slowVideo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 838
    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isVideoHighFrameRateEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 839
    new-instance v1, Lcom/oppo/camera/m/f;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/m/f;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 841
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "professional"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 845
    new-instance v1, Lcom/oppo/camera/professional/e;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/professional/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 847
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_9
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "sticker"

    .line 851
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 852
    new-instance v1, Lcom/oppo/camera/d/k;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/k;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 854
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_a
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_NIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "night"

    .line 858
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 859
    new-instance v1, Lcom/oppo/camera/d/j;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/j;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 861
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_b
    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeMode()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "highPictureSize"

    .line 865
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    .line 866
    new-instance v1, Lcom/oppo/camera/d/g;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/g;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 868
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_c
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPER_MACRO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    const-string v3, "macro"

    .line 872
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 873
    new-instance v1, Lcom/oppo/camera/d/l;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v6, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/oppo/camera/d/l;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 875
    iget-object v3, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_0
    const/4 v1, 0x1

    .line 881
    iput-boolean v1, p0, Lcom/oppo/camera/d/i;->f:Z

    .line 883
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initBaseModeMap X, mBaseModeList Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ae()Z
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public af()Z
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bj()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ag()Z
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bb()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ah()Z
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ai()Z
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aj()Z
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ak()V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bR()V

    :cond_0
    return-void
.end method

.method public al()V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bS()V

    :cond_0
    return-void
.end method

.method public am()V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bT()V

    :cond_0
    return-void
.end method

.method public an()V
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1046
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/a;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public ao()Z
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bV()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ap()Z
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bW()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aq()Z
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bX()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ar()Z
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bY()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public as()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bZ()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public at()Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ca()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public au()Z
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cb()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public av()Z
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cc()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aw()Z
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ax()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cj()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ay()J
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ck()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public az()V
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ce()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->e(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iput p1, p0, Lcom/oppo/camera/d/i;->a:I

    .line 402
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->f(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/media/Image;)V
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(ILjava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "ModeManager"

    const-string p2, "getPluginEnabled ,mode-string or mPlugins is null,so return"

    .line 890
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    monitor-exit p0

    return v0

    .line 895
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/d/a;

    .line 898
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 899
    invoke-virtual {p2}, Lcom/oppo/camera/d/a;->c()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 901
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/oppo/camera/d/a;->e()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 905
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 249
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .line 153
    iget v0, p0, Lcom/oppo/camera/d/i;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/d/i;->b(ILjava/lang/String;)Z

    move-result v0

    const-string v1, "ModeManager"

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode fail, the mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not enabled at cameraId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oppo/camera/d/i;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->h()Z

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "common"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    .line 160
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/oppo/camera/d/e;

    iget-object v2, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/oppo/camera/d/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 163
    iget-object v2, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "commonVideo"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    .line 165
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/oppo/camera/d/f;

    iget-object v2, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v4, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v5, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/oppo/camera/d/f;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 168
    iget-object v2, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentMode fail, the mode not change: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/d/a;

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentMode, cannot find cap mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz p1, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/oppo/camera/d/i;->a()Z

    move-result p1

    if-nez p1, :cond_4

    .line 188
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/i;->j:Ljava/lang/String;

    .line 191
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->T()V

    .line 194
    :cond_5
    iput-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    .line 195
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    iget v2, p0, Lcom/oppo/camera/d/i;->a:I

    invoke-virtual {p1, v2}, Lcom/oppo/camera/d/a;->f(I)V

    .line 196
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    iget-object v2, p0, Lcom/oppo/camera/d/i;->e:Lcom/oppo/camera/e/f;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/f;)V

    .line 198
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->S()V

    .line 199
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    iget-boolean v2, p0, Lcom/oppo/camera/d/i;->h:Z

    invoke-virtual {p1, v2}, Lcom/oppo/camera/d/a;->j(Z)V

    .line 200
    iget-object p1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    iget-boolean v2, p0, Lcom/oppo/camera/d/i;->i:Z

    invoke-virtual {p1, v2}, Lcom/oppo/camera/d/a;->h(Z)V

    .line 201
    iget-object p1, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v2, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v2}, Lcom/oppo/camera/d/a;->cu()Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->q(Z)V

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode, mCurrentMode mode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Z)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->d(Z)Z

    move-result p1

    return p1
.end method

.method public ba()Z
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1485
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->br()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bb()Z
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->bs()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bc()I
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cx()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bd()V
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1509
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cA()V

    :cond_0
    return-void
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/oppo/camera/d/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/i;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 417
    iput p1, p0, Lcom/oppo/camera/d/i;->a:I

    .line 418
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a_(Z)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/oppo/camera/ui/control/c;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ModeManager"

    const-string v1, "getShutterButtonInfo, mCurrentMode is null.."

    .line 120
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->k(I)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->c(Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1261
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 993
    iput-boolean p1, p0, Lcom/oppo/camera/d/i;->i:Z

    .line 995
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->h(Z)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e(I)Z
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->r(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->s(I)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->i(Z)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->P()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public g()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cs()V

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->m(I)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1007
    iput-boolean p1, p0, Lcom/oppo/camera/d/i;->h:Z

    .line 1009
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->j(Z)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(I)I
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->p(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x10

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->k(Z)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->t(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->d()Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/oppo/camera/d/i;->k:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/camera/d/i;->l:Lcom/oppo/camera/d/b;

    iget-object v2, p0, Lcom/oppo/camera/d/i;->m:Lcom/oppo/camera/ui/c;

    iget-object v3, p0, Lcom/oppo/camera/d/i;->n:Lcom/oppo/camera/ui/preview/a/i;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/oppo/camera/d/h;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)Lcom/oppo/camera/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/oppo/camera/d/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->l(Z)V

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "common"

    return-object v0
.end method

.method public j(I)V
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->u(I)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->w()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(I)V
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->v(I)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l(I)I
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->q(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l()V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforePreview, capMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onBeforePreview"

    .line 297
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->V()V

    .line 301
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public m(I)I
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->w(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public m()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->U()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aJ()V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1413
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->i(I)V

    :cond_0
    return-void
.end method

.method public o(I)I
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->g(I)I

    move-result p1

    return p1

    :cond_0
    const p1, -0x186a0

    return p1
.end method

.method public o()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->af()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->al()Z

    move-result v0

    return v0
.end method

.method public q()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ar()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aj()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ak()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aI()V

    return-void
.end method

.method public u()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->an()V

    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/i;->k(Z)V

    return-void
.end method

.method public v()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ao()V

    return-void
.end method

.method public w()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ap()V

    const/4 v0, 0x1

    .line 394
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/i;->k(Z)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->I()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aM()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/oppo/camera/d/i;->c:Lcom/oppo/camera/d/a;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aL()V

    :cond_0
    return-void
.end method
