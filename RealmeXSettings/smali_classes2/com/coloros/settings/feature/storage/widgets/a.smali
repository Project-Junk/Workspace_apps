.class public final Lcom/coloros/settings/feature/storage/widgets/a;
.super Landroid/graphics/drawable/Drawable;
.source "RoundColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/widgets/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6

    .line 41
    sget v5, Lcom/coloros/settings/feature/storage/widgets/a$a;->b:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/storage/widgets/a;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->a:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p3

    .line 47
    iput p1, p0, Lcom/coloros/settings/feature/storage/widgets/a;->b:F

    .line 48
    iput p2, p0, Lcom/coloros/settings/feature/storage/widgets/a;->c:I

    .line 49
    iget p1, p0, Lcom/coloros/settings/feature/storage/widgets/a;->c:I

    iput p1, p0, Lcom/coloros/settings/feature/storage/widgets/a;->d:I

    .line 50
    iput p4, p0, Lcom/coloros/settings/feature/storage/widgets/a;->e:I

    .line 51
    iput p5, p0, Lcom/coloros/settings/feature/storage/widgets/a;->f:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 60
    iget v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->f:I

    sget v1, Lcom/coloros/settings/feature/storage/widgets/a$a;->a:I

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/coloros/settings/feature/storage/widgets/a;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 63
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    const/4 v4, 0x0

    add-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {v2, v4, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    iget v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->b:F

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/widgets/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 68
    iget v2, p0, Lcom/coloros/settings/feature/storage/widgets/a;->b:F

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/widgets/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->e:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->d:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/widgets/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
