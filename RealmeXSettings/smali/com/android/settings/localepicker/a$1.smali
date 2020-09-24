.class final Lcom/android/settings/localepicker/a$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/a;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/android/settings/localepicker/a;

.field private c:I


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/a;F)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/localepicker/a$1;->b:Lcom/android/settings/localepicker/a;

    iput p2, p0, Lcom/android/settings/localepicker/a$1;->a:F

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    .line 110
    iput p1, p0, Lcom/android/settings/localepicker/a$1;->c:I

    return-void
.end method


# virtual methods
.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 120
    iget p1, p0, Lcom/android/settings/localepicker/a$1;->c:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 121
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p3, p0, Lcom/android/settings/localepicker/a$1;->c:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    iget p3, p0, Lcom/android/settings/localepicker/a$1;->a:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setElevation(F)V

    .line 123
    iput p2, p0, Lcom/android/settings/localepicker/a$1;->c:I

    :cond_1
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/android/settings/localepicker/a$1;->b:Lcom/android/settings/localepicker/a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/localepicker/a;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/android/settings/localepicker/a$1;->c:I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Lcom/android/settings/localepicker/a$1;->c:I

    :cond_1
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
