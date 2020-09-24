.class final Lcom/coloros/settings/behavior/AppListSearchBehavior$a;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "AppListSearchBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/behavior/AppListSearchBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/behavior/AppListSearchBehavior;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/behavior/AppListSearchBehavior;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/behavior/AppListSearchBehavior;B)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;-><init>(Lcom/coloros/settings/behavior/AppListSearchBehavior;)V

    return-void
.end method


# virtual methods
.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-static {v0}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->a(Lcom/coloros/settings/behavior/AppListSearchBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-static {v1}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b(Lcom/coloros/settings/behavior/AppListSearchBehavior;)Lcom/facebook/rebound/Spring;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v1

    double-to-int v1, v1

    if-eq v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-static {v0}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c(Lcom/coloros/settings/behavior/AppListSearchBehavior;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-static {p1}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->a(Lcom/coloros/settings/behavior/AppListSearchBehavior;)I

    move-result p1

    int-to-double v4, p1

    sub-double/2addr v2, v4

    double-to-int p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-static {p1}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b(Lcom/coloros/settings/behavior/AppListSearchBehavior;)Lcom/facebook/rebound/Spring;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;->a:Lcom/coloros/settings/behavior/AppListSearchBehavior;

    invoke-static {p1}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b(Lcom/coloros/settings/behavior/AppListSearchBehavior;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v0}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->a(Lcom/coloros/settings/behavior/AppListSearchBehavior;I)I

    return-void
.end method
