.class public Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;
.super Landroid/widget/FrameLayout;
.source "HeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderFillerView"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 398
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 422
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getHeaderId()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->b:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 427
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 428
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 431
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 435
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 434
    invoke-static {v2, v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v2

    .line 436
    iget-object v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->a:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 437
    invoke-static {v3}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;)Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 436
    invoke-static {v3, v1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 439
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    .line 441
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHeaderId(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->b:I

    return-void
.end method
