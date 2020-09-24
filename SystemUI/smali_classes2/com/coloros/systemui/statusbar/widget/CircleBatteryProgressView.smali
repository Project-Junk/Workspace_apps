.class public Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;
.super Landroid/view/View;
.source "CircleBatteryProgressView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final FULL_ANGLE:I = 0x168

.field private static final MAX_PROGRESS:I = 0x64

.field private static final NUM_TWO:F = 2.0f

.field private static final START_ANGLE:I = 0x10e


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgWidth:F

.field private mCenterPositionX:F

.field private mCenterPositionY:F

.field private mCircleRadiusX:F

.field private mCircleRadiusY:F

.field private mCircleRectF:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressBgColor:I

.field private mProgressColor:I

.field private mProgressColorInBlackBg:I

.field private mProgressColorInWhiteBg:I

.field private mProgressWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgPaint:Landroid/graphics/Paint;

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->initData()V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColor:I

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColorInBlackBg:I

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColorInWhiteBg:I

    .line 75
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgWidth:F

    .line 76
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColorInWhiteBg:I

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressBgColor:I

    .line 77
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressWidth:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 83
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 130
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->updateProgressBgColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 89
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionX:F

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionY:F

    .line 97
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionY:F

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRadiusX:F

    .line 98
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionY:F

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRadiusY:F

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionX:F

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRadiusX:F

    sub-float v3, v1, v2

    iget v4, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionY:F

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRadiusY:F

    sub-float v6, v4, v5

    add-float/2addr v1, v2

    add-float/2addr v4, v5

    invoke-direct {v0, v3, v6, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRectF:Landroid/graphics/RectF;

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionX:F

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionY:F

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgWidth:F

    iget-object v4, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionX:F

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCenterPositionY:F

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRadiusX:F

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    .line 124
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mCircleRectF:Landroid/graphics/RectF;

    int-to-float v4, v0

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateProgress(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgress:I

    .line 140
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->postInvalidate()V

    return-void
.end method

.method public updateProgressBgColor(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 145
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColorInWhiteBg:I

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressBgColor:I

    goto :goto_0

    .line 147
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColorInBlackBg:I

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressBgColor:I

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->invalidate()V

    return-void
.end method

.method public updateProgressColor(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->mProgressColor:I

    .line 135
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;->invalidate()V

    return-void
.end method
