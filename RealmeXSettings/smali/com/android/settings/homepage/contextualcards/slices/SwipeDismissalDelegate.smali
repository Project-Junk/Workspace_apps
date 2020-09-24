.class public Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SwipeDismissalDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->a:Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;

    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 2

    .line 117
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d0123

    if-ne v0, v1, :cond_0

    .line 118
    check-cast p0, Lcom/android/settings/homepage/contextualcards/slices/e$a;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/e$a;->a:Landroid/widget/LinearLayout;

    return-object p0

    .line 120
    :cond_0
    check-cast p0, Lcom/android/settings/homepage/contextualcards/slices/d$a;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    return-object p0
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-static {p2}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 60
    :pswitch_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0207

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xc

    .line 65
    invoke-static {v0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->makeMovementFlags(II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0d0122
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-static {p3}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v3

    .line 96
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0204

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v1, 0x0

    cmpl-float v2, p4, v1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-lez v2, :cond_0

    .line 100
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    cmpg-float v1, p4, v1

    if-gez v1, :cond_1

    .line 103
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->a:Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$a;->a(I)V

    return-void
.end method
