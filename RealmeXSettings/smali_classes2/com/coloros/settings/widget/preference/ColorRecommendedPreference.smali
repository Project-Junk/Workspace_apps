.class public Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;
.super Landroidx/preference/Preference;
.source "ColorRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;,
        Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;,
        Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d00d5

    .line 4069
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00d5

    .line 3069
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d00d5

    .line 2069
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d00d5

    .line 1069
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setVisible(Z)V

    .line 95
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 75
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 78
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 81
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 82
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 85
    :cond_0
    check-cast v1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;

    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a(Ljava/util/List;)V

    return-void
.end method
