.class Lcolor/support/v7/widget/cardview/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Lcolor/support/v7/widget/cardview/CardViewImpl;


# instance fields
.field private final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;
    .locals 6

    .line 102
    new-instance p0, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object p0
.end method

.method private getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;
    .locals 0

    .line 180
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getShadowSize()F

    move-result p0

    return p0
.end method

.method public getMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    move-result p0

    return p0
.end method

.method public getMinHeight(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result p0

    return p0
.end method

.method public getMinWidth(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result p0

    return p0
.end method

.method public getRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public initStatic()V
    .locals 1

    .line 38
    new-instance v0, Lcolor/support/v7/widget/cardview/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl$1;-><init>(Lcolor/support/v7/widget/cardview/CardViewBaseImpl;)V

    sput-object v0, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method

.method public initialize(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 92
    invoke-direct/range {v0 .. v5}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p2

    .line 94
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 95
    invoke-interface {p1, p2}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V
    .locals 0

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 124
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->setShadowSize(F)V

    return-void
.end method

.method public setMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    .line 161
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    .line 140
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V
    .locals 4

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getShadowBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getMinWidth(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 111
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->getMinHeight(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    .line 110
    invoke-interface {p1, v1, p0}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 112
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p0, v1, v2, v0}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
