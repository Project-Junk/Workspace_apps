.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ContextualCardsFragment.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$a;


# instance fields
.field private a:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

.field private b:Landroidx/recyclerview/widget/GridLayoutManager;

.field private c:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

.field private d:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

.field private e:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->d:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    .line 3258
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3260
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/homepage/contextualcards/b;

    .line 3288
    iget-object v4, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->c:Lcom/android/settings/homepage/contextualcards/i;

    .line 3261
    iget-object v5, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    .line 3262
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/b;->b()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object v3

    .line 3263
    instance-of v4, v3, Lcom/android/settings/homepage/contextualcards/conditional/j;

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 3266
    instance-of v4, v3, Lcom/android/settingslib/core/lifecycle/a/j;

    if-eqz v4, :cond_2

    .line 3267
    move-object v4, v3

    check-cast v4, Lcom/android/settingslib/core/lifecycle/a/j;

    invoke-interface {v4}, Lcom/android/settingslib/core/lifecycle/a/j;->onStart()V

    :cond_2
    if-nez p1, :cond_0

    .line 3269
    instance-of v4, v3, Lcom/android/settingslib/core/lifecycle/a/k;

    if-eqz v4, :cond_0

    .line 3270
    check-cast v3, Lcom/android/settingslib/core/lifecycle/a/k;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/a/k;->onStop()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    .line 4288
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->c:Lcom/android/settings/homepage/contextualcards/i;

    .line 3276
    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    const/4 v2, 0x3

    .line 3277
    invoke-virtual {v1, v0, v2}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 3278
    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/a/j;

    if-eqz v1, :cond_4

    .line 3279
    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/core/lifecycle/a/j;

    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/a/j;->onStart()V

    :cond_4
    if-nez p1, :cond_5

    .line 3281
    instance-of p1, v0, Lcom/android/settingslib/core/lifecycle/a/k;

    if-eqz p1, :cond_5

    .line 3282
    check-cast v0, Lcom/android/settingslib/core/lifecycle/a/k;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/a/k;->onStop()V

    :cond_5
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5de

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    .line 52
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/slices/j;->a()V

    .line 54
    :cond_0
    new-instance v1, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    .line 1041
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->v:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {v1, v0, v2, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->d:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x7f0d02d2

    .line 70
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0124

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->a:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    .line 72
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p2, v1, v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 74
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->a:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, v0}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance p2, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->d:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-direct {p2, p3, p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->c:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    .line 77
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->a:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->c:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-virtual {p2, p3}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->d:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->c:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    .line 2292
    iput-object p3, p2, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->b:Lcom/android/settings/homepage/contextualcards/h;

    .line 79
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->a:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p2, p0}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$a;)V

    .line 80
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->c:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-direct {p3, v0}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->e:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 81
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->e:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->a:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 62
    invoke-static {}, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->c()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->d:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->e:J

    .line 1123
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;

    iget-object v3, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;-><init>(Landroid/content/Context;)V

    .line 1376
    iput-object v0, v2, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;->a:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$a;

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1127
    invoke-virtual {v1, v0, v3, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method
