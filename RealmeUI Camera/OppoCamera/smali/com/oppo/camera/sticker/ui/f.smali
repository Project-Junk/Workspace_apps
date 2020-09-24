.class public Lcom/oppo/camera/sticker/ui/f;
.super Landroid/widget/RelativeLayout;
.source "StickerCategoryContainer.java"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/oppo/camera/sticker/ui/f;->a:Z

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    .line 15
    iput v0, p0, Lcom/oppo/camera/sticker/ui/f;->c:I

    .line 16
    iput v0, p0, Lcom/oppo/camera/sticker/ui/f;->d:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/sticker/ui/f;->c:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0603a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/sticker/ui/f;->d:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/f;->a:Z

    .line 31
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 36
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    iget-boolean v0, p0, Lcom/oppo/camera/sticker/ui/f;->a:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/sticker/ui/f;->c:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p0, Lcom/oppo/camera/sticker/ui/f;->d:I

    int-to-float v3, v0

    .line 43
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/sticker/ui/f;->c:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/f;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/sticker/ui/f;->d:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oppo/camera/sticker/ui/f;->b:Landroid/graphics/Paint;

    move-object v1, p1

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
