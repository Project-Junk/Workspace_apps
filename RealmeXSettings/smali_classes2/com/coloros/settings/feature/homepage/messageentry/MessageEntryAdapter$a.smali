.class final Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->c:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

    .line 80
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03e2

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a03e5

    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter$a;->b:Landroid/widget/TextView;

    return-void
.end method
