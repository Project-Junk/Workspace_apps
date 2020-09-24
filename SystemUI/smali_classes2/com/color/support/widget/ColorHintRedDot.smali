.class public Lcom/color/support/widget/ColorHintRedDot;
.super Landroid/view/View;
.source "ColorHintRedDot.java"


# static fields
.field public static final CONSTANT_VALUE_3:I = 0x3

.field public static final CONSTANT_VALUE_4:I = 0x4

.field public static final NO_POINT_MODE:I = 0x0

.field public static final POINT_NAVI_WITH_NUM:I = 0x3

.field public static final POINT_ONLY_MODE:I = 0x1

.field public static final POINT_WITH_NUM_MODE:I = 0x2

.field public static final TYPE_BIG_RECT_RADIUS:I = 0x2

.field public static final TYPE_SMALL_RECT_RADIUS:I = 0x1


# instance fields
.field private mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

.field private mPointMode:I

.field private mPointNumber:I

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 95
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorHintRedDotStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    .line 80
    iput v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointNumber:I

    .line 111
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 112
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedPointMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    .line 113
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedPointNum:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointNumber:I

    .line 114
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    new-instance v0, Lcom/color/support/util/ColorHintRedDotHelper;

    sget-object v5, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot:[I

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/color/support/util/ColorHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

    .line 116
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorHintRedDot;->mRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getPointMode()I
    .locals 0

    .line 161
    iget p0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    return p0
.end method

.method public getPointNumber()I
    .locals 0

    .line 169
    iget p0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointNumber:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 128
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 129
    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 130
    iget-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 131
    iget-object v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

    iget v1, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    iget v2, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointNumber:I

    iget-object p0, p0, Lcom/color/support/widget/ColorHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/color/support/util/ColorHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/color/support/widget/ColorHintRedDot;->mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

    iget p2, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    iget v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointNumber:I

    invoke-virtual {p1, p2, v0}, Lcom/color/support/util/ColorHintRedDotHelper;->getViewWidth(II)I

    move-result p1

    iget-object p2, p0, Lcom/color/support/widget/ColorHintRedDot;->mColorHintRedDotHelper:Lcom/color/support/util/ColorHintRedDotHelper;

    iget v0, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    .line 122
    invoke-virtual {p2, v0}, Lcom/color/support/util/ColorHintRedDotHelper;->getViewHeight(I)I

    move-result p2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorHintRedDot;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPointMode(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointMode:I

    .line 152
    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->requestLayout()V

    return-void
.end method

.method public setPointNumber(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/color/support/widget/ColorHintRedDot;->mPointNumber:I

    .line 142
    invoke-virtual {p0}, Lcom/color/support/widget/ColorHintRedDot;->requestLayout()V

    return-void
.end method
