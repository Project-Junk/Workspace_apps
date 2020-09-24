.class public Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RunningApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/process/RunningApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunningApplicationsAdapter"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/process/RunningApplications$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/coloros/settings/feature/process/RunningApplications;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/process/RunningApplications;Landroid/app/Activity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->b:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 141
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;

    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->a(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/process/RunningApplications$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->b(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/process/RunningApplications$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->c(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->d(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object p2, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->b:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-static {p2}, Lcom/coloros/settings/feature/process/RunningApplications;->a(Lcom/coloros/settings/feature/process/RunningApplications;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 170
    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->d(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->b:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/process/RunningApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080974

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->d(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->b:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/process/RunningApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080976

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    invoke-static {p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->d(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->b:Lcom/coloros/settings/feature/process/RunningApplications;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 159
    iget-object p2, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationsAdapter;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d02a9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 160
    new-instance p2, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;

    invoke-direct {p2, p1}, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
