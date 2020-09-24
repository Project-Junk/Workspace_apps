.class public Lcom/coloros/systemui/qs/ColorQSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "ColorQSContainerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QSContainerImpl"


# instance fields
.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeightOverride:I

.field private mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

.field private mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private final mSizePoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeightOverride:I

    return-void
.end method

.method private calculateQSBottomTranslationY()I
    .locals 3

    .line 163
    iget v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getMeasuredHeight()I

    move-result v0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 165
    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {v2}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_2

    .line 164
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v0

    :goto_2
    return v0
.end method

.method private getDisplayHeight()I
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method private updateResources()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706e9

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070744

    .line 125
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 126
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 127
    iget-object v3, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    iget-boolean v3, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQsDisabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v2, v4

    :cond_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    const v0, 0x7f0706ea

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v4, v4, v4, v0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 3

    .line 155
    iget v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getMeasuredHeight()I

    move-result v0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 157
    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {v2}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 158
    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_2

    .line 156
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->getHeight()I

    move-result v0

    :goto_2
    return v0
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 115
    :goto_0
    iget-boolean p2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 116
    :cond_1
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQsDisabled:Z

    .line 117
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateResources()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateResources()V

    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateResources()V

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a049c

    .line 47
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const v0, 0x7f0a0485

    .line 48
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSDetail:Landroid/view/View;

    const v0, 0x7f0a02a9

    .line 49
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v0, 0x7f0a0484

    .line 50
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    const v0, 0x7f0a047f

    .line 51
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    iput-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    const/4 v0, 0x2

    .line 53
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setImportantForAccessibility(I)V

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateResources()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateExpansion()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 75
    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getDisplayHeight()I

    move-result v0

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    .line 80
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/common/util/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07059b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v0

    .line 90
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 91
    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getPaddingBottom()I

    move-result p2

    add-int/2addr v1, p2

    .line 92
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 93
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    invoke-super {p0, p2, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 97
    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    .line 98
    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getDisplayHeight()I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 97
    invoke-virtual {p2, p1, p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->measure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQsExpansion:F

    .line 172
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mHeightOverride:I

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setListening(Z)V

    return-void
.end method

.method public updateExpansion()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->calculateContainerHeight()I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setBottom(I)V

    .line 149
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-direct {p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->calculateQSBottomTranslationY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->setTranslationY(F)V

    return-void
.end method
