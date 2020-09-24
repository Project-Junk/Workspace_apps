.class public final Lcom/android/settingslib/widget/b;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "AdaptiveOutlineDrawable.java"


# instance fields
.field final a:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/graphics/Path;

.field private final c:I

.field private final d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 45
    new-instance v0, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/widget/b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 48
    new-instance v0, Landroid/graphics/Path;

    const-string v1, "config_icon_mask"

    .line 49
    invoke-static {p1, v1}, Lcom/android/settingslib/m/a/a;->c(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/b;->b:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/b;->a:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/widget/b;->a:Landroid/graphics/Paint;

    sget v1, Lcom/android/settingslib/widget/h$a;->bt_outline_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/widget/b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/widget/b;->a:Landroid/graphics/Paint;

    sget v1, Lcom/android/settingslib/widget/h$b;->adaptive_outline_stroke:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/widget/b;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget v0, Lcom/android/settingslib/widget/h$b;->dashboard_tile_foreground_image_inset:I

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/widget/b;->c:I

    .line 58
    iput-object p2, p0, Lcom/android/settingslib/widget/b;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 63
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settingslib/widget/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 71
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 73
    iget-object v1, p0, Lcom/android/settingslib/widget/b;->b:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/widget/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 77
    iget-object v1, p0, Lcom/android/settingslib/widget/b;->d:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/settingslib/widget/b;->c:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/settingslib/widget/b;->c:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/widget/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/widget/b;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/widget/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/widget/b;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
