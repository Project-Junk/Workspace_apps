.class public final Lcom/coloros/settings/feature/multiuser/b;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectFramedDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:I

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;IF)V
    .locals 6

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 62
    iput p2, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    .line 64
    iget p2, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/b;->a:Landroid/graphics/Bitmap;

    .line 65
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/b;->a:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 71
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v0, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    int-to-float v2, v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 76
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, p3, p3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 78
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    .line 82
    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 88
    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 89
    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v3, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/b;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lcom/coloros/settings/feature/multiuser/b;->d:F

    .line 96
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    invoke-direct {p1, v2, v2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/b;->e:Landroid/graphics/Rect;

    .line 97
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-direct {p1, v4, v4, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/b;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Lcom/coloros/settings/feature/multiuser/b;
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07011d

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 56
    new-instance v0, Lcom/coloros/settings/feature/multiuser/b;

    float-to-int p0, p0

    invoke-direct {v0, p1, p0, p2}, Lcom/coloros/settings/feature/multiuser/b;-><init>(Landroid/graphics/Bitmap;IF)V

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 102
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/b;->d:F

    iget v1, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/b;->f:Landroid/graphics/RectF;

    int-to-float v3, v1

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/b;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/b;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/coloros/settings/feature/multiuser/b;->f:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/b;->b:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
