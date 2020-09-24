.class public Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;
.super Ljava/lang/Object;
.source "SliceContextualCardRenderer.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/homepage/contextualcards/g;


# instance fields
.field final a:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/lifecycle/LifecycleOwner;

.field private final e:Lcom/android/settings/homepage/contextualcards/i;

.field private final f:Lcom/android/settings/homepage/contextualcards/slices/c;

.field private final g:Lcom/android/settings/homepage/contextualcards/slices/d;

.field private final h:Lcom/android/settings/homepage/contextualcards/slices/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/i;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->c:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 76
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a:Ljava/util/Map;

    .line 77
    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->e:Lcom/android/settings/homepage/contextualcards/i;

    .line 78
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b:Ljava/util/Set;

    .line 79
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 80
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/d;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->g:Lcom/android/settings/homepage/contextualcards/slices/d;

    .line 81
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/e;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->h:Lcom/android/settings/homepage/contextualcards/slices/e;

    .line 82
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/c;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->f:Lcom/android/settings/homepage/contextualcards/slices/c;

    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 190
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;Landroidx/slice/Slice;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SliceCardRenderer"

    if-nez p4, :cond_0

    const-string p1, "Slice is null"

    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    const-string v2, "error"

    .line 127
    invoke-virtual {p4, v2}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Slice has HINT_ERROR, skipping rendering. uri="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a:Ljava/util/Map;

    invoke-virtual {p4}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d0121

    if-eq v0, v1, :cond_3

    const v1, 0x7f0d0123

    if-eq v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->g:Lcom/android/settings/homepage/contextualcards/slices/d;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/settings/homepage/contextualcards/slices/d;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroidx/slice/Slice;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->h:Lcom/android/settings/homepage/contextualcards/slices/e;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/settings/homepage/contextualcards/slices/e;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroidx/slice/Slice;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->f:Lcom/android/settings/homepage/contextualcards/slices/c;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/settings/homepage/contextualcards/slices/c;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroidx/slice/Slice;)V

    :goto_0
    if-eqz p3, :cond_4

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private synthetic a(Lcom/android/settings/homepage/contextualcards/b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 176
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->e:Lcom/android/settings/homepage/contextualcards/i;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->b()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/settings/homepage/contextualcards/c;->c(Lcom/android/settings/homepage/contextualcards/b;)V

    .line 177
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-static {p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 179
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a:Ljava/util/Map;

    .line 4094
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 179
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 2

    .line 200
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d0123

    if-ne v0, v1, :cond_0

    .line 201
    check-cast p0, Lcom/android/settings/homepage/contextualcards/slices/e$a;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/e$a;->a:Landroid/widget/LinearLayout;

    return-object p0

    .line 203
    :cond_0
    check-cast p0, Lcom/android/settings/homepage/contextualcards/slices/d$a;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    return-object p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 2

    .line 168
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0360

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 169
    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$VWYR0kx1OSncdHwx2t_Fj7tBNzU;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$VWYR0kx1OSncdHwx2t_Fj7tBNzU;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0560

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 175
    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$YI0GzYOPmAZ-mOx81iJ5reg7f-Q;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$YI0GzYOPmAZ-mOx81iJ5reg7f-Q;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 185
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public static synthetic lambda$BoDcTINr4CEnTCpMlWmRnr-DUaA(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public static synthetic lambda$VWYR0kx1OSncdHwx2t_Fj7tBNzU(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$YI0GzYOPmAZ-mOx81iJ5reg7f-Q(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a(Lcom/android/settings/homepage/contextualcards/b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$fkwckdJaGxBdenWtkF5TpVf_3-k(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;Landroidx/slice/Slice;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const v0, 0x7f0d0121

    if-eq p2, v0, :cond_1

    const v0, 0x7f0d0123

    if-eq p2, v0, :cond_0

    .line 3046
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/d$a;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/d$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 2053
    :cond_0
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/e$a;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/e$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 1054
    :cond_1
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/c$a;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/c$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 4

    .line 3094
    iget-object v0, p2, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid uri, skipping slice: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SliceCardRenderer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0206

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->d:Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$fkwckdJaGxBdenWtkF5TpVf_3-k;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$fkwckdJaGxBdenWtkF5TpVf_3-k;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d0121

    if-eq v0, v1, :cond_4

    const v1, 0x7f0d0123

    if-eq v0, v1, :cond_3

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/b;)V

    .line 3162
    :cond_4
    :goto_0
    iget-boolean p2, p2, Lcom/android/settings/homepage/contextualcards/b;->j:Z

    if-eqz p2, :cond_5

    .line 3195
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3196
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$BoDcTINr4CEnTCpMlWmRnr-DUaA;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$BoDcTINr4CEnTCpMlWmRnr-DUaA;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
