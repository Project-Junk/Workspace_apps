.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContextualCardsAdapter.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/h;
.implements Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/settings/homepage/contextualcards/h;",
        "Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settings/homepage/contextualcards/i;

.field private final d:Landroidx/lifecycle/LifecycleOwner;

.field private e:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->b:Landroid/content/Context;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    .line 1288
    iget-object p1, p3, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->c:Lcom/android/settings/homepage/contextualcards/i;

    .line 60
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->c:Lcom/android/settings/homepage/contextualcards/i;

    .line 61
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->d:Landroidx/lifecycle/LifecycleOwner;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/b;

    .line 3170
    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    const/4 v1, 0x1

    .line 3395
    iput-boolean v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->t:Z

    .line 147
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 123
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 129
    :cond_2
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 132
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->scheduleLayoutAnimation()V

    :cond_3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    .line 2158
    iget p1, p1, Lcom/android/settings/homepage/contextualcards/b;->i:I

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 100
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 102
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 104
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/b;

    .line 87
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->c:Lcom/android/settings/homepage/contextualcards/i;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 3158
    iget v3, p2, Lcom/android/settings/homepage/contextualcards/b;->i:I

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/g;

    move-result-object v0

    .line 89
    invoke-interface {v0, p1, p2}, Lcom/android/settings/homepage/contextualcards/g;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->c:Lcom/android/settings/homepage/contextualcards/i;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/g;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-interface {v0, p1, p2}, Lcom/android/settings/homepage/contextualcards/g;->a(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
