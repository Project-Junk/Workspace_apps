.class final Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    add-int v2, p1, v0

    add-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->notifyItemMoved(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->a:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
