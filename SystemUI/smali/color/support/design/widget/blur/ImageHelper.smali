.class public Lcolor/support/design/widget/blur/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# static fields
.field private static volatile mSingleton:Lcolor/support/design/widget/blur/ImageHelper;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapMapMemoryCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasMapMemoryCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvasMapMemoryCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcolor/support/design/widget/blur/ImageHelper;
    .locals 2

    .line 22
    sget-object v0, Lcolor/support/design/widget/blur/ImageHelper;->mSingleton:Lcolor/support/design/widget/blur/ImageHelper;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcolor/support/design/widget/blur/ImageHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcolor/support/design/widget/blur/ImageHelper;->mSingleton:Lcolor/support/design/widget/blur/ImageHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcolor/support/design/widget/blur/ImageHelper;

    invoke-direct {v1}, Lcolor/support/design/widget/blur/ImageHelper;-><init>()V

    sput-object v1, Lcolor/support/design/widget/blur/ImageHelper;->mSingleton:Lcolor/support/design/widget/blur/ImageHelper;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcolor/support/design/widget/blur/ImageHelper;->mSingleton:Lcolor/support/design/widget/blur/ImageHelper;

    return-object v0
.end method

.method private getPaint(F)Landroid/graphics/Paint;
    .locals 1

    .line 67
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 70
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 72
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-object p0
.end method


# virtual methods
.method public handleImageEffect(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 34
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    .line 38
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvasMapMemoryCache:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvasMapMemoryCache:Landroid/util/SparseArray;

    .line 42
    :cond_1
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 43
    invoke-direct {p0, p2}, Lcolor/support/design/widget/blur/ImageHelper;->getPaint(F)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mPaint:Landroid/graphics/Paint;

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 50
    iput-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    iget-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvasMapMemoryCache:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Canvas;

    iput-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 53
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    iget-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    iget-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvasMapMemoryCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iput-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 59
    :goto_0
    iget-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvas:Landroid/graphics/Canvas;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 62
    :cond_4
    iget-object p2, p0, Lcolor/support/design/widget/blur/ImageHelper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    iget-object p0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public releaseResource()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    iput-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 83
    iget-object v3, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 92
    iput-object v1, p0, Lcolor/support/design/widget/blur/ImageHelper;->mBitmapMapMemoryCache:Landroid/util/SparseArray;

    .line 95
    :cond_3
    sget-object p0, Lcolor/support/design/widget/blur/ImageHelper;->mSingleton:Lcolor/support/design/widget/blur/ImageHelper;

    if-eqz p0, :cond_4

    .line 96
    sput-object v1, Lcolor/support/design/widget/blur/ImageHelper;->mSingleton:Lcolor/support/design/widget/blur/ImageHelper;

    :cond_4
    return-void
.end method
