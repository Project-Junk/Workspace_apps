.class final Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/color/support/widget/ColorNumericKeyboard;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorNumericKeyboard;Landroid/view/View;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 848
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 845
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 920
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    div-int/lit8 v2, p1, 0x3

    rem-int/lit8 p1, p1, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->of(II)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p1

    .line 921
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    iget v2, p1, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->column:I

    invoke-static {v1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->access$800(Lcom/color/support/widget/ColorNumericKeyboard;I)F

    move-result v1

    float-to-int v1, v1

    .line 922
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    iget p1, p1, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->row:I

    invoke-static {v2, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$900(Lcom/color/support/widget/ColorNumericKeyboard;I)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 924
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v2}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1000(Lcom/color/support/widget/ColorNumericKeyboard;)I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 925
    iget-object v2, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v2}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1000(Lcom/color/support/widget/ColorNumericKeyboard;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 926
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1000(Lcom/color/support/widget/ColorNumericKeyboard;)I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 927
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1000(Lcom/color/support/widget/ColorNumericKeyboard;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1100(Lcom/color/support/widget/ColorNumericKeyboard;FF)Lcom/color/support/widget/ColorNumericKeyboard$Cell;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    return p2

    .line 946
    :cond_0
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->getRow()I

    move-result v0

    .line 947
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->getColumn()I

    move-result p1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1200(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p2

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1400(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, p2

    :cond_2
    return p1
.end method


# virtual methods
.method public final getItemCounts()I
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1200(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 963
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1400(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method public final getItemDescription(I)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1200(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1200(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$1500(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1400(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1300(Lcom/color/support/widget/ColorNumericKeyboard;Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    iget-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1400(Lcom/color/support/widget/ColorNumericKeyboard;)Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;->access$1500(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 976
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 978
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$1600(Lcom/color/support/widget/ColorNumericKeyboard;)[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getVirtualViewAt(FF)I
    .locals 0

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

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

    const/4 v0, 0x0

    .line 860
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->getItemCounts()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 861
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onItemClicked(I)Z
    .locals 2

    .line 903
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 904
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumericKeyboard;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->access$700(Lcom/color/support/widget/ColorNumericKeyboard;I)V

    .line 906
    iget-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    .line 911
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 892
    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result p1

    return p1
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 882
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 867
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 868
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 873
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 874
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/4 v0, 0x1

    .line 875
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 876
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumericKeyboard$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 877
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
