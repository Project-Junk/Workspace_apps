.class public Lcom/color/support/util/e;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorHintRedDotColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->a:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorHintRedDotTextColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->b:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorHintTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->c:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorSmallWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->d:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorMediumWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->e:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorLargeWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->f:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->h:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorCornerRadius:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->i:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorDotDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->j:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorHintRedDot_colorEllipsisDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/util/e;->l:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$e;->color_hint_red_dot_rect_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/util/e;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$e;->color_hint_red_dot_navi_small_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/util/e;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$e;->color_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/util/e;->m:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    iget p3, p0, Lcom/color/support/util/e;->b:I

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    iget p3, p0, Lcom/color/support/util/e;->c:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/util/e;->o:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/util/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/color/support/util/e;->o:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/util/e;->a:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/color/support/util/e;->o:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a()I
    .locals 0

    iget p0, p0, Lcom/color/support/util/e;->h:I

    return p0
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 6

    if-gtz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/color/support/util/h;->a()Lcom/color/support/util/h;

    move-result-object v0

    iget v1, p0, Lcom/color/support/util/e;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/color/support/util/h;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/util/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v0, 0x3e8

    const/high16 v1, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget-object v2, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    int-to-float v2, v2

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    iget p3, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p3, p3

    sub-float/2addr v2, p3

    iget p3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p3, p3

    sub-float/2addr v2, p3

    float-to-int p3, v2

    div-int/lit8 p3, p3, 0x2

    int-to-float v0, v1

    int-to-float p3, p3

    iget-object p0, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v0

    div-float/2addr p2, v1

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p3

    div-float/2addr v0, v1

    const/4 p3, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt p3, v2, :cond_2

    iget v2, p0, Lcom/color/support/util/e;->m:I

    iget v3, p0, Lcom/color/support/util/e;->l:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p3

    int-to-float v2, v2

    add-float/2addr v2, p2

    iget v3, p0, Lcom/color/support/util/e;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/color/support/util/e;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v0

    iget-object p0, p0, Lcom/color/support/util/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iget p0, p0, Lcom/color/support/util/e;->d:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    iget p0, p0, Lcom/color/support/util/e;->e:I

    return p0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    iget p0, p0, Lcom/color/support/util/e;->f:I

    return p0

    :cond_2
    iget p0, p0, Lcom/color/support/util/e;->e:I

    return p0
.end method

.method private c(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iget p0, p0, Lcom/color/support/util/e;->g:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    iget p0, p0, Lcom/color/support/util/e;->d:I

    return p0

    :cond_1
    iget p0, p0, Lcom/color/support/util/e;->e:I

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget p0, p0, Lcom/color/support/util/e;->e:I

    div-int/lit8 p0, p0, 0x2

    return p0

    :pswitch_1
    invoke-direct {p0}, Lcom/color/support/util/e;->a()I

    move-result p0

    return p0

    :pswitch_2
    iget p0, p0, Lcom/color/support/util/e;->j:I

    return p0

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/color/support/util/e;->c(I)I

    move-result p0

    return p0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/color/support/util/e;->b(I)I

    move-result p0

    return p0

    :pswitch_2
    iget p0, p0, Lcom/color/support/util/e;->j:I

    return p0

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p3, p4}, Lcom/color/support/util/e;->a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/color/support/util/e;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
