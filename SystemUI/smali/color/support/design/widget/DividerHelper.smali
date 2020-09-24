.class public Lcolor/support/design/widget/DividerHelper;
.super Ljava/lang/Object;
.source "DividerHelper.java"


# static fields
.field public static final DIVIDER_BACKGROUND_COLOR:I

.field public static final DIVIDER_COLOR:I

.field private static final DIVIDER_MARGIN:I = 0x18

.field private static final DIVIDER_MAX_HEIGHT:I = 0x3

.field private static final DIVIDER_MIN_HEIGHT:I = 0x1


# instance fields
.field private mCurrentRange:F

.field private mDividerBackgroundColor:I

.field private mDividerColor:I

.field private mDividerCurrentHeight:I

.field private mDividerMargin:I

.field private mDividerMaxHeight:I

.field private mDividerMinHeight:I

.field private mEndPoint:Landroid/graphics/Point;

.field private mIsDrawDivider:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStartPoint:Landroid/graphics/Point;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcolor/support/design/widget/DividerHelper;->DIVIDER_COLOR:I

    const/16 v1, 0xff

    .line 40
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcolor/support/design/widget/DividerHelper;->DIVIDER_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMinHeight:I

    .line 68
    iget v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMaxHeight:I

    iput v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    .line 70
    sget v0, Lcolor/support/design/widget/DividerHelper;->DIVIDER_COLOR:I

    iput v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerColor:I

    .line 71
    sget v0, Lcolor/support/design/widget/DividerHelper;->DIVIDER_BACKGROUND_COLOR:I

    iput v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerBackgroundColor:I

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr p1, v0

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMargin:I

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mCurrentRange:F

    .line 75
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    .line 76
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mEndPoint:Landroid/graphics/Point;

    return-void
.end method

.method private updateDrawPosition(Landroid/graphics/Canvas;)V
    .locals 4

    .line 109
    iget-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    iget v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mCurrentRange:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 110
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 111
    iget-object v0, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 112
    iget-object v0, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 113
    iget-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mEndPoint:Landroid/graphics/Point;

    iget-object v0, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMargin:I

    int-to-float v1, v1

    iget v3, p0, Lcolor/support/design/widget/DividerHelper;->mCurrentRange:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 114
    iget-object p1, p0, Lcolor/support/design/widget/DividerHelper;->mEndPoint:Landroid/graphics/Point;

    iget-object p0, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 84
    iget-boolean v0, p0, Lcolor/support/design/widget/DividerHelper;->mIsDrawDivider:Z

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcolor/support/design/widget/DividerHelper;->updateDrawPosition(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v0, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 96
    iget-object v1, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    iget-object v1, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/DividerHelper;->mEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    iget-object v1, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 102
    iget-object v1, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcolor/support/design/widget/DividerHelper;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v1, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/DividerHelper;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 104
    iget-object v1, p0, Lcolor/support/design/widget/DividerHelper;->mEndPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcolor/support/design/widget/DividerHelper;->mEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object p0, p0, Lcolor/support/design/widget/DividerHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentHeight()I
    .locals 0

    .line 183
    iget p0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    return p0
.end method

.method public getDividerMargin()I
    .locals 0

    .line 208
    iget p0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMargin:I

    return p0
.end method

.method public getDividerMaxHeight()I
    .locals 0

    .line 159
    iget p0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMaxHeight:I

    return p0
.end method

.method public getDividerMinHeight()I
    .locals 0

    .line 175
    iget p0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMinHeight:I

    return p0
.end method

.method public setCurrentHeight(I)V
    .locals 1

    .line 216
    iget v0, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    if-eq v0, p1, :cond_0

    .line 217
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    :cond_0
    return-void
.end method

.method public setDividerBackgroundColor(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerBackgroundColor:I

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerColor:I

    return-void
.end method

.method public setDividerMargin(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMargin:I

    return-void
.end method

.method public setDividerMaxHeight(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMaxHeight:I

    return-void
.end method

.method public setDividerMinHeight(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMinHeight:I

    return-void
.end method

.method public setDrawDivider(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcolor/support/design/widget/DividerHelper;->mIsDrawDivider:Z

    .line 192
    iget-object p0, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public updateCurrentRange(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 122
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 123
    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mCurrentRange:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 124
    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mCurrentRange:F

    .line 125
    iget p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMinHeight:I

    iget v1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerMaxHeight:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcolor/support/design/widget/DividerHelper;->mCurrentRange:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcolor/support/design/widget/DividerHelper;->mDividerCurrentHeight:I

    .line 126
    iget-object p0, p0, Lcolor/support/design/widget/DividerHelper;->mView:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
