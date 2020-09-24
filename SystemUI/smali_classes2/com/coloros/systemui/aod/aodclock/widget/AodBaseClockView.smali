.class public Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;
.super Landroid/widget/ImageView;
.source "AodBaseClockView.java"


# instance fields
.field private mClockPager:I

.field private mClockPosition:I

.field private mClockTab:I

.field private mClockType:I

.field private mIsSelected:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getClockPager()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockPager:I

    return p0
.end method

.method public getClockPosition()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockPosition:I

    return p0
.end method

.method public getClockTab()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockTab:I

    return p0
.end method

.method public getClockType()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockType:I

    return p0
.end method

.method public getPreviewSetting()I
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockTab:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockPager:I

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockType:I

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockPosition:I

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mIsSelected:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getMeasuredWidth()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getMeasuredHeight()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080526

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setCheck(Z)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mIsSelected:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mIsSelected:Z

    .line 108
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->invalidate()V

    return-void
.end method

.method public setClockPager(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockPager:I

    return-void
.end method

.method public setClockPosition(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockPosition:I

    return-void
.end method

.method public setClockTab(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockTab:I

    return-void
.end method

.method public setClockType(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->mClockType:I

    return-void
.end method

.method public setImageSrc(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
