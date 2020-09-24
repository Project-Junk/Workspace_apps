.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;
.super Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;
.source "AodColorSelectPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;,
        Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
    }
.end annotation


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->initLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 1

    const v0, 0x7f0d0038

    .line 50
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;-><init>(Landroid/content/Context;Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$1;)V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewSignatureColorIndex()I

    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->setDefaultItem(I)V

    .line 63
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
