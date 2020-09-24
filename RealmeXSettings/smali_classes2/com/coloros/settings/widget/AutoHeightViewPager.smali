.class public Lcom/coloros/settings/widget/AutoHeightViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "AutoHeightViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 4

    .line 31
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/widget/AutoHeightViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/AutoHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/AutoHeightViewPager;->getMeasuredWidth()I

    move-result p1

    const/4 v1, 0x0

    .line 1053
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1054
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_2
    const/high16 v0, -0x80000000

    if-ne v2, v0, :cond_3

    .line 1064
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_3
    move p2, v1

    .line 41
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/widget/AutoHeightViewPager;->setMeasuredDimension(II)V

    return-void
.end method
