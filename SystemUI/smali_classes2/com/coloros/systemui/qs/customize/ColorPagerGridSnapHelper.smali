.class public Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "ColorPagerGridSnapHelper.java"


# instance fields
.field private mFlingThreshold:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    const/16 v0, 0x3e8

    .line 28
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mFlingThreshold:I

    return-void
.end method

.method private snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    return v1

    .line 118
    :cond_2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 119
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    const/4 p2, 0x2

    .line 42
    new-array p2, p2, [I

    .line 43
    instance-of v0, p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 45
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getSnapOffset(I)[I

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 0

    .line 125
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    new-instance p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method protected bridge synthetic createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object p0

    return-object p0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    instance-of p0, p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    if-eqz p0, :cond_0

    .line 55
    check-cast p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 56
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->findSnapView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 1

    .line 65
    instance-of v0, p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    if-eqz v0, :cond_4

    .line 66
    check-cast p1, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 67
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isShouldReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p2, p2

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mFlingThreshold:I

    if-le p2, p0, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_1
    neg-int p0, p0

    if-ge p2, p0, :cond_4

    .line 74
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p0

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 77
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mFlingThreshold:I

    if-le p3, p0, :cond_3

    .line 78
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_3
    neg-int p0, p0

    if-ge p3, p0, :cond_4

    .line 80
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onFling(II)Z
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 97
    :cond_1
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mFlingThreshold:I

    .line 98
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 99
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public setFlingThreshold(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSnapHelper;->mFlingThreshold:I

    return-void
.end method
