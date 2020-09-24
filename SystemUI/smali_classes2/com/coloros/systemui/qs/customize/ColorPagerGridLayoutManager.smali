.class public Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "ColorPagerGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;,
        Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;,
        Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$OrientationType;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field private static final LAYOUT_MODEL_HEIGHT_COLUMN:I = 0x0

.field private static final LAYOUT_MODEL_ROW_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ColorPagerGridLayoutManager"

.field public static final VERTICAL:I


# instance fields
.field private mAllowContinuousScroll:Z

.field private mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

.field private mChangeSelectInScrolling:Z

.field private mColumns:I

.field private mHeightUsed:I

.field private final mItemFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastPageCount:I

.field private mLastPageIndex:I

.field private mLayoutModel:I

.field private mMaxScrollX:I

.field private mMaxScrollY:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOnePageSize:I

.field private mOrientation:I
    .annotation build Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$OrientationType;
    .end annotation
.end field

.field private mPageCountChanged:Z

.field private mReInit:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mReverseLayout:Z

.field private mRows:I

.field private mScrollState:I

.field private mShouldReverseLayout:Z

.field private mWidthUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)V
    .locals 3
    .param p1    # Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    .line 67
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    .line 87
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemWidth:I

    .line 92
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    .line 94
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mWidthUsed:I

    .line 95
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mHeightUsed:I

    .line 109
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mScrollState:I

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mAllowContinuousScroll:Z

    .line 122
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReverseLayout:Z

    .line 123
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mChangeSelectInScrolling:Z

    const/4 v2, -0x1

    .line 124
    iput v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    .line 125
    iput v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageIndex:I

    const/4 v2, 0x0

    .line 127
    iput-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    .line 128
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLayoutModel:I

    .line 129
    iput-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReInit:Z

    .line 130
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mPageCountChanged:Z

    .line 133
    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$000(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    .line 134
    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$100(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReverseLayout:Z

    .line 135
    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$200(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$200(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I

    move-result v0

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$300(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->updateItemHeightAndColumn(II)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$400(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I

    move-result v0

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;->access$300(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->updateRowAndColumn(II)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Builder;)V

    return-void
.end method

.method private addOrRemove(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroid/graphics/Rect;I)V
    .locals 6

    .line 280
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 281
    invoke-direct {p0, p3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemFrameByPosition(I)Landroid/graphics/Rect;

    move-result-object p3

    .line 282
    invoke-static {p2, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 283
    invoke-virtual {p0, v1, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_1

    .line 285
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->addView(Landroid/view/View;)V

    .line 286
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mWidthUsed:I

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mHeightUsed:I

    invoke-virtual {p0, v1, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 287
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 288
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingStart()I

    move-result v0

    add-int/2addr p2, v0

    .line 289
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr v0, v2

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingTop()I

    move-result v2

    add-int v3, v0, v2

    .line 290
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingStart()I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr p3, v2

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingTop()I

    move-result p1

    add-int v5, p3, p1

    .line 293
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result p1

    sub-int/2addr p1, v0

    .line 295
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result p3

    sub-int/2addr p3, p2

    move v2, p1

    move v4, p3

    goto :goto_0

    :cond_1
    move v2, p2

    move v4, v0

    :goto_0
    move-object v0, p0

    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method

.method private getItemFrameByPosition(I)Landroid/graphics/Rect;
    .locals 7

    .line 443
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 446
    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    div-int v1, p1, v1

    .line 449
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x0

    goto :goto_0

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x0

    move v6, v3

    move v3, v1

    move v1, v6

    .line 455
    :goto_0
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    rem-int v2, p1, v2

    .line 456
    iget v4, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mColumns:I

    div-int v5, v2, v4

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 459
    iget v4, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemWidth:I

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 460
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 462
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 463
    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    .line 464
    iput v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    .line 465
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 467
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private getPageLeftTopByPosition(I)[I
    .locals 4

    const/4 v0, 0x2

    .line 538
    new-array v0, v0, [I

    .line 539
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result p1

    .line 540
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result p0

    mul-int/2addr p1, p0

    aput p1, v0, v3

    aput v3, v0, v2

    goto :goto_0

    :cond_0
    aput v3, v0, v3

    .line 545
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result p0

    mul-int/2addr p1, p0

    aput p1, v0, v2

    :goto_0
    return-object v0
.end method

.method private getUsableHeight()I
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getUsableHeightWithGap()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getHeight()I

    move-result p0

    return p0

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result p0

    return p0
.end method

.method private getUsableWidth()I
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getUsableWidthWithGap()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getWidth()I

    move-result p0

    return p0

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 3

    .line 216
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReInit:Z

    .line 220
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLayoutModel:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 223
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRows:I

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRows:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mColumns:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemWidth:I

    .line 229
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRows:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    return-void
.end method

.method private recycleAndFillItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 252
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 258
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v0

    .line 259
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    if-eqz p3, :cond_1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 263
    invoke-direct {p0, p1, p2, v2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->addOrRemove(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroid/graphics/Rect;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->addOrRemove(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroid/graphics/Rect;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private resetState()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    .line 432
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    .line 433
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mScrollState:I

    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 1

    .line 149
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReverseLayout:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private setPageCount(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 575
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mPageCountChanged:Z

    .line 577
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;->onPageSizeChanged(I)V

    .line 581
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    :cond_1
    return-void
.end method

.method private setPageIndex(IZ)V
    .locals 1

    .line 586
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageIndex:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mPageCountChanged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mPageCountChanged:Z

    .line 590
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isAllowContinuousScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageIndex:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 594
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageIndex:I

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 597
    iget-boolean p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mChangeSelectInScrolling:Z

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-ltz p1, :cond_4

    .line 599
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    if-eqz p2, :cond_4

    .line 600
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mScrollState:I

    invoke-interface {p2, p1, p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;->onPageSelect(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 496
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 0

    .line 501
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 413
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 420
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_2

    move v0, v2

    .line 421
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    move p1, v2

    .line 422
    :goto_0
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-ne p0, v2, :cond_4

    .line 423
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 425
    :cond_4
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method findNextPageFirstPos()I
    .locals 2

    .line 508
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 509
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getTotalPageCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getTotalPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 512
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, p0

    return v0
.end method

.method findPrePageFirstPos()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageIndex:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 523
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public findSnapView()Landroid/view/View;
    .locals 4

    .line 554
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 561
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 562
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 564
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 566
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_3
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 388
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getCurrentPageLastPos()I
    .locals 3

    .line 808
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    .line 809
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getTotalPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 810
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getOnePageSize()I
    .locals 0

    .line 774
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    return p0
.end method

.method public getPageIndexByOffset()I
    .locals 2

    .line 783
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v0

    .line 785
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    if-lez p0, :cond_3

    if-gtz v0, :cond_0

    goto :goto_1

    .line 788
    :cond_0
    div-int v1, p0, v0

    .line 789
    rem-int/2addr p0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    goto :goto_0

    .line 794
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v0

    .line 795
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    if-lez p0, :cond_3

    if-gtz v0, :cond_2

    goto :goto_1

    .line 798
    :cond_2
    div-int v1, p0, v0

    .line 799
    rem-int/2addr p0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    :goto_0
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public getPageIndexByPos(I)I
    .locals 0

    .line 778
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    div-int/2addr p1, p0

    return p1
.end method

.method getSnapOffset(I)[I
    .locals 4

    const/4 v0, 0x2

    .line 530
    new-array v0, v0, [I

    .line 531
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageLeftTopByPosition(I)[I

    move-result-object p1

    .line 532
    iget-boolean v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    aget v3, p1, v2

    goto :goto_0

    :cond_0
    aget v1, p1, v2

    iget v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    :goto_0
    sub-int/2addr v1, v3

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 533
    aget p1, p1, v1

    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr p1, p0

    aput p1, v0, v1

    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 2

    .line 765
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    div-int/2addr v0, v1

    .line 767
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v1

    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public isAllowContinuousScroll()Z
    .locals 0

    .line 757
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mAllowContinuousScroll:Z

    return p0
.end method

.method public isCurrentPageFull()Z
    .locals 2

    .line 816
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getCurrentPageLastPos()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    rem-int/2addr v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isLayoutRTL()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShouldReverseLayout()Z
    .locals 0

    .line 615
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    return p0
.end method

.method public nextPage()V
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->scrollToPage(I)V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 145
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 169
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->init()V

    .line 173
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    if-gtz v0, :cond_1

    goto :goto_2

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getTotalPageCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageCount(I)V

    .line 181
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    .line 184
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    div-int/2addr v0, v2

    .line 185
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result v2

    iget v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    sub-int/2addr v0, v3

    .line 191
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    .line 192
    iput v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    .line 193
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    if-le v0, v2, :cond_4

    .line 194
    iput v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    goto :goto_0

    .line 197
    :cond_3
    iput v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    sub-int/2addr v0, v3

    .line 198
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    .line 199
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    if-le v0, v2, :cond_4

    .line 200
    iput v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    .line 204
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mWidthUsed:I

    .line 205
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mHeightUsed:I

    .line 208
    :goto_1
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_5

    .line 209
    invoke-direct {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemFrameByPosition(I)Landroid/graphics/Rect;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_5
    invoke-direct {p0, p1, p2, v3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->recycleAndFillItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    return-void

    .line 174
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 175
    invoke-direct {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageCount(I)V

    .line 176
    invoke-direct {p0, v1, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 234
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 235
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getTotalPageCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageCount(I)V

    .line 237
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    .line 238
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    if-eqz v1, :cond_1

    .line 239
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRows:I

    iget v4, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mColumns:I

    iget v5, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemWidth:I

    iget v6, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    invoke-interface/range {v1 .. v6}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;->onLayoutComplete(Landroidx/recyclerview/widget/RecyclerView;IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 395
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 396
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 398
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 399
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_0

    if-lez p1, :cond_0

    move p2, v0

    :cond_0
    if-eq p4, v0, :cond_1

    if-lez p3, :cond_1

    move p4, v0

    .line 407
    :cond_1
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 408
    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 376
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mScrollState:I

    .line 377
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 378
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;->onPageScrollStateChanged(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    :cond_1
    return-void
.end method

.method public prePage()V
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->scrollToPage(I)V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .line 306
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 307
    :goto_0
    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    add-int v2, v1, v0

    .line 309
    iget v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    sub-int v0, v3, v1

    goto :goto_1

    :cond_1
    if-gez v2, :cond_2

    rsub-int/lit8 v0, v1, 0x0

    .line 314
    :cond_2
    :goto_1
    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    .line 315
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v1

    .line 316
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    if-eqz v2, :cond_4

    .line 319
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v3

    rem-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v5, v7

    if-lez v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    goto :goto_2

    :cond_3
    move v3, v1

    .line 327
    :goto_2
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidthWithGap()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 328
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    invoke-interface {v6, v3, v2, v5}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;->onPageScrolled(IFI)V

    .line 332
    :cond_4
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mScrollState:I

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_5

    .line 333
    invoke-direct {p0, v1, v5}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    :cond_5
    neg-int v1, v0

    .line 335
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->offsetChildrenHorizontal(I)V

    if-lez v0, :cond_6

    .line 336
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_6

    .line 337
    invoke-direct {p0, p2, p3, v5}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->recycleAndFillItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto :goto_3

    .line 339
    :cond_6
    invoke-direct {p0, p2, p3, v4}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->recycleAndFillItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :goto_3
    return p1
.end method

.method public scrollToPage(I)V
    .locals 4

    if-ltz p1, :cond_4

    .line 726
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 732
    sget-object p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->TAG:Ljava/lang/String;

    const-string p1, "RecyclerView Not Found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 742
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    .line 743
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 745
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr v0, v2

    :goto_0
    move v2, v1

    .line 749
    :goto_1
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 750
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    return-void

    .line 727
    :cond_4
    :goto_2
    sget-object v0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds, mast in [0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result p1

    .line 652
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->scrollToPage(I)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .line 346
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    add-int v1, v0, p1

    .line 348
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int p1, v2, v0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    rsub-int/lit8 p1, v0, 0x0

    .line 353
    :cond_1
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    .line 354
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    if-eqz v1, :cond_3

    .line 356
    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v2

    rem-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 361
    :goto_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeightWithGap()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 362
    iget-object v5, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    invoke-interface {v5, v2, v1, v4}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;->onPageScrolled(IFI)V

    :cond_3
    const/4 v1, 0x1

    .line 364
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->setPageIndex(IZ)V

    neg-int v0, p1

    .line 365
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->offsetChildrenVertical(I)V

    if-lez p1, :cond_4

    .line 367
    invoke-direct {p0, p2, p3, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->recycleAndFillItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto :goto_2

    .line 369
    :cond_4
    invoke-direct {p0, p2, p3, v3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->recycleAndFillItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :goto_2
    return p1
.end method

.method public setAllowContinuousScroll(Z)V
    .locals 0

    .line 761
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mAllowContinuousScroll:Z

    return-void
.end method

.method public setCallback(Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$Callback;

    return-void
.end method

.method public setChangeSelectInScrolling(Z)V
    .locals 0

    .line 622
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mChangeSelectInScrolling:Z

    return-void
.end method

.method public setOrientationType(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$OrientationType;
        .end annotation
    .end param
    .annotation build Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager$OrientationType;
    .end annotation

    .line 630
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mScrollState:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    .line 632
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 633
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    .line 634
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    .line 635
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v1

    div-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetX:I

    .line 636
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    div-int/2addr p1, v0

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOffsetY:I

    .line 637
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    .line 638
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    .line 639
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v1

    div-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollX:I

    .line 640
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    div-int/2addr p1, v0

    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mMaxScrollY:I

    .line 641
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    return p0

    .line 630
    :cond_1
    :goto_0
    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOrientation:I

    return p0
.end method

.method public smoothNextPage()V
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothScrollToPage(I)V

    return-void
.end method

.method public smoothPrePage()V
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothScrollToPage(I)V

    return-void
.end method

.method public smoothScrollToPage(I)V
    .locals 3

    const-string v0, "qs"

    const-string v1, "Statusbar"

    if-ltz p1, :cond_4

    .line 681
    iget v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    if-lt p1, v2, :cond_0

    goto :goto_1

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_1

    const-string p0, "RecyclerView Not Found!"

    .line 686
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    sub-int v1, p1, v0

    .line 692
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    if-le p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x3

    .line 694
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->scrollToPage(I)V

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    add-int/lit8 v0, p1, 0x3

    .line 696
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->scrollToPage(I)V

    .line 700
    :cond_3
    :goto_0
    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 701
    iget v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr p1, v1

    .line 702
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridSmoothScroller;->setTargetPosition(I)V

    .line 703
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void

    .line 682
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageIndex is outOfIndex, must in [0, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLastPageCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 657
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result p1

    .line 658
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothScrollToPage(I)V

    return-void
.end method

.method public updateItemHeightAndColumn(II)V
    .locals 1

    const/4 v0, 0x0

    .line 832
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLayoutModel:I

    .line 833
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRows:I

    .line 834
    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mColumns:I

    .line 835
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    const/4 p1, 0x1

    .line 836
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReInit:Z

    .line 837
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->resetState()V

    .line 838
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 839
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateRowAndColumn(II)V
    .locals 1

    const/4 v0, 0x1

    .line 820
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mLayoutModel:I

    .line 821
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRows:I

    .line 822
    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mColumns:I

    const/4 p1, 0x0

    .line 823
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mItemHeight:I

    .line 824
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mReInit:Z

    .line 825
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->resetState()V

    .line 826
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 827
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method
