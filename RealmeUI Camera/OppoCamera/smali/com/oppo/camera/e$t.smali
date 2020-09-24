.class public Lcom/oppo/camera/e$t;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 8258
    iput-object p1, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 8369
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->m(I)I

    move-result v0

    .line 8371
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v1, :cond_0

    add-int/lit16 v0, v0, 0x96

    .line 8375
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSwitchAnimTime, switchTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraManager"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "onSwitchAnimStart"

    .line 8261
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8263
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8267
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8268
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 8271
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8272
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    .line 8275
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 8276
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aD()V

    .line 8278
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v2, "pref_zoom_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    .line 8279
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v2, "pref_expand_popbar_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8280
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8283
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8284
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 8289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchAnimMiddle, mAfterSwitchPrvSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8291
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8295
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8296
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    .line 8297
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 8300
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8301
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 7

    const-string v0, "CameraManager"

    const-string v1, "onSwitchAnimEnd"

    .line 8308
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8310
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8314
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8315
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    .line 8316
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->w(Z)V

    .line 8317
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 8318
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->A()V

    .line 8319
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->af()V

    .line 8320
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8322
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8323
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 8326
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ab()V

    .line 8328
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8329
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v3, "pref_filter_process_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8330
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->k(Z)V

    goto :goto_0

    .line 8332
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->l(Z)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 8338
    iget-object v3, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    const-string v4, "pref_portrait_new_style_menu"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "pref_video_filter_menu"

    const-string v6, "pref_filter_menu"

    if-eqz v3, :cond_4

    move-object v0, v4

    goto :goto_1

    .line 8340
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v6

    goto :goto_1

    .line 8342
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v5

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 8347
    iget-object v3, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    .line 8350
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v3, "func_face_beauty_process"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8351
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->m(Z)V

    goto :goto_2

    .line 8353
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 8356
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ag(Lcom/oppo/camera/e;)V

    .line 8358
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->g(Z)V

    .line 8360
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8362
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 8363
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aZ(Lcom/oppo/camera/e;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    :cond_9
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onSwitchAnimCancel"

    .line 8382
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8384
    iget-object v0, p0, Lcom/oppo/camera/e$t;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->g(Z)V

    return-void
.end method
