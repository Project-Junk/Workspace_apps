.class public Lcom/coloros/systemui/keyguard/view/ColorTipsView;
.super Landroid/view/View;
.source "ColorTipsView.java"


# instance fields
.field private mClipWidth:I

.field private mDefaultContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextHeight:I

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mDefaultContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mDefaultContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextHeight:I

    return-void
.end method

.method private measureSpec(II)I
    .locals 1

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getTextWidth()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextWidth:I

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_0

    .line 84
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 73
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v0

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mClipWidth:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextHeight:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float v8, v2, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 77
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 91
    iget v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextWidth:I

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->measureSpec(II)I

    move-result p1

    .line 92
    iget v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextHeight:I

    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->measureSpec(II)I

    move-result p2

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setMeasuredDimension(II)V

    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    .line 135
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mClipWidth:I

    .line 137
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextWidth:I

    return-void
.end method

.method public setClipWidth(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mClipWidth:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mTextWidth:I

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateTextColor(I)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->mPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
