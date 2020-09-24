.class public Lcom/coloros/systemui/aod/focusmode/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# static fields
.field private static final CIRCLE_ANGEL:I = 0x168

.field private static final CIRCLE_STROKE_WIDTH:F = 1.3f

.field private static final START_ANGEL:F = -90.0f


# instance fields
.field private mCircleBgColor:I

.field private mCircleColor:I

.field private mCircleStrokeWidth:F

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p2}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 62
    iget-object p1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    iget-object p1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->CircleProgressView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mContext:Landroid/content/Context;

    const v1, 0x7f06004b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleBgColor:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleColor:I

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mContext:Landroid/content/Context;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->dip2pixel(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleStrokeWidth:F

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 94
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 96
    :goto_0
    iget v3, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 98
    iget-object v4, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    sub-int v5, v1, v2

    int-to-float v5, v5

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->top:F

    add-int v5, v1, v2

    int-to-float v5, v5

    sub-float/2addr v5, v3

    .line 99
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    sub-int v5, v0, v2

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 100
    iput v5, v4, Landroid/graphics/RectF;->left:F

    add-int v5, v0, v2

    int-to-float v5, v5

    sub-float/2addr v5, v3

    .line 101
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 103
    iget-object v4, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleBgColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    sub-float/2addr v2, v3

    .line 104
    iget-object v3, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v3, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 84
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->mProgress:F

    .line 86
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/CircleProgressView;->invalidate()V

    return-void
.end method
