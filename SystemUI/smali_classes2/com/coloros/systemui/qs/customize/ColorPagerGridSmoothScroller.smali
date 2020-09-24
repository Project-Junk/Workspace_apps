.class public Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ColorPagerGridSmoothScroller.java"


# static fields
.field private static final MILLISECONDS_PRE_INCH:F = 140.0f


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 56
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x430c0000    # 140.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    instance-of v1, v0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 41
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getSnapOffset(I)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 43
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 44
    aget p1, p1, v0

    .line 45
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    :cond_2
    :goto_0
    return-void
.end method
