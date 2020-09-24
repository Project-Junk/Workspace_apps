.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;
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
    name = "e"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V
    .locals 1

    .line 1106
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V
    .locals 0

    .line 1106
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v0, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v1, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 1119
    invoke-virtual {v1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->a:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->a:I

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Lcom/coloros/settings/feature/weather/view/HeadersGridView;I)J

    .line 1457
    iget-object v2, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->g:Lcom/coloros/settings/feature/weather/view/HeadersGridView$c;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1458
    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->playSoundEffect(I)V

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1460
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method
