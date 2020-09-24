.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;
.super Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;
.source "HeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V
    .locals 1

    .line 1084
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V
    .locals 0

    .line 1084
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1087
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1089
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget v2, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Lcom/coloros/settings/feature/weather/view/HeadersGridView;I)J

    .line 1092
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->b()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-boolean v1, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d:Z

    if-nez v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    .line 1471
    iget-object v4, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->h:Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;

    if-eqz v4, :cond_0

    .line 1472
    iget-object v4, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->h:Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;

    invoke-interface {v4}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;->a()Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    if-eqz v0, :cond_1

    .line 1477
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1479
    :cond_1
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_2
    move v4, v3

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 1096
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v2, -0x2

    iput v2, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    .line 1097
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setPressed(Z)V

    .line 1098
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    return-void

    .line 1100
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    :cond_5
    return-void
.end method
