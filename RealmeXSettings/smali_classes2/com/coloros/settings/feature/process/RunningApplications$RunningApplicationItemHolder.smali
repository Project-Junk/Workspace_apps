.class public Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RunningApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/process/RunningApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningApplicationItemHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a009d

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a009f

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a00ac

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a009e

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->d:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/coloros/settings/feature/process/RunningApplications$RunningApplicationItemHolder;->d:Landroid/widget/ImageView;

    return-object p0
.end method
