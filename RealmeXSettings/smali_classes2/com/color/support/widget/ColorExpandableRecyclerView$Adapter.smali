.class public abstract Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;
.super Ljava/lang/Object;
.source "ColorExpandableRecyclerView.java"

# interfaces
.implements Lcom/color/support/widget/ColorExpandableRecyclerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorExpandableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field private mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-direct {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildType(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCombinedChildId(JJ)J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p1, v0

    const/16 v0, 0x20

    shl-long/2addr p1, v0

    const-wide/high16 v0, -0x8000000000000000L

    or-long/2addr p1, v0

    const-wide/16 v0, -0x1

    and-long/2addr p3, v0

    or-long/2addr p1, p3

    return-wide p1
.end method

.method public getCombinedGroupId(J)J
    .locals 2

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p1, v0

    const/16 v0, 0x20

    shl-long/2addr p1, v0

    return-wide p1
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getGroupTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/color/support/widget/ColorExpandableRecyclerView$Adapter;->mObservable:Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerView$ColorRecyclerViewDataObserver;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
