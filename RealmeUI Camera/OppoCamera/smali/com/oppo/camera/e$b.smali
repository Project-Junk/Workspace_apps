.class public Lcom/oppo/camera/e$b;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 8388
    iput-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8389
    iput-object p1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    .line 8390
    iput-object p1, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 8463
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->w(Z)V

    .line 8465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchAnimEnd, Beauty3DState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->aK()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8467
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8468
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/q;->b(Z)V

    .line 8471
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aK()I

    move-result v0

    .line 8473
    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aK()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    .line 8474
    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aK()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_9

    .line 8523
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    goto/16 :goto_2

    .line 8475
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->A()V

    .line 8476
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->af()V

    .line 8478
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8479
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 8482
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    iget-object v3, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 8483
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aH()V

    .line 8484
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->G(Z)V

    .line 8485
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8486
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ag(Lcom/oppo/camera/e;)V

    .line 8488
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    const-string v3, "key_bubble_type_custom_beuty3d"

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    .line 8489
    invoke-static {v0}, Lcom/oppo/camera/e;->ba(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    .line 8490
    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    .line 8491
    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 8492
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0600c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 8494
    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 8496
    iget-object v4, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v4, v7, v8, v0, v3}, Lcom/oppo/camera/ui/e;->a(Landroid/view/View;III)V

    .line 8499
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v6}, Lcom/oppo/camera/e;->n(Lcom/oppo/camera/e;Z)Z

    .line 8501
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8502
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    .line 8504
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3, v0}, Lcom/oppo/camera/e;->f(Lcom/oppo/camera/e;I)V

    .line 8506
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8507
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->r()Lcom/oppo/camera/ui/preview/a/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    .line 8511
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aK()I

    move-result v0

    if-ne v0, v5, :cond_8

    const-string v0, "onSwitchAnimEnd, retsetBeauty3DState"

    .line 8512
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8514
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/oppo/camera/d/i;->k(I)V

    .line 8517
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 8526
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->k(Z)V

    .line 8527
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->c(I)V

    .line 8528
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->i(Z)V

    .line 8529
    iget-object v0, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->g(Z)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 5

    .line 8394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimStart, Beauty3DState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aK()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8396
    iput-object p1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    .line 8397
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8398
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->G(Z)V

    .line 8399
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 8400
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 8402
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string v1, "pref_zoom_key"

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    .line 8403
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string v1, "pref_expand_popbar_key"

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8404
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8407
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aK()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    const/16 v4, 0xe

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 8426
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8427
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    goto :goto_0

    .line 8415
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8416
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    goto :goto_1

    .line 8420
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aH()V

    .line 8421
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8422
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    goto :goto_1

    .line 8409
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aD()V

    .line 8410
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8411
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    goto :goto_1

    .line 8430
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->aj()V

    .line 8431
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->v(Z)V

    :goto_1
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 2

    .line 8441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimMiddle, mAfterSwitchPrvSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8443
    iput-object p1, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    .line 8444
    iput-object p2, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    .line 8446
    iget-object p1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    if-eqz p1, :cond_2

    .line 8447
    iget-object p1, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    if-eqz p1, :cond_0

    .line 8448
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/oppo/camera/e$b;->c:Landroid/util/Size;

    .line 8449
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 8448
    invoke-static {p2, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p2

    iget-object v0, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    .line 8449
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    .line 8448
    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/e;->d(II)V

    .line 8452
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    .line 8454
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aK()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    .line 8455
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aK()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 8456
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$b;->a:Lcom/oppo/camera/e;

    iget-object p2, p0, Lcom/oppo/camera/e$b;->b:Landroid/util/Size;

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
