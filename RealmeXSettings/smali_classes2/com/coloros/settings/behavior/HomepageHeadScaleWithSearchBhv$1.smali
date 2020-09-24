.class final Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HomepageHeadScaleWithSearchBhv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;


# direct methods
.method constructor <init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I

    move-result-object p1

    aget p1, p1, p2

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 173
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I

    move-result-object p1

    aget p1, p1, p2

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->e(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1, v1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;I)I

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I

    move-result-object v0

    aget p2, v0, p2

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I

    move-result-object p1

    aget p1, p1, p2

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->g(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1, v1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;I)I

    .line 179
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 180
    new-array p1, v2, [I

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I

    move-result-object v0

    aget p2, v0, p2

    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->g(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 194
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    .line 195
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->h(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V

    :cond_0
    return-void
.end method
