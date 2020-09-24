.class public Lcom/oppo/camera/e/h;
.super Ljava/lang/Object;
.source "OppoCameraCharacteristics.java"


# instance fields
.field private final a:Landroid/hardware/camera2/CameraCharacteristics;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/oppo/camera/e/h;->b:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/oppo/camera/e/h;->c:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/oppo/camera/e/h;->d:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/oppo/camera/e/h;->f:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/oppo/camera/e/h;->g:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/oppo/camera/e/h;->h:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method

.method private K()F
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->g()[F

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 297
    aget v0, v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private L()F
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->h()[F

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 307
    aget v0, v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private M()F
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->g()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 317
    aget v0, v0, v1

    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->f()F

    move-result v0

    return v0
.end method

.method private N()F
    .locals 3

    .line 324
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->h()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 327
    aget v0, v0, v1

    return v0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->f()F

    move-result v0

    return v0
.end method


# virtual methods
.method public A()[I
    .locals 1

    .line 546
    sget-object v0, Lcom/oppo/camera/e/c;->e:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/oppo/camera/e/c;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    .line 555
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 556
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 557
    new-instance v4, Landroid/util/Size;

    aget v5, v1, v2

    aget v3, v1, v3

    invoke-direct {v4, v5, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public C()Z
    .locals 7

    .line 588
    sget-object v0, Lcom/oppo/camera/e/c;->h:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    .line 589
    sget-object v1, Lcom/oppo/camera/e/c;->i:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 591
    array-length v4, v0

    if-lez v4, :cond_1

    .line 592
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v0, v5

    if-ne v6, v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 600
    array-length v4, v1

    if-lez v4, :cond_3

    .line 601
    array-length v4, v1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    aget v6, v1, v5

    if-ne v6, v3, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public D()Z
    .locals 6

    .line 613
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 617
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/c;->i:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 619
    array-length v3, v0

    if-lez v3, :cond_2

    .line 620
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    if-ne v5, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public E()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public F()Z
    .locals 1

    .line 696
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public G()Z
    .locals 6

    .line 701
    sget-object v0, Lcom/oppo/camera/e/c;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 703
    array-length v2, v0

    if-lez v2, :cond_1

    .line 704
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public H()Z
    .locals 6

    .line 717
    sget-object v0, Lcom/oppo/camera/e/c;->n:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 719
    array-length v3, v0

    if-lez v3, :cond_1

    .line 720
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v0, v4

    if-ne v5, v2, :cond_0

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupport3Hdr, support3HDR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoCameraCharacteristics"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public I()Z
    .locals 3

    const/4 v0, 0x0

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/oppo/camera/e/c;->t:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    .line 755
    array-length v2, v1

    if-lez v2, :cond_0

    .line 756
    aget v1, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 761
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public J()Z
    .locals 3

    const/4 v0, 0x0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/oppo/camera/e/c;->u:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    .line 771
    array-length v2, v1

    if-lez v2, :cond_0

    .line 772
    aget v1, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 777
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public a(ZZ)F
    .locals 0

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->g()[F

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->h()[F

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 287
    aget p1, p1, p2

    return p1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public a(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 5

    .line 259
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 261
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    sub-float p1, v2, v1

    const v1, -0x438a3d71    # -0.015f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 267
    new-instance p1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-direct {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 271
    new-instance p1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/e/h;->f:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 124
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 129
    :try_start_1
    iget-object v1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 139
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 143
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    monitor-enter p0

    .line 149
    :try_start_2
    iput-object v2, p0, Lcom/oppo/camera/e/h;->f:Ljava/util/List;

    .line 150
    iget-object v0, p0, Lcom/oppo/camera/e/h;->f:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 151
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    const-string v1, "OppoCameraCharacteristics"

    const-string v2, "Unable to obtain preview sizes"

    .line 131
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :catchall_1
    move-exception v0

    .line 124
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    .line 73
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 78
    :try_start_1
    iget-object v1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 90
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 91
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->B()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 107
    invoke-static {v2, v1}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;Landroid/util/Size;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 108
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 113
    :cond_5
    monitor-enter p0

    .line 114
    :try_start_2
    iget-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    const-string v1, "OppoCameraCharacteristics"

    const-string v2, "Unable to obtain picture sizes"

    .line 80
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    iget-object v0, p0, Lcom/oppo/camera/e/h;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catchall_1
    move-exception p1

    .line 73
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e/h;->h:Ljava/util/List;

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e/h;->h:Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x41200000    # 10.0f

    if-nez p2, :cond_4

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_2

    .line 354
    iget-object p1, p0, Lcom/oppo/camera/e/h;->d:Ljava/util/List;

    if-nez p1, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/oppo/camera/e/h;->L()F

    move-result p1

    .line 356
    invoke-direct {p0}, Lcom/oppo/camera/e/h;->N()F

    move-result p2

    .line 357
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oppo/camera/e/h;->d:Ljava/util/List;

    .line 359
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-gtz p3, :cond_1

    mul-float/2addr p1, v2

    .line 360
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 361
    iget-object p3, p0, Lcom/oppo/camera/e/h;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr p1, v1

    goto :goto_0

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e/h;->d:Ljava/util/List;

    return-object p1

    .line 366
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e/h;->b:Ljava/util/List;

    if-nez p1, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->f()F

    move-result p1

    .line 369
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oppo/camera/e/h;->b:Ljava/util/List;

    .line 371
    :goto_1
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gtz p2, :cond_3

    mul-float/2addr v0, v2

    .line 372
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 373
    iget-object p3, p0, Lcom/oppo/camera/e/h;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float v0, p2, v1

    goto :goto_1

    .line 377
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e/h;->b:Ljava/util/List;

    return-object p1

    .line 335
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/oppo/camera/e/h;->c:Ljava/util/List;

    if-nez p2, :cond_6

    .line 336
    invoke-direct {p0}, Lcom/oppo/camera/e/h;->K()F

    move-result p2

    .line 337
    invoke-direct {p0}, Lcom/oppo/camera/e/h;->M()F

    move-result p3

    if-eqz p1, :cond_5

    const/high16 p3, 0x40a00000    # 5.0f

    move p2, v0

    .line 344
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/e/h;->c:Ljava/util/List;

    .line 346
    :goto_3
    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_6

    mul-float/2addr p2, v2

    .line 347
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 348
    iget-object p2, p0, Lcom/oppo/camera/e/h;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float p2, p1, v1

    goto :goto_3

    .line 352
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/e/h;->c:Ljava/util/List;

    return-object p1
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)[I"
        }
    .end annotation

    const-string v0, "OppoCameraCharacteristics"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 575
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntArrayConfig, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntArrayConfig, tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public b()I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "OppoCameraCharacteristics"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 641
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    .line 643
    instance-of v3, v2, Ljava/lang/Byte;

    if-eqz v3, :cond_1

    .line 644
    check-cast v2, Ljava/lang/Byte;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 645
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 646
    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 647
    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 648
    check-cast v2, Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 649
    :cond_3
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 650
    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 651
    :cond_4
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 652
    check-cast v2, Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 653
    :cond_5
    instance-of v3, v2, [I

    if-eqz v3, :cond_9

    .line 654
    check-cast v2, [I

    check-cast v2, [I

    if-eqz v2, :cond_9

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 659
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_8

    .line 660
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_7

    add-int/lit8 v5, v4, 0x1

    array-length v6, v2

    if-ge v5, v6, :cond_7

    const/4 v6, 0x2

    if-lt v4, v6, :cond_6

    const-string v6, ";"

    .line 662
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 669
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfig, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_9
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig, tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,result: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public c()I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v1, 0x0

    .line 739
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 740
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 741
    new-instance v3, Landroid/util/Size;

    aget v4, p1, v1

    aget v2, p1, v2

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public e()Landroid/util/SizeF;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    return-object v0
.end method

.method public f()F
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public g()[F
    .locals 2

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/oppo/camera/e/c;->o:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()[F
    .locals 2

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/oppo/camera/e/c;->p:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/oppo/camera/e/h;->g:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e/h;->g:Ljava/util/List;

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e/h;->g:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 391
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()F
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()[F
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 421
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m()I
    .locals 2

    .line 425
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 430
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 439
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()F
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/oppo/camera/e/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 448
    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public p()Z
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()I
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 467
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public s()I
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 479
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public t()I
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 491
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public u()J
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 503
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v()J
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 515
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public w()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public x()[I
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/oppo/camera/e/h;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public y()[I
    .locals 1

    .line 534
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/oppo/camera/e/c;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    return-object v0

    .line 537
    :cond_0
    sget-object v0, Lcom/oppo/camera/e/c;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    return-object v0
.end method

.method public z()[I
    .locals 1

    .line 542
    sget-object v0, Lcom/oppo/camera/e/c;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    return-object v0
.end method
