.class public final Lcom/android/settings/wifi/qrcode/a;
.super Landroid/os/Handler;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/qrcode/a$a;,
        Lcom/android/settings/wifi/qrcode/a$b;
    }
.end annotation


# static fields
.field private static a:D = 0.1

.field private static b:J = 0x5dcL

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "Ljava/util/List<",
            "Lcom/google/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/hardware/Camera;

.field private f:Landroid/util/Size;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/android/settings/wifi/qrcode/a$b;

.field private i:Lcom/google/c/j;

.field private j:Lcom/android/settings/wifi/qrcode/a$a;

.field private k:I

.field private l:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/a;->c:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sput-object v0, Lcom/android/settings/wifi/qrcode/a;->d:Ljava/util/List;

    sget-object v1, Lcom/google/c/a;->l:Lcom/google/c/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/settings/wifi/qrcode/a;->c:Ljava/util/Map;

    sget-object v1, Lcom/google/c/e;->c:Lcom/google/c/e;

    sget-object v2, Lcom/android/settings/wifi/qrcode/a;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/a$b;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->g:Ljava/lang/ref/WeakReference;

    .line 94
    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/a;->h:Lcom/android/settings/wifi/qrcode/a$b;

    .line 95
    new-instance p1, Lcom/google/c/j;

    invoke-direct {p1}, Lcom/google/c/j;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->i:Lcom/google/c/j;

    .line 96
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->i:Lcom/google/c/j;

    sget-object p2, Lcom/android/settings/wifi/qrcode/a;->c:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/google/c/j;->a(Ljava/util/Map;)V

    return-void
.end method

.method private static a(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    div-double/2addr p0, p2

    return-wide p0

    :cond_0
    div-double/2addr p2, p0

    return-wide p2
.end method

.method static synthetic a(Lcom/android/settings/wifi/qrcode/a;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/settings/wifi/qrcode/a;->k:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/qrcode/a;)Landroid/hardware/Camera;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/qrcode/a;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    return-object p1
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 11

    .line 393
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 394
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v1, v1

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/a;->a(DD)D

    move-result-wide v1

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 400
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/wifi/qrcode/a;->a(DD)D

    move-result-wide v7

    cmpl-double v9, v7, v1

    if-nez v9, :cond_1

    .line 402
    new-instance v7, Landroid/util/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sub-double/2addr v7, v1

    .line 403
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sget-wide v9, Lcom/android/settings/wifi/qrcode/a;->a:D

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 404
    new-instance v7, Landroid/util/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "QrCamera"

    const-string v1, "No proper picture size, return default picture size"

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 411
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 414
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_4

    move-object v3, v4

    :cond_4
    const p0, 0x7fffffff

    const/4 v1, 0x0

    .line 421
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 422
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 423
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p0, :cond_5

    move-object v1, v3

    move p0, v4

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method static synthetic a(Lcom/android/settings/wifi/qrcode/a;[B)Lcom/android/settings/wifi/qrcode/c;
    .locals 6

    .line 3348
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->h:Lcom/android/settings/wifi/qrcode/a$b;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/qrcode/a$b;->a(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3349
    new-instance v1, Lcom/android/settings/wifi/qrcode/c;

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    .line 3350
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/wifi/qrcode/c;-><init>([BII)V

    .line 3351
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 3352
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int v3, v2, v0

    .line 4045
    new-array v3, v3, [B

    .line 4046
    iget v4, v1, Lcom/android/settings/wifi/qrcode/c;->b:I

    mul-int/2addr v4, p1

    add-int/2addr v4, p0

    add-int/2addr p0, v2

    .line 4048
    iget v5, v1, Lcom/android/settings/wifi/qrcode/c;->b:I

    if-gt p0, v5, :cond_1

    add-int/2addr p1, v0

    iget p0, v1, Lcom/android/settings/wifi/qrcode/c;->c:I

    if-gt p1, p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 4053
    iget-object p1, v1, Lcom/android/settings/wifi/qrcode/c;->a:[B

    mul-int v5, p0, v2

    invoke-static {p1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4054
    iget p1, v1, Lcom/android/settings/wifi/qrcode/c;->b:I

    add-int/2addr v4, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4056
    :cond_0
    new-instance p0, Lcom/android/settings/wifi/qrcode/c;

    invoke-direct {p0, v3, v2, v0}, Lcom/android/settings/wifi/qrcode/c;-><init>([BII)V

    .line 3352
    check-cast p0, Lcom/android/settings/wifi/qrcode/c;

    return-object p0

    .line 4049
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cropped rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/qrcode/a;Landroid/util/Size;)V
    .locals 6

    .line 2323
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 2325
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2328
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :goto_1
    if-eqz v0, :cond_2

    .line 2329
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    :goto_2
    int-to-double v1, p1

    int-to-double v3, v0

    .line 2330
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/a;->a(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-le p1, v0, :cond_3

    div-float p1, v2, v1

    move v5, v2

    move v2, p1

    move p1, v5

    goto :goto_3

    :cond_3
    div-float p1, v2, v1

    .line 2342
    :goto_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2343
    invoke-virtual {v0, p1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2344
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/a;->h:Lcom/android/settings/wifi/qrcode/a$b;

    invoke-interface {p0, v0}, Lcom/android/settings/wifi/qrcode/a$b;->a(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/qrcode/a;)Lcom/google/c/j;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/a;->i:Lcom/google/c/j;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/a;->h:Lcom/android/settings/wifi/qrcode/a$b;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/wifi/qrcode/a;)V
    .locals 13

    .line 1175
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    .line 1176
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    .line 1374
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/a;->h:Lcom/android/settings/wifi/qrcode/a$b;

    invoke-interface {v1}, Lcom/android/settings/wifi/qrcode/a$b;->c()Landroid/util/Size;

    move-result-object v1

    .line 1375
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/wifi/qrcode/a;->a(DD)D

    move-result-wide v1

    .line 1377
    new-instance v3, Landroid/util/Size;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    .line 1378
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 1379
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/wifi/qrcode/a;->a(DD)D

    move-result-wide v7

    .line 1380
    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v9, v10

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_0

    sub-double v9, v4, v1

    .line 1381
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    div-double/2addr v9, v1

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_1

    sub-double/2addr v7, v1

    .line 1382
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double/2addr v7, v1

    cmpg-double v7, v7, v11

    if-gtz v7, :cond_0

    .line 1383
    :cond_1
    new-instance v3, Landroid/util/Size;

    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    iget v5, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 1384
    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/wifi/qrcode/a;->a(DD)D

    move-result-wide v4

    goto :goto_0

    .line 1176
    :cond_2
    iput-object v3, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    .line 1177
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/a;->f:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/a;->a(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1181
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    .line 1186
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "auto"

    .line 1188
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1189
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1191
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/qrcode/a;)Z
    .locals 5

    .line 3195
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->g:Ljava/lang/ref/WeakReference;

    .line 3200
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3201
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    goto :goto_0

    :cond_2
    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    .line 3217
    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/qrcode/a;->k:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 3218
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3219
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 3220
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-ne v0, v1, :cond_5

    .line 3221
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3222
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/qrcode/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v3, Lcom/android/settings/wifi/qrcode/a;->b:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/wifi/qrcode/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/qrcode/a;->removeMessages(I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/a;->j:Lcom/android/settings/wifi/qrcode/a$a;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/qrcode/a$a;->cancel(Z)Z

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->j:Lcom/android/settings/wifi/qrcode/a$a;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->j:Lcom/android/settings/wifi/qrcode/a$a;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/settings/wifi/qrcode/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/wifi/qrcode/a$a;-><init>(Lcom/android/settings/wifi/qrcode/a;Landroid/graphics/SurfaceTexture;B)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->j:Lcom/android/settings/wifi/qrcode/a$a;

    .line 109
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->j:Lcom/android/settings/wifi/qrcode/a$a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/wifi/qrcode/a$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a;->j:Lcom/android/settings/wifi/qrcode/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected Message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QrCamera"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a;->e:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/qrcode/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/settings/wifi/qrcode/a;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/wifi/qrcode/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
