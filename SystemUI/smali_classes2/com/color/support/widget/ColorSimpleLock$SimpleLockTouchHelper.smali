.class final Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ColorSimpleLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSimpleLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimpleLockTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/color/support/widget/ColorSimpleLock;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorSimpleLock;Landroid/view/View;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    .line 986
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 983
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 4

    .line 1048
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$1100(Lcom/color/support/widget/ColorSimpleLock;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$1200(Lcom/color/support/widget/ColorSimpleLock;)Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1049
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$1100(Lcom/color/support/widget/ColorSimpleLock;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x79

    iget-object v2, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {v2}, Lcom/color/support/widget/ColorSimpleLock;->access$1300(Lcom/color/support/widget/ColorSimpleLock;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->access$1102(Lcom/color/support/widget/ColorSimpleLock;Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$1200(Lcom/color/support/widget/ColorSimpleLock;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    .line 1051
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p0}, Lcom/color/support/widget/ColorSimpleLock;->access$1100(Lcom/color/support/widget/ColorSimpleLock;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x78

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1055
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {v1}, Lcom/color/support/widget/ColorSimpleLock;->access$900(Lcom/color/support/widget/ColorSimpleLock;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p0}, Lcom/color/support/widget/ColorSimpleLock;->access$1000(Lcom/color/support/widget/ColorSimpleLock;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x2

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

    .line 1002
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 1042
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1034
    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->onItemClicked(I)Z

    move-result p0

    return p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1022
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1009
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1014
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 1015
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1016
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->setRectBounds(ILandroid/graphics/Rect;)V

    .line 1017
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRectBounds(ILandroid/graphics/Rect;)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1060
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p1}, Lcom/color/support/widget/ColorSimpleLock;->access$900(Lcom/color/support/widget/ColorSimpleLock;)I

    move-result p1

    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->this$0:Lcom/color/support/widget/ColorSimpleLock;

    invoke-static {p0}, Lcom/color/support/widget/ColorSimpleLock;->access$1000(Lcom/color/support/widget/ColorSimpleLock;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method
