.class public Lcom/color/support/widget/ColorExpandableRecyclerView;
.super Landroidx/recyclerview/widget/ColorRecyclerView;
.source "ColorExpandableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;,
        Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;,
        Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;,
        Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupExpandListener;,
        Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupCollapseListener;,
        Lcom/color/support/widget/ColorExpandableRecyclerView$OnChildClickListener;,
        Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

.field private mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

.field private mOnChildClickListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupExpandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private getChildOrGroupId(Lcom/color/support/widget/ExpandableRecyclerPosition;)J
    .locals 2

    .line 76
    iget v0, p1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget v0, p1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-interface {p0, v0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getChildId(II)J

    move-result-wide p0

    return-wide p0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-interface {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ColorRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not set itemDecoration"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collapseGroup(I)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->startCollapseAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->collapseGroupAnimator()V

    .line 182
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnGroupCollapseListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupCollapseListener;

    if-eqz p0, :cond_1

    .line 183
    invoke-interface {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public expandGroup(I)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnGroupExpandListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupExpandListener;

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    return v0
.end method

.method handleClick(Landroid/view/View;I)Z
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p2

    .line 86
    iget-object v0, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getChildOrGroupId(Lcom/color/support/widget/ExpandableRecyclerPosition;)J

    move-result-wide v6

    .line 89
    iget-object v0, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v8, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnGroupClickListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupClickListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v4, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupClickListener;->onGroupClick(Lcom/color/support/widget/ColorExpandableRecyclerView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    return v8

    .line 97
    :cond_0
    invoke-virtual {p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView;->collapseGroup(I)Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView;->expandGroup(I)Z

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnChildClickListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnChildClickListener;

    if-eqz v1, :cond_3

    .line 108
    iget-object v0, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v4, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget-object p2, p2, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v5, p2, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/color/support/widget/ColorExpandableRecyclerView$OnChildClickListener;->onChildClick(Landroidx/recyclerview/widget/ColorRecyclerView;Landroid/view/View;IIJ)Z

    move-result p0

    return p0

    :cond_3
    const/4 v8, 0x0

    .line 115
    :goto_0
    invoke-virtual {p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    return v8
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 281
    instance-of v0, p1, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 282
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 286
    :cond_0
    check-cast p1, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;

    .line 287
    invoke-virtual {p1}, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 290
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    iget-object p1, p1, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 275
    invoke-super {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;

    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v1, v0, p0}, Lcom/color/support/widget/ColorExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 121
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "adapter instansof ColorExpandableRecyclerAdapter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAdapter(Lcom/color/support/widget/ColorExpandableRecyclerAdapter;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    .line 71
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-direct {v0, p1, p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;-><init>(Lcom/color/support/widget/ColorExpandableRecyclerAdapter;Lcom/color/support/widget/ColorExpandableRecyclerView;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    .line 72
    iget-object p1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mConnector:Lcom/color/support/widget/ExpandableRecyclerConnector;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 53
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not set ItemAnimator"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 39
    instance-of v0, p1, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    if-eqz v0, :cond_1

    .line 42
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "only vertical orientation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "only ColorLinearLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnChildClickListener(Lcom/color/support/widget/ColorExpandableRecyclerView$OnChildClickListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnChildClickListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupClickListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnGroupClickListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupCollapseListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnGroupCollapseListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupExpandListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/color/support/widget/ColorExpandableRecyclerView;->mOnGroupExpandListener:Lcom/color/support/widget/ColorExpandableRecyclerView$OnGroupExpandListener;

    return-void
.end method
