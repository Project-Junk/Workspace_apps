.class final Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterWrapper.java"

# interfaces
.implements Lcom/coloros/settings/utils/recyclerview/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;->a:Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;->a:Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    invoke-virtual {v0, p3}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->getItemViewType(I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;->a:Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    invoke-static {v1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;)Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper$1;->a:Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    invoke-static {v1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->b(Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;)Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 102
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
