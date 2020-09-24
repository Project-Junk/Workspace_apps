.class Lcom/oppo/camera/panorama/e$1;
.super Landroid/os/Handler;
.source "PanoramaCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/panorama/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/panorama/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/panorama/e;Landroid/os/Looper;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 318
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->i(Lcom/oppo/camera/panorama/e;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    .line 323
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    invoke-virtual {v1, p1, v6}, Lcom/oppo/camera/panorama/d;->a([BZ)Lcom/oppo/camera/panorama/d$a;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 327
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->E(Lcom/oppo/camera/panorama/e;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->m(Lcom/oppo/camera/panorama/e;)I

    move-result p1

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->n(Lcom/oppo/camera/panorama/e;)I

    move-result v1

    mul-int/2addr v1, v4

    sub-int/2addr p1, v1

    int-to-float p1, p1

    .line 329
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 331
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 332
    invoke-virtual {v12, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 334
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    .line 333
    invoke-static/range {v7 .. v13}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 336
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/panorama/e;I)I

    .line 337
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/panorama/f;->setFrameSize(I)V

    .line 338
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object v1

    invoke-virtual {v1, p1, v6, v6}, Lcom/oppo/camera/panorama/f;->a(Landroid/graphics/Bitmap;II)V

    .line 341
    :cond_0
    monitor-exit v0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 304
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    const-string v1, "PanoramaCapMode"

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, MSG_REAR_PANORAMA_RESET, mbPanning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v3}, Lcom/oppo/camera/panorama/e;->i(Lcom/oppo/camera/panorama/e;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1, v6}, Lcom/oppo/camera/panorama/e;->a(Lcom/oppo/camera/panorama/e;Z)Z

    .line 309
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d;->b()V

    .line 311
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->l(Lcom/oppo/camera/panorama/e;)I

    move-result v6

    :cond_1
    invoke-virtual {v1, v6}, Lcom/oppo/camera/panorama/d;->a(I)V

    .line 313
    :cond_2
    monitor-exit v0

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 292
    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    const-string v0, "PanoramaCapMode"

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage, MSG_REAR_PANORAMA_ERROR, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {v1, v2}, Lcom/fotonation/panorama/PanoramaEngine;->panoramaGetErrorStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->l(Lcom/oppo/camera/panorama/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/panorama/d;->a(I)V

    .line 299
    :cond_3
    monitor-exit p1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 254
    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 255
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/f;->c()V

    .line 258
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->o(Lcom/oppo/camera/panorama/e;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/panorama/e;->c(I)V

    .line 259
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/panorama/e;->x(I)V

    const-string p1, "PanoramaCapMode"

    const-string v0, "handleMessage, MSG_REAR_PANORAMA_FINISH"

    .line 261
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/16 v0, 0xb

    const-string v1, "button_color_inside_none"

    invoke-direct {p1, v0, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->p(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 267
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->q(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/oppo/camera/ui/c;->h(I)V

    .line 268
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->r(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v6, v5}, Lcom/oppo/camera/ui/c;->b(IZ)V

    .line 269
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->s(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/oppo/camera/ui/c;->d(I)V

    .line 270
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->t(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/oppo/camera/ui/c;->e(I)V

    .line 271
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->u(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/oppo/camera/ui/c;->f(I)V

    .line 272
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->v(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v6, v5}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 273
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->w(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object p1

    invoke-interface {p1, v5, v6}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 275
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->x(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->p()Z

    move-result p1

    if-nez p1, :cond_5

    .line 276
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->y(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/d/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->M()V

    .line 277
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->z(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/oppo/camera/e/f;->e(Z)V

    .line 278
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->A(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    const/4 v0, 0x4

    .line 279
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 278
    invoke-interface {p1, v0, v1, v2, v5}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 280
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->B(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-static {}, Lcom/oppo/camera/a;->b()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->c(I)V

    .line 283
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->C(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 284
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->D(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 286
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1, v6}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/panorama/e;Z)Z

    .line 287
    iget-object v7, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/oppo/camera/panorama/e;->ab()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/oppo/camera/panorama/e;->a([BIILjava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 194
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v7, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v7}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v7}, Lcom/oppo/camera/panorama/e;->i(Lcom/oppo/camera/panorama/e;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_3

    .line 201
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oppo/camera/panorama/d$d;

    if-eqz p1, :cond_f

    .line 203
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->a()J

    move-result-wide v7

    cmp-long v1, v7, v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    .line 207
    :cond_7
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->b()I

    move-result v1

    const/16 v2, 0x66

    const/16 v7, 0x65

    if-eqz v1, :cond_9

    .line 208
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->b()I

    move-result v1

    if-eq v7, v1, :cond_9

    .line 209
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->b()I

    move-result v1

    if-ne v2, v1, :cond_8

    goto :goto_0

    .line 245
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->c()[I

    move-result-object v2

    aget v2, v2, v5

    neg-int v2, v2

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->c()[I

    move-result-object v4

    aget v4, v4, v6

    invoke-virtual {v1, v2, v4}, Lcom/oppo/camera/panorama/d;->c(II)V

    goto/16 :goto_1

    .line 210
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->b()I

    move-result v1

    if-ne v7, v1, :cond_a

    .line 211
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->j(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/ui/c;

    move-result-object v1

    invoke-interface {v1, v5, v6}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    .line 212
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->k(Lcom/oppo/camera/panorama/e;)I

    .line 215
    :cond_a
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->l(Lcom/oppo/camera/panorama/e;)I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 216
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/fotonation/panorama/PanoramaEngine;->panoramaGetDirection(J)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/oppo/camera/panorama/d;->b(I)V

    .line 220
    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->c()[I

    move-result-object v8

    aget v8, v8, v5

    neg-int v8, v8

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->c()[I

    move-result-object v9

    aget v6, v9, v6

    invoke-virtual {v1, v8, v6}, Lcom/oppo/camera/panorama/d;->c(II)V

    .line 223
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->b()I

    move-result v1

    if-ne v7, v1, :cond_c

    .line 224
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    .line 225
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->d()[B

    move-result-object v6

    .line 224
    invoke-virtual {v1, v6, v5}, Lcom/oppo/camera/panorama/d;->a([BZ)Lcom/oppo/camera/panorama/d$a;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 229
    iget-object v7, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v7}, Lcom/oppo/camera/panorama/e;->m(Lcom/oppo/camera/panorama/e;)I

    move-result v7

    iget-object v8, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v8}, Lcom/oppo/camera/panorama/e;->n(Lcom/oppo/camera/panorama/e;)I

    move-result v8

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    int-to-float v4, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 231
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 232
    invoke-virtual {v11, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 233
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 234
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    .line 233
    invoke-static/range {v6 .. v12}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 236
    iget-object v7, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v7}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object v7

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d$a;->a()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 237
    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d$a;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 236
    invoke-virtual {v7, v6, v8, v1}, Lcom/oppo/camera/panorama/f;->a(Landroid/graphics/Bitmap;II)V

    .line 240
    :cond_c
    invoke-virtual {p1}, Lcom/oppo/camera/panorama/d$d;->b()I

    move-result v1

    if-eq v2, v1, :cond_d

    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v1}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/panorama/d;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 242
    :cond_d
    iget-object v1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-virtual {v1, v5}, Lcom/oppo/camera/panorama/e;->b(Z)V

    .line 248
    :cond_e
    :goto_1
    invoke-virtual {p1, v3}, Lcom/oppo/camera/panorama/d$d;->a([B)V

    .line 249
    monitor-exit v0

    goto/16 :goto_4

    .line 204
    :cond_f
    :goto_2
    monitor-exit v0

    return-void

    :cond_10
    :goto_3
    const-string p1, "PanoramaCapMode"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, MSG_REAR_PANORAMA_PROCESS, mFNPanoramaProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    .line 197
    invoke-static {v2}, Lcom/oppo/camera/panorama/e;->h(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mbPanning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v2}, Lcom/oppo/camera/panorama/e;->i(Lcom/oppo/camera/panorama/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    .line 249
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :pswitch_5
    const-string p1, "PanoramaCapMode"

    const-string v0, "handleMessage, MSG_REAR_PANORAMA_START"

    .line 179
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1, v5}, Lcom/oppo/camera/panorama/e;->a(Lcom/oppo/camera/panorama/e;Z)Z

    .line 183
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/panorama/f;->getFrameSize()I

    move-result p1

    if-nez p1, :cond_11

    .line 184
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->e(Lcom/oppo/camera/panorama/e;)Lcom/oppo/camera/panorama/f;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->f(Lcom/oppo/camera/panorama/e;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/panorama/f;->setFrameSize(I)V

    .line 187
    :cond_11
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1}, Lcom/oppo/camera/panorama/e;->g(Lcom/oppo/camera/panorama/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 188
    :try_start_4
    iget-object p1, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {p1, v6}, Lcom/oppo/camera/panorama/e;->a(Lcom/oppo/camera/panorama/e;I)I

    .line 189
    monitor-exit v0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    .line 172
    :pswitch_6
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/panorama/e;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 173
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/e;->x(I)V

    goto :goto_4

    .line 159
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->b(Lcom/oppo/camera/panorama/e;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    .line 162
    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->c(Lcom/oppo/camera/panorama/e;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    .line 163
    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->d(Lcom/oppo/camera/panorama/e;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 166
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->d(Lcom/oppo/camera/panorama/e;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 154
    :pswitch_8
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    invoke-static {v0}, Lcom/oppo/camera/panorama/e;->a(Lcom/oppo/camera/panorama/e;)V

    .line 155
    iget-object v0, p0, Lcom/oppo/camera/panorama/e$1;->a:Lcom/oppo/camera/panorama/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/panorama/e;->n(Z)V

    :cond_12
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
