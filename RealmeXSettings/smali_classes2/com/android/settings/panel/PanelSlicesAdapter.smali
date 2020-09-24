.class public Lcom/android/settings/panel/PanelSlicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PanelSlicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/panel/PanelFragment;",
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->c:Lcom/android/settings/panel/PanelFragment;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->a:Ljava/util/List;

    .line 62
    iput p3, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->b:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/panel/PanelSlicesAdapter;)Lcom/android/settings/panel/PanelFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->c:Lcom/android/settings/panel/PanelFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/panel/PanelSlicesAdapter;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->b:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    check-cast p1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    .line 1077
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p2}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->a(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2068
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 2069
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0247

    const/4 v1, 0x0

    .line 2070
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2072
    new-instance p2, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V

    return-object p2
.end method
