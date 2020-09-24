.class Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AodColorSelectPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSelectHolder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private selected:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->selected:I

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->currentSelectHolder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    .line 123
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->selected:I

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->currentSelectHolder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->currentSelectHolder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getSignatureColorSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    check-cast p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->onBindViewHolder(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;I)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getSignatureColorByIndex(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->bindeView(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;)V

    .line 155
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->selected:I

    if-ne v0, p2, :cond_0

    .line 156
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->currentSelectHolder:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    const/4 p0, 0x1

    .line 157
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->updateStatus(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0033

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 134
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 135
    iget-object p1, p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setDefaultItem(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ColorAdapter;->selected:I

    return-void
.end method
