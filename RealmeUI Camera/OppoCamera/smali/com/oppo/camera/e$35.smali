.class Lcom/oppo/camera/e$35;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 8865
    iput-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 9292
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/f;->e()V

    .line 9293
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->v()V

    .line 9295
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bs(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9296
    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9297
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->O()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9298
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v1, "pref_continuous_focus_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9299
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->d(Z)V

    .line 9302
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9303
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 9304
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    .line 9307
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a([Landroid/hardware/camera2/params/Face;)V

    return-void
.end method

.method public B()V
    .locals 1

    .line 9312
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->C(Lcom/oppo/camera/e;)Lcom/oppo/camera/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9313
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->C(Lcom/oppo/camera/e;)Lcom/oppo/camera/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/o;->d()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 9

    .line 9319
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->t()V

    .line 9321
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 9322
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9323
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9324
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->J(Z)V

    goto :goto_0

    .line 9327
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(I)V

    .line 9331
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const-string v4, "key_short_video"

    .line 9332
    invoke-virtual {v3, v4}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v4

    iget-object v5, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9333
    invoke-static {v5}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/d/i;->au()Z

    move-result v5

    xor-int/2addr v5, v2

    .line 9331
    invoke-virtual {v0, v3, v4, v5}, Lcom/oppo/camera/ui/e;->c(ZZZ)V

    .line 9335
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v0

    if-nez v0, :cond_8

    .line 9336
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9337
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v3, "pref_zoom_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9338
    new-instance v0, Lcom/oppo/camera/e$35$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$35$2;-><init>(Lcom/oppo/camera/e$35;)V

    .line 9363
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e$35;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_3

    .line 9365
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9366
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->k(Z)V

    .line 9367
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->m(Z)V

    .line 9370
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->x()V

    .line 9371
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e$35;->c(Z)V

    .line 9373
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ba()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9374
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->br(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9375
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->a(I)V

    goto :goto_3

    .line 9377
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ax()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9378
    invoke-static {v0}, Lcom/oppo/camera/e;->ae(Lcom/oppo/camera/e;)Z

    move-result v5

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9379
    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->a()F

    move-result v6

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aw()F

    move-result v7

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9380
    invoke-static {v0}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v8

    .line 9377
    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/x;->a(Ljava/util/List;ZZZFFLandroid/graphics/Rect;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public D()Z
    .locals 3

    .line 9445
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/j/b;->a(ZLandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E()V
    .locals 1

    .line 9454
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/f;->a()V

    return-void
.end method

.method public F()Z
    .locals 1

    .line 9459
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->d()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 1

    .line 9464
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bu(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public H()V
    .locals 1

    .line 9469
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->z()V

    return-void
.end method

.method public I()I
    .locals 1

    .line 9474
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bv(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public J()V
    .locals 2

    .line 9502
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->l(I)V

    return-void
.end method

.method public K()V
    .locals 1

    .line 9507
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bw(Lcom/oppo/camera/e;)V

    return-void
.end method

.method public L()V
    .locals 2

    .line 9517
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->r(Lcom/oppo/camera/e;)I

    .line 9519
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 9520
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;I)I

    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    .line 9567
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9568
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->t()V

    :cond_0
    return-void
.end method

.method public N()I
    .locals 1

    .line 9590
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9591
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    .line 9598
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->s()Z

    move-result v0

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 9603
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->by(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 9608
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bz(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()I
    .locals 1

    .line 9612
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bA(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .line 9617
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->v(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 9622
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()I
    .locals 1

    .line 9627
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bB(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 1

    .line 9632
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aq()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    .line 9637
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->br(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/oppo/camera/Ipa/e$a;)Landroid/net/Uri;
    .locals 3

    .line 9149
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bo(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9150
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aV(Lcom/oppo/camera/e;)Ljava/util/List;

    move-result-object v0

    iget-wide v1, p1, Lcom/oppo/camera/Ipa/e$a;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9151
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bo(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/Ipa/e;->a(Lcom/oppo/camera/Ipa/e$a;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/oppo/camera/entry/b;
    .locals 1

    .line 8868
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 9090
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->b(I)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V
    .locals 6

    .line 8913
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 8914
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->t()V

    .line 8916
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 8917
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8918
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->bg(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8919
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8918
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8922
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8923
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->bg(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8924
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8923
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8927
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8928
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->bg(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8929
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8928
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8932
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8933
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/oppo/camera/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;

    .line 8934
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v2, v3}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;J)J

    goto/16 :goto_8

    .line 8936
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 8937
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->av(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8938
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8937
    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8941
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 8942
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->ax(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8943
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8942
    :goto_4
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8946
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 8947
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->az(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8948
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_5

    :cond_b
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8947
    :goto_5
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8951
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 8952
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aB(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8953
    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v3

    goto :goto_6

    :cond_d
    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8952
    :goto_6
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8956
    :cond_e
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v2, "pref_sticker_process_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8957
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aO(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/a/i;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8958
    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aj()I

    move-result v3

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    .line 8957
    :goto_7
    invoke-interface {v0, v2, v3}, Lcom/oppo/camera/ui/preview/a/i;->a(Landroid/util/Size;Z)V

    .line 8961
    :cond_10
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 8962
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->ar(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8963
    invoke-static {v3}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v3

    .line 8962
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 8967
    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->C()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8968
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1, v1, p2, p3}, Lcom/oppo/camera/e/f;->a(ZLcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    goto :goto_a

    .line 8970
    :cond_12
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8971
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1, p3, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$a;Lcom/oppo/camera/e/d;)V

    goto :goto_a

    .line 8973
    :cond_13
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 8974
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->bh(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/e/f;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;Landroid/os/Handler;)V

    goto :goto_9

    .line 8976
    :cond_14
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/oppo/camera/e/f;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    .line 8979
    :goto_9
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bi(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/Ipa/c;->b()V

    .line 8981
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->I()Ljava/lang/String;

    move-result-object p1

    const-string p2, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8982
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->I()Ljava/lang/String;

    move-result-object p1

    const-string p2, "torch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 8983
    :cond_15
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->g()Z

    move-result p1

    if-nez p1, :cond_16

    .line 8984
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->e()V

    :cond_16
    :goto_a
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 9574
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9575
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .line 9217
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/v$a;)V
    .locals 1

    .line 9144
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/v$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9102
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->p(Z)V

    return-void
.end method

.method public a(ZLjava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 9479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEffectMenuData, currMenuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currItemIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9481
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/oppo/camera/ui/e;->a(Ljava/util/List;Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 9483
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string p2, "pref_filter_process_key"

    invoke-virtual {p1, p2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9484
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->r()Lcom/oppo/camera/ui/preview/a/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    .line 9486
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9487
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 9489
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/e;->i(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 9512
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/e;->b(ZZ)V

    return-void
.end method

.method public a([B)V
    .locals 2

    const-string p1, "CameraManager"

    const-string v0, "beforePictureTaken"

    .line 9004
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9006
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 9010
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->R()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9011
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 9012
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->e()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 9013
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->j(I)V

    .line 9016
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9017
    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9018
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9019
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->W()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9020
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/c;Z)V

    :cond_2
    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z
    .locals 1

    .line 9581
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9582
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 1

    .line 9212
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->j(Z)V

    return-void
.end method

.method public b([B)V
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "afterPictureTaken"

    .line 9027
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9029
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 9033
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bj(Lcom/oppo/camera/e;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9034
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bk(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/control/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9035
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bk(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/control/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/control/a;->h()V

    .line 9038
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->h(Z)V

    .line 9041
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bl(Lcom/oppo/camera/e;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9043
    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 9044
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9045
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1, v0}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;Z)Z

    .line 9046
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 9047
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 9048
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aH(Lcom/oppo/camera/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9052
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9056
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9057
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->discardFreeBuffers()V

    .line 9060
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9061
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->discardFreeBuffers()V

    .line 9064
    :cond_5
    sget p1, Lcom/oppo/camera/v;->s:I

    if-nez p1, :cond_6

    .line 9065
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bm(Lcom/oppo/camera/e;)V

    :cond_6
    return-void
.end method

.method public b()Z
    .locals 3

    .line 8874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeCaptureProcess, mCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->bf(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8875
    invoke-static {v1}, Lcom/oppo/camera/e;->J(Lcom/oppo/camera/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 8874
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8877
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->Y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8878
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8879
    invoke-static {v0}, Lcom/oppo/camera/e;->J(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 8883
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8884
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/oppo/camera/e$35$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$35$1;-><init>(Lcom/oppo/camera/e$35;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8894
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->j(I)V

    .line 8896
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v0

    .line 8897
    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2, v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;I)I

    .line 8898
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;I)I

    .line 8899
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;Z)Z

    .line 8901
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8902
    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8903
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v1, "pref_time_lapse_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 8904
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8905
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->n()V

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    .line 8993
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8994
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8995
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x4

    const-string v2, "button_color_inside_grey"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 8997
    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 9232
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->x(Z)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 9071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetVideoTakePicture, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9073
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9077
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->r(Z)V

    .line 9078
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 9079
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    .line 9080
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->j(I)V

    return-void
.end method

.method public d(Z)V
    .locals 5

    .line 9389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecordingProcess, failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9391
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 9392
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->w()V

    .line 9394
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    if-ne v0, v3, :cond_0

    if-nez p1, :cond_0

    .line 9395
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e$35;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9396
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->i(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 9402
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/e$35;->a(ZZ)V

    .line 9404
    iget-object v4, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->r()I

    move-result v4

    if-ne v4, v3, :cond_3

    if-nez p1, :cond_2

    .line 9406
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e$35;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9407
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->i(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 9409
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->w()V

    .line 9410
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/control/c;Z)V

    .line 9413
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bm(Lcom/oppo/camera/e;)V

    goto :goto_1

    .line 9415
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->bt(Lcom/oppo/camera/e;)V

    if-nez p1, :cond_4

    .line 9418
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->au()Z

    move-result p1

    if-nez p1, :cond_4

    .line 9419
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 9420
    invoke-static {}, Lcom/oppo/camera/ui/control/g;->a()V

    .line 9421
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/e;->c(Z)V

    const-string p1, "CameraTest Video Thumbnail Saved"

    .line 9423
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9427
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->r(Z)V

    .line 9429
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->H()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 9430
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 9429
    invoke-virtual {p1, v0, v1, v2}, Lcom/oppo/camera/e;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 9432
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->v()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->D()Z

    move-result p1

    if-nez p1, :cond_5

    .line 9433
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->A(Z)V

    .line 9436
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bm(Lcom/oppo/camera/e;)V

    .line 9439
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->w()V

    .line 9440
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/f;->d()V

    return-void
.end method

.method public e()I
    .locals 1

    .line 9085
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bf(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 6

    .line 9526
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CameraManager"

    const-string v0, "onBeauty3DChange, BlurAnimRunning, return"

    .line 9527
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9532
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0, p1}, Lcom/oppo/camera/e;->n(Lcom/oppo/camera/e;Z)Z

    .line 9533
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v1

    const/4 p1, 0x0

    .line 9536
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9537
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    :cond_1
    move-object v2, p1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 9541
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/oppo/camera/e;->bx(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$b;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9544
    iget-object p1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 1

    .line 9095
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9096
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->ad()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 9107
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h()Z
    .locals 2

    .line 9112
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 2

    .line 9117
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9118
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->A(Z)V

    :cond_0
    return-void
.end method

.method public j()Landroid/content/SharedPreferences;
    .locals 1

    .line 9129
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 9134
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .line 9139
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bn(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 9159
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->u(Lcom/oppo/camera/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()J
    .locals 2

    .line 9164
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->t(Lcom/oppo/camera/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Landroid/location/Location;
    .locals 1

    .line 9169
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bp(Lcom/oppo/camera/e;)Lcom/oppo/camera/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9170
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bp(Lcom/oppo/camera/e;)Lcom/oppo/camera/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/m;->c()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 9178
    invoke-virtual {p0}, Lcom/oppo/camera/e$35;->O()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 9183
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()Z
    .locals 1

    .line 9192
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->U(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 1

    .line 9197
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->q()V

    return-void
.end method

.method public u()Z
    .locals 1

    .line 9202
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 9207
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->J(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public w()V
    .locals 1

    .line 9222
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->al()V

    return-void
.end method

.method public x()V
    .locals 1

    .line 9227
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->am()V

    return-void
.end method

.method public y()Z
    .locals 2

    .line 9237
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 9239
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aa()V

    .line 9240
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->u()V

    .line 9242
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9243
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->al()V

    .line 9246
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 9247
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bq(Lcom/oppo/camera/e;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public z()V
    .locals 9

    .line 9255
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    const-string v3, "key_short_video"

    .line 9256
    invoke-virtual {v2, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 9255
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->i(ZZ)V

    .line 9258
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 9259
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9260
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->K(Z)V

    goto :goto_0

    .line 9262
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(I)V

    .line 9266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9267
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/ui/e;->l(ZZ)V

    .line 9268
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Z)V

    goto :goto_1

    .line 9270
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 9273
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9274
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->o(Z)V

    .line 9277
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v1, v3}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 9279
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ba()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9280
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->br(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9281
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->a(I)V

    goto :goto_2

    .line 9283
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v1

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ax()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9284
    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->a()F

    move-result v6

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aw()F

    move-result v7

    iget-object v0, p0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    .line 9285
    invoke-static {v0}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v8

    .line 9283
    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/x;->a(Ljava/util/List;ZZZFFLandroid/graphics/Rect;)V

    :cond_5
    :goto_2
    return-void
.end method
