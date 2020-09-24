.class public Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CVH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TCVH;>;"
        }
    .end annotation
.end field

.field b:Landroid/view/View;

.field private final c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TCVH;>;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;-><init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 116
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 117
    iget-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 118
    iget-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const p1, 0x7fffffff

    return p1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 147
    :cond_0
    instance-of v0, p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$a;

    if-eqz v0, :cond_3

    .line 148
    iget-object p2, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 152
    iget-object p2, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 155
    iget-object p2, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "HeaderViewHolder cannot find mHeader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 129
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$a;

    invoke-direct {p1, p2}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$a;-><init>(Landroid/view/View;)V

    return-object p1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
