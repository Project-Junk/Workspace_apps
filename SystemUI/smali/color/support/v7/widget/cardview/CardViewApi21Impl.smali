.class Lcolor/support/v7/widget/cardview/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lcolor/support/v7/widget/cardview/CardViewImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;
    .locals 0

    .line 121
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 82
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public getMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->getPadding()F

    move-result p0

    return p0
.end method

.method public getMinHeight(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getMinWidth(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->getRadius()F

    move-result p0

    return p0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 30
    new-instance p2, Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 31
    invoke-interface {p1, p2}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 35
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 36
    invoke-virtual {p0, p1, p6}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->setMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V
    .locals 1

    .line 102
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->setMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->setMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcolor/support/v7/widget/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V
    .locals 0

    .line 77
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V
    .locals 3

    .line 50
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    .line 50
    invoke-virtual {v0, p2, v1, v2}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->setPadding(FZZ)V

    .line 52
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;F)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getCardBackground(Lcolor/support/v7/widget/cardview/CardViewDelegate;)Lcolor/support/v7/widget/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/cardview/RoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public updatePadding(Lcolor/support/v7/widget/cardview/CardViewDelegate;)V
    .locals 4

    .line 87
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 88
    invoke-interface {p1, p0, p0, p0, p0}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getMaxElevation(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result v0

    .line 92
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/cardview/CardViewApi21Impl;->getRadius(Lcolor/support/v7/widget/cardview/CardViewDelegate;)F

    move-result p0

    .line 94
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 96
    invoke-interface {p1}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, p0, v2}, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v2, p0

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    .line 97
    invoke-interface {p1, v1, p0, v1, p0}, Lcolor/support/v7/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
