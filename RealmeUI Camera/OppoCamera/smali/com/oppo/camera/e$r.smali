.class final Lcom/oppo/camera/e$r;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/e/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "r"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 6459
    iput-object p1, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 6459
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$r;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 4

    .line 6663
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$n;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 6665
    iget-object v1, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->h()I

    move-result v1

    const/16 v2, 0x20

    if-ne v2, v1, :cond_0

    .line 6666
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$n;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 6671
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/e$n;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 6672
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6673
    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/e$n;->h()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 6676
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInputConfiguration, configuration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Ljava/util/LinkedHashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 6462
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    const-string v1, "CameraManager"

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 6470
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ao()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v3, "pref_camera_slogan_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6474
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->P()Landroid/view/Surface;

    move-result-object v3

    const-string v4, "type_preview"

    invoke-virtual {p1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6476
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/e$n;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 6478
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v4

    const-string v5, "type_preview_frame"

    invoke-virtual {v4, v5}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v4

    const/16 v6, 0x23

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 6479
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6480
    invoke-static {v4}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6481
    invoke-static {v4}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-eq v4, v7, :cond_4

    .line 6482
    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6483
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 6486
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v8, 0x2

    invoke-static {v7, v3, v6, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6488
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->ap(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v4

    iget-object v7, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6489
    invoke-static {v7}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v7

    invoke-interface {v7}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v7

    .line 6488
    invoke-virtual {v3, v4, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 6492
    :cond_4
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6495
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/e$n;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 6497
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v4

    const-string v5, "type_still_capture"

    invoke-virtual {v4, v5}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x3

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    .line 6498
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6499
    invoke-static {v4}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6500
    invoke-static {v4}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-eq v4, v8, :cond_8

    .line 6501
    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 6502
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 6505
    :cond_7
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v9, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6506
    invoke-static {v9}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oppo/camera/e$n;->g()I

    move-result v9

    .line 6505
    invoke-static {v8, v3, v9, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oppo/camera/e;->d(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6507
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->ar(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 6510
    :cond_8
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6513
    :cond_9
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/e$n;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 6514
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v4

    const-string v5, "type_still_capture_raw"

    invoke-virtual {v4, v5}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v4

    const/16 v8, 0x14

    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 6517
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6518
    invoke-static {v4}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-ne v4, v9, :cond_a

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6519
    invoke-static {v4}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-eq v4, v9, :cond_d

    .line 6520
    :cond_a
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 6521
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 6526
    :cond_b
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v4

    const-string v9, "pref_support_raw_post_process"

    invoke-virtual {v4, v9}, Lcom/oppo/camera/e$n;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v8

    goto :goto_1

    :cond_c
    move v4, v7

    .line 6530
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configOutputSessionSurface, operatingMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v10}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oppo/camera/e$n;->e()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", maxImageNum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6533
    iget-object v9, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    const/16 v12, 0x20

    invoke-static {v10, v11, v12, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/oppo/camera/e;->e(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6535
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    iget-object v9, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v9}, Lcom/oppo/camera/e;->at(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v9

    iget-object v10, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6536
    invoke-static {v10}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v10

    invoke-interface {v10}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v10

    .line 6535
    invoke-virtual {v4, v9, v10}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_d
    if-eqz v0, :cond_e

    .line 6540
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6543
    :cond_e
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6546
    :cond_f
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v4

    const-string v5, "type_still_capture_yuv_main"

    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 6548
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "x"

    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    .line 6549
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6550
    invoke-static {v4}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v4, v10, :cond_10

    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6551
    invoke-static {v4}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-eq v4, v10, :cond_12

    .line 6552
    :cond_10
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 6553
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 6556
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configOutputSessionSurface, mainSurfaceSize: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6557
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6556
    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6559
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v10, v11, v6, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/oppo/camera/e;->f(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6561
    iget-object v4, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v4

    iget-object v10, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v10}, Lcom/oppo/camera/e;->av(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v10

    invoke-virtual {v4, v10, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_12
    if-eqz v0, :cond_13

    .line 6565
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6568
    :cond_13
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6571
    :cond_14
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    const-string v4, "type_still_capture_yuv_main_high_pixel_mfnr"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 6572
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6573
    invoke-static {v5}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v5

    .line 6572
    invoke-virtual {v3, v4, v5}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 6576
    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6577
    invoke-static {v5}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v5, v10, :cond_15

    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6578
    invoke-static {v5}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-eq v5, v10, :cond_17

    .line 6579
    :cond_15
    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 6580
    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    .line 6583
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configOutputSessionSurface, mainMfnrSurfaceSize: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6584
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6583
    invoke-static {v1, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6586
    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    .line 6587
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    .line 6586
    invoke-static {v10, v11, v6, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6588
    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v5

    iget-object v10, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v10}, Lcom/oppo/camera/e;->ax(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v10

    invoke-virtual {v5, v10, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_17
    if-eqz v0, :cond_18

    .line 6592
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6595
    :cond_18
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6599
    :cond_19
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v3

    const-string v4, "type_still_capture_yuv_sub"

    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    .line 6601
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v2, :cond_1e

    .line 6602
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6603
    invoke-static {v3}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_1a

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6604
    invoke-static {v3}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-eq v3, v5, :cond_1c

    .line 6605
    :cond_1a
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 6606
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 6609
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configOutputSessionSurface, subSurfaceSize: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6610
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6609
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6612
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v5, v10, v6, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6614
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->az(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v5

    iget-object v10, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6615
    invoke-static {v10}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v10

    invoke-interface {v10}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v10

    .line 6614
    invoke-virtual {v3, v5, v10}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1c
    if-eqz v0, :cond_1d

    .line 6619
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6622
    :cond_1d
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6625
    :cond_1e
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v3

    const-string v4, "type_still_capture_yuv_third"

    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    .line 6627
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/oppo/camera/e$n;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v2, :cond_23

    .line 6628
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6629
    invoke-static {v3}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_1f

    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6630
    invoke-static {v3}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-eq v3, v5, :cond_21

    .line 6631
    :cond_1f
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 6632
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 6635
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configOutputSessionSurface, thirdSurfaceSize: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6636
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6635
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6638
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v5, v9, v6, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6640
    iget-object v3, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v3

    iget-object v5, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v5}, Lcom/oppo/camera/e;->aB(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    .line 6641
    invoke-static {v6}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v6

    invoke-interface {v6}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v6

    .line 6640
    invoke-virtual {v3, v5, v6}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_21
    if-eqz v0, :cond_22

    .line 6645
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6648
    :cond_22
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    if-eqz v0, :cond_24

    .line 6651
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_24

    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->ao()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 6652
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aC(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6653
    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aC(Lcom/oppo/camera/e;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6656
    :cond_24
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e$n;->a(Ljava/util/HashMap;)V

    .line 6658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configOutputSessionSurface, surfaces: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6463
    :cond_25
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configOutputSessionSurface, mOneCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 6683
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6689
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$n;->i()V

    const-string v0, "setRepeatingRequest"

    .line 6691
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 6693
    iget-object v1, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aD(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$c;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 6695
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 6697
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$r$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$r$1;-><init>(Lcom/oppo/camera/e$r;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 6732
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6733
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->e()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "CameraManager"

    const-string v1, "onSessionConfigured, Camera closed, aborting"

    .line 6684
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onSessionConfigureFailed"

    .line 6739
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6741
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$r$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$r$2;-><init>(Lcom/oppo/camera/e$r;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 6748
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aL(Lcom/oppo/camera/e;)V

    .line 6750
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6751
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->N(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onSessionClosed"

    .line 6757
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6759
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$r$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$r$3;-><init>(Lcom/oppo/camera/e$r;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 6767
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6768
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 6769
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 6770
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6773
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aM(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6774
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aM(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 6775
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aM(Lcom/oppo/camera/e;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 6776
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 6779
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6780
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->d()V

    :cond_2
    return-void
.end method

.method public e()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6786
    iget-object v0, p0, Lcom/oppo/camera/e$r;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->i()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method
