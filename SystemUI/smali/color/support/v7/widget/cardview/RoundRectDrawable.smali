.class Lcolor/support/v7/widget/cardview/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    .line 59
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 62
    iput p2, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    .line 63
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 64
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 66
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    return-void
.end method

.method private createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 224
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setBackground(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 72
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->getState()[I

    move-result-object v1

    iget-object p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    iget-boolean p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz p1, :cond_1

    .line 125
    iget p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPadding:F

    iget v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {p1, v0, v1}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p1

    .line 126
    iget v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPadding:F

    iget v1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v0

    .line 127
    iget-object v1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 129
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 93
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v4, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    invoke-virtual {v2, v3, v4}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    .line 110
    iget-object p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 114
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    return-void
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 178
    iget-object p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method getPadding()F
    .locals 0

    .line 88
    iget p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPadding:F

    return p0
.end method

.method public getRadius()F
    .locals 0

    .line 169
    iget p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 136
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 197
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 198
    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 200
    iget-object v2, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    .line 203
    invoke-direct {p0, p1, v2}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return v1

    :cond_2
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 174
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setPadding(FZZ)V
    .locals 1

    .line 76
    iget v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    return-void

    .line 80
    :cond_0
    iput p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mPadding:F

    .line 81
    iput-boolean p2, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    .line 82
    iput-boolean p3, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    const/4 p1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method setRadius(F)V
    .locals 1

    .line 145
    iget v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mRadius:F

    const/4 p1, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 183
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 184
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 185
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 190
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 191
    iget-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 192
    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    return-void
.end method
