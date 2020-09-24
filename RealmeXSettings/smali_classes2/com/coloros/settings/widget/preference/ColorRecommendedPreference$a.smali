.class final Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;",
        ">;"
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

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a:Ljava/util/List;

    .line 171
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->b:Landroid/content/Context;

    .line 172
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;Landroid/view/View;)V
    .locals 3

    .line 211
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3099
    :cond_0
    iget-object p2, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->d:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3143
    iget-object p2, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->d:Ljava/lang/String;

    .line 215
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    .line 216
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->b:Landroid/content/Context;

    .line 4143
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->d:Ljava/lang/String;

    .line 5139
    iget-object v1, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->e:Ljava/lang/String;

    .line 5147
    iget-object v2, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->f:Ljava/util/Map;

    .line 216
    invoke-static {p2, v0, v1, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5151
    :cond_1
    iget-object p2, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->h:Ljava/lang/String;

    .line 220
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "extra_bottom_recommended_item"

    .line 222
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5155
    iget-object p2, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->g:Ljava/lang/String;

    const-string v1, "extra_bottom_recommended_ui"

    .line 223
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->b:Landroid/content/Context;

    const-string v1, "bottom_recommended_item_click"

    invoke-static {p2, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->a()Z

    move-result p2

    if-nez p2, :cond_3

    .line 227
    iget-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->b:Landroid/content/Context;

    .line 6131
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->c:Landroid/content/Intent;

    .line 227
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public static synthetic lambda$FOgwVa3zmLczLLA05tBi5FSXR-E(Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a(Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    new-instance v1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->b:Landroid/content/Context;

    const v3, 0x7f120445

    .line 181
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;

    .line 1204
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v1, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;->a:Landroid/widget/TextView;

    .line 2127
    iget-object v2, v0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->b:Ljava/lang/String;

    .line 1206
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_0

    .line 1208
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;->a:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/settings/widget/preference/-$$Lambda$ColorRecommendedPreference$a$FOgwVa3zmLczLLA05tBi5FSXR-E;

    invoke-direct {p2, p0, v0}, Lcom/coloros/settings/widget/preference/-$$Lambda$ColorRecommendedPreference$a$FOgwVa3zmLczLLA05tBi5FSXR-E;-><init>(Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2190
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2191
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2192
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f070593

    .line 2193
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    const/4 p1, 0x5

    .line 2194
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/16 p1, 0x10

    .line 2195
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const p1, 0x7f070594

    .line 2196
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez p2, :cond_0

    const p1, 0x7f06012b

    goto :goto_0

    :cond_0
    const p1, 0x7f060078

    :goto_0
    const/4 p2, 0x0

    .line 2197
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2199
    new-instance p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;

    invoke-direct {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$c;-><init>(Landroid/view/View;)V

    return-object p1
.end method
