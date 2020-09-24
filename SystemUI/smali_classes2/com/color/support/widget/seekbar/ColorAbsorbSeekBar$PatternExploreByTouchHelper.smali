.class final Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ColorAbsorbSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Landroid/view/View;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    .line 654
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 651
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 1

    .line 730
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 731
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 732
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 733
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 734
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 686
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 659
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 661
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 662
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    const/16 v0, 0x2000

    .line 664
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 666
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getMax()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/16 p0, 0x1000

    .line 667
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p2, 0x4

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 701
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 692
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$1100(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 696
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$1000(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$1000(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    const-class v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 715
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object p0

    .line 717
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
