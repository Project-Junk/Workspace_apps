.class public Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderAndFooterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    .line 29
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    iget-object p1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;)Landroidx/collection/SparseArrayCompat;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 7145
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;)Landroidx/collection/SparseArrayCompat;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method private b(I)Z
    .locals 2

    .line 8145
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 9070
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    const v1, 0x186a0

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 5145
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 5149
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 6070
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3145
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 66
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    .line 64
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    .line 1145
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 2070
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    .line 56
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2145
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 58
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance v1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;-><init>(Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;)V

    .line 7031
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7033
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 7034
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 7036
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 7037
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 7039
    new-instance v2, Lcom/coloros/settings/utils/recyclerview/a$1;

    invoke-direct {v2, v1, p1, v0}, Lcom/coloros/settings/utils/recyclerview/a$1;-><init>(Lcom/coloros/settings/utils/recyclerview/a$a;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 7047
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 76
    invoke-direct {p0, p2}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4145
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    sub-int/2addr p2, v1

    .line 82
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/recyclerview/ViewHolder;->a(Landroid/content/Context;Landroid/view/View;)Lcom/coloros/settings/utils/recyclerview/ViewHolder;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/recyclerview/ViewHolder;->a(Landroid/content/Context;Landroid/view/View;)Lcom/coloros/settings/utils/recyclerview/ViewHolder;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 112
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 113
    invoke-direct {p0, v0}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7053
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7055
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 7059
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 7061
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    return-void
.end method
