.class Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;
.super Landroid/widget/LinearLayout;
.source "ColorScrollingTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorScrollingTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTabStrip"
.end annotation


# instance fields
.field private mIndexForSelection:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private mSelectedView:Landroid/view/View;

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/color/support/widget/ColorScrollingTabView;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorScrollingTabView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 531
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;-><init>(Lcom/color/support/widget/ColorScrollingTabView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/color/support/widget/ColorScrollingTabView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    .line 535
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x11

    .line 536
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->setGravity(I)V

    const/4 p1, 0x0

    .line 537
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->setWillNotDraw(Z)V

    return-void
.end method

.method private getMiddleViewLeft(I)I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorScrollingTabView;->getScrollX()I

    move-result v0

    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    return v0
.end method

.method private hasScrolled()Z
    .locals 7

    .line 664
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v0}, Lcom/color/support/widget/ColorScrollingTabView;->access$800(Lcom/color/support/widget/ColorScrollingTabView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    .line 665
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 666
    :goto_1
    iget v3, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    if-eqz v0, :cond_3

    .line 667
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    iget-object v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v1}, Lcom/color/support/widget/ColorScrollingTabView;->access$800(Lcom/color/support/widget/ColorScrollingTabView;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 669
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 671
    iget v3, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectionOffset:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    iget v6, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedLeft:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedLeft:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr v4, v3

    .line 673
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedRight:I

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedRight:I

    return v2

    :cond_3
    return v1
.end method

.method private scrollTitle()V
    .locals 2

    .line 553
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->selectedTitle(I)V

    .line 558
    invoke-direct {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->hasScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedLeft:I

    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedRight:I

    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->shouldAdjust(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedLeft:I

    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedRight:I

    sub-int/2addr v1, v0

    .line 562
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getMiddleViewLeft(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 563
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorScrollingTabView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private selectedTitle(I)V
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedView:Landroid/view/View;

    .line 659
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedLeft:I

    .line 660
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectedRight:I

    return-void
.end method

.method private shouldAdjust(II)Z
    .locals 5

    sub-int v0, p2, p1

    .line 683
    iget-object v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorScrollingTabView;->getScrollX()I

    move-result v1

    .line 684
    iget-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorScrollingTabView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorScrollingTabView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    .line 685
    invoke-virtual {v3}, Lcom/color/support/widget/ColorScrollingTabView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 686
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getWidth()I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    move v4, v3

    goto :goto_0

    .line 690
    :cond_1
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    if-le p1, v2, :cond_2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    if-ge v1, p0, :cond_3

    goto :goto_0

    :cond_3
    sub-int/2addr p2, v0

    if-ge p2, v2, :cond_0

    if-ne v1, p0, :cond_0

    :goto_0
    return v4
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 620
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 625
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->selectedTitle(I)V

    .line 626
    iget v1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 627
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 628
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 634
    iget v3, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v5, 0x0

    if-ge v3, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 635
    :goto_0
    iget v3, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectionOffset:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    if-eqz v0, :cond_1

    .line 637
    iget v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 639
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 641
    iget v4, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectionOffset:F

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v4

    int-to-float v2, v2

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    float-to-int v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float/2addr v7, v4

    int-to-float v1, v1

    mul-float/2addr v7, v1

    add-float/2addr v0, v7

    float-to-int v1, v0

    :cond_1
    int-to-float v0, v2

    .line 644
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 645
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v0}, Lcom/color/support/widget/ColorScrollingTabView;->access$700(Lcom/color/support/widget/ColorScrollingTabView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 646
    iget-object p0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {p0}, Lcom/color/support/widget/ColorScrollingTabView;->access$700(Lcom/color/support/widget/ColorScrollingTabView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 647
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 594
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getPaddingLeft()I

    move-result p1

    .line 595
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result p2

    .line 599
    iget-object p4, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-virtual {p4}, Lcom/color/support/widget/ColorScrollingTabView;->isLayoutRtl()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    add-int/lit8 p4, p2, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move p4, v0

    :goto_0
    if-ge v0, p2, :cond_1

    mul-int v2, v1, v0

    add-int/2addr v2, p4

    .line 606
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 608
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v4

    .line 609
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p1

    .line 610
    invoke-virtual {v2, p1, p3, v4, p5}, Landroid/view/View;->layout(IIII)V

    .line 612
    iget p1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 573
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 577
    iget-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v2, p1, v0}, Lcom/color/support/widget/ColorScrollingTabView;->access$600(Lcom/color/support/widget/ColorScrollingTabView;II)I

    move-result v2

    .line 579
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->setMeasuredDimension(II)V

    return-void
.end method

.method onPageScrolled(IFI)V
    .locals 0

    .line 545
    iput p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mIndexForSelection:I

    .line 546
    iput p2, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->mSelectionOffset:F

    .line 547
    invoke-direct {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->scrollTitle()V

    .line 548
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->invalidate()V

    return-void
.end method
