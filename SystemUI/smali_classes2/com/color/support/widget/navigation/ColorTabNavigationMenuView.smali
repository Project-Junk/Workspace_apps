.class public Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;
.super Lcom/color/support/widget/navigation/ColorNavigationMenuView;
.source "ColorTabNavigationMenuView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 27
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/util/ColorOrientationUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Lcom/color/support/widget/navigation/ColorTabNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 32
    sget v3, Lcolor/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xe

    const/4 v4, -0x1

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;->onMeasure(II)V

    return-void
.end method
