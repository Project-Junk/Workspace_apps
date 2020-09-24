.class public final Lcom/color/support/c/d;
.super Ljava/lang/Object;
.source "ColorHintRedDotHelper.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/text/TextPaint;

.field private o:Landroid/graphics/Paint;


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

    iput p3, p0, Lcom/color/support/c/d;->a:I

    .line 86
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintRedDotTextColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->b:I

    .line 87
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHintTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->c:I

    .line 88
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorSmallWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->d:I

    .line 89
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorMediumWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->e:I

    .line 90
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorLargeWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->f:I

    .line 91
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->h:I

    .line 92
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorCornerRadius:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->i:I

    .line 93
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorDotDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->j:I

    .line 94
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorHintRedDot_colorEllipsisDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/c/d;->l:I

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_hint_red_dot_rect_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/c/d;->k:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_hint_red_dot_navi_small_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/c/d;->g:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/c/d;->m:I

    .line 100
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    .line 101
    iget-object p1, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 102
    iget-object p1, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    iget p3, p0, Lcom/color/support/c/d;->b:I

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 103
    iget-object p1, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    iget p3, p0, Lcom/color/support/c/d;->c:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    .line 104
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 105
    iget-object p3, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/c/d;->o:Landroid/graphics/Paint;

    .line 107
    iget-object p1, p0, Lcom/color/support/c/d;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object p1, p0, Lcom/color/support/c/d;->o:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/c/d;->a:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object p1, p0, Lcom/color/support/c/d;->o:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 6

    if-gtz p2, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/color/support/c/g;->a()Lcom/color/support/c/g;

    move-result-object v0

    iget v1, p0, Lcom/color/support/c/d;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/color/support/c/g;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/color/support/c/d;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v0, 0x3e8

    const/high16 v1, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_1

    .line 150
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 151
    iget-object v0, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

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
    iget-object p3, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v3, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

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
    iget v2, p0, Lcom/color/support/c/d;->m:I

    iget v3, p0, Lcom/color/support/c/d;->l:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p3

    int-to-float v2, v2

    add-float/2addr v2, p2

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/color/support/c/d;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

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

    iget-object v2, p0, Lcom/color/support/c/d;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 210
    iget p1, p0, Lcom/color/support/c/d;->d:I

    return p1

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 212
    iget p1, p0, Lcom/color/support/c/d;->e:I

    return p1

    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 214
    iget p1, p0, Lcom/color/support/c/d;->f:I

    return p1

    .line 216
    :cond_2
    iget p1, p0, Lcom/color/support/c/d;->e:I

    return p1
.end method

.method private c(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 222
    iget p1, p0, Lcom/color/support/c/d;->g:I

    return p1

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 224
    iget p1, p0, Lcom/color/support/c/d;->d:I

    return p1

    .line 226
    :cond_1
    iget p1, p0, Lcom/color/support/c/d;->e:I

    return p1
.end method


# virtual methods
.method public final a(I)I
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
    iget p1, p0, Lcom/color/support/c/d;->e:I

    div-int/2addr p1, v1

    return p1

    .line 1231
    :cond_1
    iget p1, p0, Lcom/color/support/c/d;->h:I

    return p1

    .line 197
    :cond_2
    iget p1, p0, Lcom/color/support/c/d;->j:I

    return p1

    :cond_3
    return v0
.end method

.method public final a(II)I
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
    invoke-direct {p0, p2}, Lcom/color/support/c/d;->c(I)I

    move-result p1

    return p1

    .line 179
    :cond_1
    invoke-direct {p0, p2}, Lcom/color/support/c/d;->b(I)I

    move-result p1

    return p1

    .line 177
    :cond_2
    iget p1, p0, Lcom/color/support/c/d;->j:I

    return p1

    :cond_3
    return v0
.end method

.method public final a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
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
    invoke-direct {p0, p1, p3, p4}, Lcom/color/support/c/d;->a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/color/support/c/d;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method
