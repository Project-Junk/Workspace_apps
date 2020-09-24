.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;
.super Ljava/lang/Object;
.source "HeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/weather/view/HeadersGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

.field final synthetic c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Landroid/view/View;Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    .line 428
    invoke-static {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)Ljava/lang/Runnable;

    .line 429
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    .line 430
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 431
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setPressed(Z)V

    .line 432
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 433
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->a:Landroid/view/View;

    .line 434
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 433
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->invalidate(IIII)V

    .line 435
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d:Z

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->run()V

    :cond_0
    return-void
.end method
