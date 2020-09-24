.class final Lcom/coloros/settings/a/b;
.super Lcom/coloros/settings/a/d;
.source "ListViewSmoothScrollToTopTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/a/d<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/coloros/settings/a/d;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private e()I
    .locals 10

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move v3, v1

    move v4, v3

    :cond_0
    const-string v5, "ListViewSmoothScrollToTopTask"

    if-eqz v2, :cond_4

    .line 1152
    iget-object v6, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-interface {v6, v4, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1154
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1155
    iget-object v8, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v8, Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v9, Landroid/widget/ListView;

    .line 1156
    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v9, Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v9

    sub-int/2addr v8, v9

    const/high16 v9, -0x80000000

    .line 1155
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    if-eqz v6, :cond_1

    .line 1161
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->measure(II)V

    .line 1162
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v1

    .line 1164
    :goto_0
    iget-boolean v7, p0, Lcom/coloros/settings/a/b;->a:Z

    if-eqz v7, :cond_2

    .line 1165
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "itemHeight "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object v7, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 117
    iget v6, p0, Lcom/coloros/settings/a/b;->c:I

    if-nez v6, :cond_3

    .line 120
    iget-object v6, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_4

    if-lt v4, v2, :cond_0

    goto :goto_1

    .line 125
    :cond_3
    iget v6, p0, Lcom/coloros/settings/a/b;->c:I

    if-ge v4, v6, :cond_4

    if-lt v4, v2, :cond_0

    :cond_4
    :goto_1
    if-le v2, v4, :cond_5

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return v3

    .line 140
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v0

    .line 145
    iget-boolean v0, p0, Lcom/coloros/settings/a/b;->a:Z

    if-eqz v0, :cond_6

    .line 146
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "distance="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 53
    iget-boolean v0, p0, Lcom/coloros/settings/a/b;->e:Z

    const-string v1, "ListViewSmoothScrollToTopTask"

    if-eqz v0, :cond_0

    const-string v0, "still running now"

    .line 54
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/coloros/settings/a/b;->e:Z

    .line 61
    iget-object v2, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    .line 62
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "firstVisiView is null"

    .line 70
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/a/b;->c()V

    return-void

    .line 75
    :cond_2
    iget-object v4, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 77
    iget-boolean v5, p0, Lcom/coloros/settings/a/b;->a:Z

    if-eqz v5, :cond_3

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "firstVisiblePosition="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " firstVisiViewTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " listPaddingTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    .line 81
    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dividerHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    .line 82
    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " listViewHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    .line 83
    invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v4, :cond_4

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    if-ne v2, v4, :cond_4

    move v3, v0

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "already at top"

    .line 91
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/a/b;->c()V

    return-void

    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/coloros/settings/a/b;->e()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/a/b;->d:I

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    :goto_0
    const-string v0, "mOppoListView is null"

    .line 63
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/a/b;->c()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/a/b;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method
