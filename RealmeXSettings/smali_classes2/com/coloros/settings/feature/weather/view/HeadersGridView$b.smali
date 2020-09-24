.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;
.super Ljava/lang/Object;
.source "HeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1150
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget v0, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    if-nez v0, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    .line 1152
    iget v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1153
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-static {v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1154
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-boolean v2, v2, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d:Z

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 1155
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1156
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setPressed(Z)V

    .line 1157
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->refreshDrawableState()V

    .line 1159
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 1160
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v1, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    if-nez v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    new-instance v2, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V

    iput-object v2, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v1, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;->a()V

    .line 1167
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v2, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput v3, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    return-void

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput v3, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    :cond_3
    return-void
.end method
