.class public Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;
.super Landroid/view/View;
.source "HeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FillerView"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 365
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 382
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 384
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setMeasureTarget(Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$FillerView;->b:Landroid/view/View;

    return-void
.end method
