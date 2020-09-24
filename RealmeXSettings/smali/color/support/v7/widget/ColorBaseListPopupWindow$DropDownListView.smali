.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;
.super Lcolor/support/v7/internal/widget/ListViewCompat;
.source "ColorBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropDownListView"
.end annotation


# instance fields
.field private mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1653
    sget v0, Lcolor/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcolor/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1654
    iput-boolean p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    const/4 p1, 0x0

    .line 1655
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic access$402(Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;Z)Z
    .locals 0

    .line 1601
    iput-boolean p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 1

    const/4 v0, 0x0

    .line 1730
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1731
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1733
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->drawableStateChanged()V

    .line 1735
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    const/4 v0, 0x0

    .line 1737
    iput-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mClickAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2

    .line 1725
    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1726
    invoke-virtual {p0, p1, p2, v0, v1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 1

    const/4 v0, 0x1

    .line 1742
    iput-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1746
    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1747
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1750
    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setSelection(I)V

    .line 1751
    invoke-virtual {p0, p2, p1, p3, p4}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    const/4 p1, 0x0

    .line 1756
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setSelectorEnabled(Z)V

    .line 1760
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->refreshDrawableState()V

    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .line 1801
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/ListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1781
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/ListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1791
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/ListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 1771
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcolor/support/v7/internal/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 7

    .line 1668
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    move p2, v1

    move v3, v2

    goto :goto_3

    :cond_1
    :goto_1
    move p2, v1

    move v3, p2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 1677
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_4

    goto :goto_1

    .line 1683
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 1684
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 1685
    invoke-virtual {p0, v4, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    move p2, v2

    goto :goto_3

    .line 1691
    :cond_5
    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    .line 1692
    invoke-direct {p0, v3, v5, v4, p2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_0

    .line 1696
    invoke-direct {p0, v3, v5}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_6

    if-eqz p2, :cond_7

    .line 1703
    :cond_6
    invoke-direct {p0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->clearPressedItem()V

    :cond_7
    if-eqz v3, :cond_9

    .line 1708
    iget-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-nez p2, :cond_8

    .line 1709
    new-instance p2, Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-direct {p2, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 1711
    :cond_8
    iget-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, v2}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 1712
    iget-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 1713
    :cond_9
    iget-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mScrollHelper:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz p1, :cond_a

    .line 1714
    invoke-virtual {p1, v1}, Landroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    :cond_a
    :goto_4
    return v3
.end method

.method public touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 1765
    iget-boolean v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcolor/support/v7/internal/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
