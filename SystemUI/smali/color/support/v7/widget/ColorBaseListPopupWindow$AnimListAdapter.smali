.class Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;
.super Ljava/lang/Object;
.source "ColorBaseListPopupWindow.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/ColorBaseListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimListAdapter"
.end annotation


# instance fields
.field private listAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;


# direct methods
.method public constructor <init>(Lcolor/support/v7/widget/ColorBaseListPopupWindow;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1503
    iput-object p1, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1504
    iput-object p2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    .line 1586
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCount()I
    .locals 0

    .line 1524
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1529
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 1534
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1562
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1545
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 1546
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 1548
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1549
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1550
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3f28f5c3    # 0.66f

    .line 1551
    invoke-static {v0, p1, v1, p3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x15e

    .line 1552
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x96

    .line 1553
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1554
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 1567
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    const-string v1, "ColorBaseListPopupWindow"

    if-nez v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v0}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1000(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v0

    const-string v2, "getViewTypeCount:listAdapter = null,mAdapter = "

    if-eqz v0, :cond_0

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1000(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",typeCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1000(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->this$0:Lcolor/support/v7/widget/ColorBaseListPopupWindow;

    invoke-static {v2}, Lcolor/support/v7/widget/ColorBaseListPopupWindow;->access$1000(Lcolor/support/v7/widget/ColorBaseListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1574
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listAdapter.typeCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p0

    :goto_1
    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    .line 1539
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1581
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 1591
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 1509
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 1510
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 1517
    iget-object p0, p0, Lcolor/support/v7/widget/ColorBaseListPopupWindow$AnimListAdapter;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 1518
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
