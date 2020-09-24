.class final Lcom/android/settings/UserCredentialsSettings$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/UserCredentialsSettings$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$b;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$c;->a:Ljava/util/List;

    .line 369
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$c;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 361
    check-cast p1, Lcom/android/settings/UserCredentialsSettings$d;

    .line 1380
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$b;

    iget-object v1, p1, Lcom/android/settings/UserCredentialsSettings$d;->itemView:Landroid/view/View;

    const v2, 0x7f0d038a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/settings/UserCredentialsSettings;->a(Lcom/android/settings/UserCredentialsSettings$b;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1381
    iget-object v0, p1, Lcom/android/settings/UserCredentialsSettings$d;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$c;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1382
    iget-object p1, p1, Lcom/android/settings/UserCredentialsSettings$d;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$c;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 2374
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2375
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$d;

    const v1, 0x7f0d038a

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/UserCredentialsSettings$d;-><init>(Landroid/view/View;)V

    return-object v0
.end method
