.class public Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ColorViewExplorerByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;
    }
.end annotation


# static fields
.field private static final VIEW_LOG_TAG:Ljava/lang/String; = "ColorViewTouchHelper"


# instance fields
.field private mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

.field private mHostView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    .line 49
    iput-object p1, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 1

    if-ltz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getItemCounts()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {p0, p1, p2}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getItemBounds(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {p0, p1, p2}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getVirtualViewAt(FF)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
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

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {v1}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getItemCounts()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return p3

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {p0, p1, v0, p3}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->performAction(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {p0, p1}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 97
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {v0, p1}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x10

    .line 102
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 104
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getCurrentPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    invoke-interface {p0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;->getDisablePosition()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    .line 109
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setColorViewTalkBalkInteraction(Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$ColorViewTalkBalkInteraction;

    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
