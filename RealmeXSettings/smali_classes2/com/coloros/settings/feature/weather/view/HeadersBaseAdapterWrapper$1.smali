.class final Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "HeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    const/4 v1, 0x0

    .line 1342
    iput v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    .line 1343
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v2}, Lcom/coloros/settings/feature/weather/view/a;->a()I

    move-result v2

    if-nez v2, :cond_0

    .line 1345
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v1}, Lcom/coloros/settings/feature/weather/view/a;->getCount()I

    move-result v1

    iput v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1351
    iget v3, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    iget-object v4, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a:Lcom/coloros/settings/feature/weather/view/a;

    invoke-interface {v4, v1}, Lcom/coloros/settings/feature/weather/view/a;->a(I)I

    move-result v4

    iget v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->d:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1353
    iput-boolean v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c:Z

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;)Z

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$1;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
