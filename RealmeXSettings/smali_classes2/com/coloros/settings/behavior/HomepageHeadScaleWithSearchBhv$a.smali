.class final Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "HomepageHeadScaleWithSearchBhv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;B)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;-><init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V

    return-void
.end method


# virtual methods
.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v1

    double-to-int v1, v1

    if-eq v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v4}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-static {v0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;->a:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;I)I

    return-void
.end method
