.class final Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/color/support/widget/ColorLockPatternView;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorLockPatternView;Landroid/view/View;)V
    .locals 2

    .line 1430
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    .line 1431
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1418
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1419
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    const/4 p1, 0x1

    :goto_0
    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    .line 1433
    iget-object p2, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    .line 1551
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1552
    div-int/lit8 v1, p1, 0x3

    .line 1553
    rem-int/lit8 p1, p1, 0x3

    .line 1554
    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2}, Lcom/color/support/widget/ColorLockPatternView;->access$200(Lcom/color/support/widget/ColorLockPatternView;)[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    .line 1555
    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2, p1}, Lcom/color/support/widget/ColorLockPatternView;->access$1100(Lcom/color/support/widget/ColorLockPatternView;I)F

    move-result p1

    .line 1556
    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2, v1}, Lcom/color/support/widget/ColorLockPatternView;->access$1200(Lcom/color/support/widget/ColorLockPatternView;I)F

    move-result v1

    .line 1557
    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v2}, Lcom/color/support/widget/ColorLockPatternView;->access$1300(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v3}, Lcom/color/support/widget/ColorLockPatternView;->access$1400(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 1558
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v4}, Lcom/color/support/widget/ColorLockPatternView;->access$1500(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v4

    iget-object v5, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v5}, Lcom/color/support/widget/ColorLockPatternView;->access$1400(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v3

    sub-float v3, p1, v4

    float-to-int v3, v3

    .line 1559
    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 1560
    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-float p1, v1, v2

    float-to-int p1, p1

    .line 1561
    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v2

    float-to-int p1, v1

    .line 1562
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 4

    .line 1567
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1568
    sget v1, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_cell_added_verbose:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1569
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1568
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 2

    .line 1582
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v0, p2}, Lcom/color/support/widget/ColorLockPatternView;->access$1600(Lcom/color/support/widget/ColorLockPatternView;F)I

    move-result p2

    const/high16 v0, -0x80000000

    if-gez p2, :cond_0

    return v0

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1, p1}, Lcom/color/support/widget/ColorLockPatternView;->access$1700(Lcom/color/support/widget/ColorLockPatternView;F)I

    move-result p1

    if-gez p1, :cond_1

    return v0

    .line 1590
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView;->access$1000(Lcom/color/support/widget/ColorLockPatternView;)[[Z

    move-result-object v1

    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    if-eqz v1, :cond_2

    return p2

    :cond_2
    return v0
.end method

.method private isClickable(I)Z
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 1506
    div-int/lit8 v2, p1, 0x3

    .line 1507
    rem-int/lit8 p1, p1, 0x3

    .line 1508
    iget-object v3, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v3}, Lcom/color/support/widget/ColorLockPatternView;->access$1000(Lcom/color/support/widget/ColorLockPatternView;)[[Z

    move-result-object v3

    aget-object v2, v3, v2

    aget-boolean p1, v2, p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public final getVirtualViewAt(FF)I
    .locals 0

    .line 1441
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result p1

    return p1
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternView;->access$900(Lcom/color/support/widget/ColorLockPatternView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1454
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onItemClicked(I)Z
    .locals 1

    .line 1539
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    const/4 v0, 0x1

    .line 1544
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1523
    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result p1

    return p1
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1495
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1496
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView;->access$900(Lcom/color/support/widget/ColorLockPatternView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1497
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_area:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1499
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    if-eqz p1, :cond_0

    .line 1464
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1474
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternView;->access$900(Lcom/color/support/widget/ColorLockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1478
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1480
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1483
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1488
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1490
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
