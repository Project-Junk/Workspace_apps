.class final Lcom/coloros/settings/a/c;
.super Lcom/coloros/settings/a/d;
.source "RecycleViewSmoothScrollToTopTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/a/d<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/settings/a/d;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1218
    new-instance v0, Lcom/coloros/settings/a/-$$Lambda$c$bntPU1sYw5l5eWHzUr-_vOtuGmU;

    invoke-direct {v0, p1}, Lcom/coloros/settings/a/-$$Lambda$c$bntPU1sYw5l5eWHzUr-_vOtuGmU;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private e()I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 106
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 108
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private f()I
    .locals 11

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    invoke-direct {p0}, Lcom/coloros/settings/a/c;->e()I

    move-result v2

    move v3, v1

    move v4, v3

    :cond_0
    :goto_0
    const-string v5, "RecycleViewSmoothScrollToTopTask"

    if-eqz v2, :cond_5

    const/4 v6, 0x0

    .line 143
    iget-object v7, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    .line 144
    instance-of v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v8, :cond_1

    .line 145
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 147
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    if-nez v6, :cond_2

    move v6, v1

    goto :goto_2

    .line 1200
    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1201
    iget-object v9, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 1202
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingStart()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingEnd()I

    move-result v10

    sub-int/2addr v9, v10

    const/high16 v10, -0x80000000

    .line 1201
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1203
    invoke-virtual {v6, v9, v8}, Landroid/view/View;->measure(II)V

    .line 1204
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :goto_2
    add-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 154
    iget-boolean v7, p0, Lcom/coloros/settings/a/c;->a:Z

    if-eqz v7, :cond_3

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "itemHeight "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 159
    iget v6, p0, Lcom/coloros/settings/a/c;->c:I

    if-nez v6, :cond_4

    .line 162
    iget-object v6, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_5

    if-lt v3, v2, :cond_0

    goto :goto_3

    .line 167
    :cond_4
    iget v6, p0, Lcom/coloros/settings/a/c;->c:I

    if-ge v3, v6, :cond_5

    if-ge v3, v2, :cond_5

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-le v2, v3, :cond_7

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 180
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_6

    .line 181
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v1, -0xa

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_6
    return v4

    .line 185
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v4

    sub-int/2addr v1, v0

    .line 190
    iget-boolean v0, p0, Lcom/coloros/settings/a/c;->a:Z

    if-eqz v0, :cond_8

    .line 191
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "distance="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v1
.end method

.method private synthetic g()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/a/c;->c()V

    return-void
.end method

.method public static synthetic lambda$bntPU1sYw5l5eWHzUr-_vOtuGmU(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/a/c;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hJFWnqdDbFoJ507CNO6zoDAK85o(Lcom/coloros/settings/a/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/a/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ijyLmuDA5pxep53K8TjMc9XJ3ME(Lcom/coloros/settings/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/a/c;->g()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 55
    iget-boolean v0, p0, Lcom/coloros/settings/a/c;->e:Z

    const-string v1, "RecycleViewSmoothScrollToTopTask"

    if-eqz v0, :cond_0

    const-string v0, "still running now"

    .line 56
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/coloros/settings/a/c;->e:Z

    .line 63
    iget-object v2, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "firstVisiView is null"

    .line 72
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/a/c;->c()V

    return-void

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/a/c;->e()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    return-void

    .line 81
    :cond_3
    iget-boolean v5, p0, Lcom/coloros/settings/a/c;->a:Z

    if-eqz v5, :cond_4

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "firstVisiblePosition="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " firstVisiViewTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " listPaddingTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " listViewHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v4, :cond_5

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    if-ne v2, v4, :cond_5

    move v3, v0

    :cond_5
    if-eqz v3, :cond_6

    const-string v0, "already at top"

    .line 94
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/a/c;->c()V

    return-void

    .line 98
    :cond_6
    invoke-super {p0}, Lcom/coloros/settings/a/d;->a()V

    .line 99
    invoke-direct {p0}, Lcom/coloros/settings/a/c;->f()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/a/c;->d:I

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_0
    const-string v0, "mOppoListView is null"

    .line 65
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/a/c;->c()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/a/c;->f:Lcom/coloros/settings/a/d$a;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/coloros/settings/a/-$$Lambda$c$hJFWnqdDbFoJ507CNO6zoDAK85o;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/a/-$$Lambda$c$hJFWnqdDbFoJ507CNO6zoDAK85o;-><init>(Lcom/coloros/settings/a/c;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coloros/settings/a/c;->f:Lcom/coloros/settings/a/d$a;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 122
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/a/c;->b:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/coloros/settings/a/-$$Lambda$c$ijyLmuDA5pxep53K8TjMc9XJ3ME;

    invoke-direct {v1, p0}, Lcom/coloros/settings/a/-$$Lambda$c$ijyLmuDA5pxep53K8TjMc9XJ3ME;-><init>(Lcom/coloros/settings/a/c;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/a/c;->b()V

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/a/c;->d()V

    return-void
.end method
