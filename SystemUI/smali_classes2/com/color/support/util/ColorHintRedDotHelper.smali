.class public Lcom/color/support/util/ColorHintRedDotHelper;
.super Ljava/lang/Object;
.source "ColorHintRedDotHelper.java"


# static fields
.field private static final CONSTANT_VALUE_10:I = 0xa

.field private static final CONSTANT_VALUE_100:I = 0x64

.field private static final CONSTANT_VALUE_1000:I = 0x3e8

.field private static final RATIO:I = 0x2


# instance fields
.field private mBgColor:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCornerRadius:I

.field private mDotCornerRadius:I

.field private mDotDiameter:I

.field private mEllipsisDiameter:I

.field private mEllipsisSpacing:I

.field private mLargeWidth:I

.field private mMediumWidth:I

.field private mNaviSmallWidth:I

.field private mSmallWidth:I

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 85
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedDotColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgColor:I

    .line 86
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedDotTextColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextColor:I

    .line 87
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextSize:I

    .line 88
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorSmallWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mSmallWidth:I

    .line 89
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorMediumWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mMediumWidth:I

    .line 90
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorLargeWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mLargeWidth:I

    .line 91
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mViewHeight:I

    .line 92
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorCornerRadius:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mCornerRadius:I

    .line 93
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorDotDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mDotDiameter:I

    .line 94
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorEllipsisDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mEllipsisDiameter:I

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_hint_red_dot_rect_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mDotCornerRadius:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_hint_red_dot_navi_small_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mNaviSmallWidth:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mEllipsisSpacing:I

    .line 100
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 101
    iget-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 102
    iget-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextColor:I

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    iget-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextSize:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    .line 104
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 105
    iget-object p3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    .line 107
    iget-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object p1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawPointOnly(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .line 137
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 138
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v0

    iget-object p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointWithNumber(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 6

    if-gtz p2, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v0

    iget v1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v0, 0x3e8

    const/high16 v1, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_1

    .line 150
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 151
    iget-object v0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 153
    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    int-to-float v2, v2

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 154
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    iget p3, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p3, p3

    sub-float/2addr v2, p3

    iget p3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p3, p3

    sub-float/2addr v2, p3

    div-float/2addr v2, v1

    .line 155
    iget-object p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v3, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 157
    :cond_1
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v0

    div-float/2addr p2, v1

    .line 158
    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p3

    div-float/2addr v0, v1

    const/4 p3, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt p3, v2, :cond_2

    .line 160
    iget v2, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mEllipsisSpacing:I

    iget v3, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mEllipsisDiameter:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p3

    int-to-float v2, v2

    add-float/2addr v2, p2

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getBgHeight()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mViewHeight:I

    return p0
.end method

.method private getBgWidth(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 210
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mSmallWidth:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 212
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mMediumWidth:I

    return p0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 214
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mLargeWidth:I

    return p0

    .line 216
    :cond_2
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mMediumWidth:I

    return p0
.end method

.method private getNaviBgWidth(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 222
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mNaviSmallWidth:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 224
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mSmallWidth:I

    return p0

    .line 226
    :cond_1
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mMediumWidth:I

    return p0
.end method


# virtual methods
.method public drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/color/support/util/ColorHintRedDotHelper;->drawPointWithNumber(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/color/support/util/ColorHintRedDotHelper;->drawPointOnly(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getViewHeight(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    .line 201
    :cond_0
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mMediumWidth:I

    div-int/2addr p0, v1

    return p0

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/color/support/util/ColorHintRedDotHelper;->getBgHeight()I

    move-result p0

    return p0

    .line 197
    :cond_2
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mDotDiameter:I

    return p0

    :cond_3
    return v0
.end method

.method public getViewWidth(II)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    .line 181
    :cond_0
    invoke-direct {p0, p2}, Lcom/color/support/util/ColorHintRedDotHelper;->getNaviBgWidth(I)I

    move-result p0

    return p0

    .line 179
    :cond_1
    invoke-direct {p0, p2}, Lcom/color/support/util/ColorHintRedDotHelper;->getBgWidth(I)I

    move-result p0

    return p0

    .line 177
    :cond_2
    iget p0, p0, Lcom/color/support/util/ColorHintRedDotHelper;->mDotDiameter:I

    return p0

    :cond_3
    return v0
.end method
