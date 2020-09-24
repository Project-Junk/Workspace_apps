.class public Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;
.super Landroid/view/View;
.source "BatteryView.java"


# static fields
.field private static final NUM_100:I = 0x64

.field private static final NUM_2:I = 0x2


# instance fields
.field private mBatteryLevel:F

.field private mDrawIconPaint:Landroid/graphics/Paint;

.field private mHeadHeight:F

.field private mHeadRadius:F

.field private mHeadRectF:Landroid/graphics/RectF;

.field private mHeadWidth:F

.field private mInlinePaint:Landroid/graphics/Paint;

.field private mInlineRadius:F

.field private mInlineRectF:Landroid/graphics/RectF;

.field private mOutAndInDistance:F

.field private mOutlineHeight:F

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mOutlineRadius:F

.field private mOutlineRectF:Landroid/graphics/RectF;

.field private mOutlineStrokeWidth:F

.field private mOutlineWidth:F

.field private mPaintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mPaintColor:I

    .line 63
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineRectF:Landroid/graphics/RectF;

    .line 64
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlineRectF:Landroid/graphics/RectF;

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadRectF:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineStrokeWidth:F

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineHeight:F

    .line 69
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineWidth:F

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineRadius:F

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlineRadius:F

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07009f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadRadius:F

    .line 73
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutAndInDistance:F

    .line 74
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadWidth:F

    .line 75
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07009e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadHeight:F

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mPaintColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineStrokeWidth:F

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    .line 84
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mPaintColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mDrawIconPaint:Landroid/graphics/Paint;

    .line 89
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mDrawIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mDrawIconPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mPaintColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineStrokeWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float v0, p2, p3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    div-float v0, p2, p3

    .line 93
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 94
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineWidth:F

    div-float v1, p2, p3

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 95
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineHeight:F

    div-float v2, p2, p3

    sub-float v2, v1, v2

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlineRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutAndInDistance:F

    add-float v3, p2, v2

    iput v3, p1, Landroid/graphics/RectF;->left:F

    add-float v3, p2, v2

    .line 98
    iput v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, p2

    sub-float/2addr v3, v2

    .line 99
    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadRectF:Landroid/graphics/RectF;

    div-float v2, p2, p3

    sub-float v2, v0, v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    div-float v2, v1, p3

    .line 102
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadHeight:F

    div-float v4, v3, p3

    sub-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 103
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadWidth:F

    add-float/2addr v0, p0

    div-float/2addr p2, p3

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, p3

    div-float/2addr v3, p3

    add-float/2addr v1, v3

    .line 104
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineRadius:F

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlineRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineStrokeWidth:F

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutAndInDistance:F

    add-float v3, v1, v2

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineWidth:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mBatteryLevel:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 120
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlineRadius:F

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadRadius:F

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 110
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineWidth:F

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mHeadWidth:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlineHeight:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBatteryColor(I)V
    .locals 1

    .line 131
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mPaintColor:I

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mInlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mDrawIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->invalidate()V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    int-to-float p1, p1

    .line 126
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->mBatteryLevel:F

    .line 127
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryView;->invalidate()V

    return-void
.end method
