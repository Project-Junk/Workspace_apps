.class Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;
.super Ljava/lang/Object;
.source "HeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:I

.field final synthetic c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V
    .locals 0

    .line 1135
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;->a:I

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;->c:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-static {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)I

    move-result v0

    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
