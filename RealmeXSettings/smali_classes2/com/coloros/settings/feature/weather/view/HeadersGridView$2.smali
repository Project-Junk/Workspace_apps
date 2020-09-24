.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;
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

.field final synthetic b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Landroid/view/View;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->a:Landroid/view/View;

    .line 320
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->invalidate(IIII)V

    return-void
.end method
