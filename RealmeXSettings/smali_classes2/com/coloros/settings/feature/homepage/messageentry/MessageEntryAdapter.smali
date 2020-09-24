.class public Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    .line 41
    iput-boolean p2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->c:Z

    return-void
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 1

    .line 67
    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/background/a/a;

    iget-object p1, p1, Lcom/coloros/settings/background/a/a;->e:Landroid/content/Intent;

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static synthetic lambda$QC9I5-Zid6fsNHGM2eC922vwJNQ(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->a(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;Z)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    .line 46
    iput-boolean p2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->c:Z

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    check-cast p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;

    .line 1059
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1062
    :cond_0
    iget-object v0, p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1063
    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07041c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1064
    iget-object v1, p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    iget-object v0, p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/background/a/a;

    iget-object v1, v1, Lcom/coloros/settings/background/a/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    iget-object v0, p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/background/a/a;

    iget-object v1, v1, Lcom/coloros/settings/background/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object p1, p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->itemView:Landroid/view/View;

    new-instance v0, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryAdapter$QC9I5-Zid6fsNHGM2eC922vwJNQ;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryAdapter$QC9I5-Zid6fsNHGM2eC922vwJNQ;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
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

    .line 2053
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01bf

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2054
    new-instance p2, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;Landroid/view/View;)V

    return-object p2
.end method
