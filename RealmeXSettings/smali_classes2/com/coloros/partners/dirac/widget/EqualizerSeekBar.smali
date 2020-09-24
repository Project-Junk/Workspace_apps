.class public Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;
.super Ljava/lang/Object;
.source "EqualizerSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;,
        Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;
    }
.end annotation


# static fields
.field private static final DURATION_BASE:I = 0xc8

.field private static final DURATION_FACTOR:I = 0x32


# instance fields
.field private mAnim:Landroid/animation/ValueAnimator;

.field private mCurrentDecibel:Landroid/graphics/drawable/Drawable;

.field private mCurrentDecibelTextSize:I

.field private mDrawArea:Landroid/graphics/Rect;

.field private mDrawableSeekbarBack:Landroid/graphics/drawable/Drawable;

.field private mDrawableSeekbarProgress:Landroid/graphics/drawable/Drawable;

.field private mExtendResponseRange:I

.field private mMarkToCurrentDbDistance:I

.field private mMarkerToColumnDistance:I

.field private mMaxProgress:I

.field private mMaxThumbY:I

.field private mMinProgress:I

.field private mMinThumbY:I

.field private mProgressEndColor:I

.field private mProgressStartColor:I

.field private mProgressUnitLength:F

.field private mSeekBarBgRect:Landroid/graphics/Rect;

.field private mSeekBarProgressDeltaTop:I

.field private mSeekBarProgressRect:Landroid/graphics/Rect;

.field private mSeekbarBgWidth:I

.field private mSeekbarProgressPaint:Landroid/graphics/Paint;

.field private mSeekbarProgressWidth:I

.field private mSeekbarThumbHeight:I

.field private mSeekbarThumbWidth:I

.field private mThumbDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mThumbX:I

.field private mThumbY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;IIIIIIII)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 38
    iput v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarBgWidth:I

    .line 39
    iput v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressWidth:I

    const/16 v0, 0x54

    .line 40
    iput v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarThumbWidth:I

    const/4 v0, 0x4

    .line 41
    iput v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarThumbHeight:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070400

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMarkerToColumnDistance:I

    const v1, 0x7f0703b3

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mExtendResponseRange:I

    const v1, 0x7f070401

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMarkToCurrentDbDistance:I

    const v1, 0x7f0702d6

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibelTextSize:I

    const v1, 0x7f0705f2

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressDeltaTop:I

    .line 74
    iput p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarBgWidth:I

    .line 75
    iput p6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressWidth:I

    .line 76
    iput p7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarThumbWidth:I

    .line 77
    iput p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarThumbHeight:I

    .line 78
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    iput-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressPaint:Landroid/graphics/Paint;

    .line 79
    iput p9, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressStartColor:I

    .line 80
    iput p10, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressEndColor:I

    .line 82
    iput-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    .line 83
    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    iget-object p6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p6

    iget p6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarBgWidth:I

    sub-int/2addr p5, p6

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    .line 84
    iget-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    iget-object p7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->right:I

    iget-object p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->left:I

    sub-int/2addr p7, p8

    iget p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarBgWidth:I

    sub-int/2addr p7, p8

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p5, p7

    add-int/2addr p6, p5

    .line 85
    new-instance p5, Landroid/graphics/Rect;

    iget-object p7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->top:I

    iget-object p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p5, p2, p7, p6, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    .line 87
    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    iget-object p6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p6

    iget p6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressWidth:I

    sub-int/2addr p5, p6

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    .line 88
    iget-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    iget-object p7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->right:I

    iget-object p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->left:I

    sub-int/2addr p7, p8

    iget p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressWidth:I

    sub-int/2addr p7, p8

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p5, p7

    add-int/2addr p6, p5

    .line 89
    new-instance p5, Landroid/graphics/Rect;

    iget-object p7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->top:I

    iget-object p8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p5, p2, p7, p6, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    const p2, 0x7f080981

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawableSeekbarBack:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080982

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawableSeekbarProgress:Landroid/graphics/drawable/Drawable;

    .line 95
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbDrawable:Landroid/graphics/drawable/ColorDrawable;

    const p2, 0x7f080515

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbX:I

    .line 98
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxThumbY:I

    .line 99
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    .line 100
    iget p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxThumbY:I

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    .line 102
    iput p3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinProgress:I

    .line 103
    iput p4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxProgress:I

    .line 104
    iget p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxProgress:I

    iget p3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinProgress:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressUnitLength:F

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private drawDecibleText(Landroid/graphics/Canvas;)V
    .locals 8

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%ddb"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 155
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getFontHeight(Landroid/graphics/Paint;)F

    .line 156
    iget v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbX:I

    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMarkToCurrentDbDistance:I

    add-int/2addr v3, v4

    .line 157
    iget v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 158
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 159
    iget v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    iget-object v7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 160
    iget-object v7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v3

    .line 162
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    int-to-float v4, v4

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 162
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSeekBar(Landroid/graphics/Canvas;)V
    .locals 10

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawableSeekbarBack:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 120
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mDrawableSeekbarBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    iget v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressDeltaTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 122
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 126
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v3

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    new-array v7, v3, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressStartColor:I

    aput v3, v7, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressEndColor:I

    aput v3, v7, v2

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    move v3, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 132
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSevenDecibleText(Landroid/graphics/Canvas;)V
    .locals 9

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 172
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%ddb"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 176
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v3

    .line 177
    iget v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbX:I

    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 178
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 179
    iget v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 180
    iget-object v7, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v6, v7

    .line 181
    iget-object v8, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v4, v4

    .line 183
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    int-to-float v5, v7

    iget-object v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    .line 184
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v5, v2

    .line 183
    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 7

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 140
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 141
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 142
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbX:I

    sub-int v4, v3, v0

    iget v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    sub-int v6, v5, v1

    add-int/2addr v3, v0

    add-int/2addr v5, v1

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 144
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getThumbHeight()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarThumbHeight:I

    return v0
.end method

.method private getThumbWidth()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekbarThumbWidth:I

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 195
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->drawSeekBar(Landroid/graphics/Canvas;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 199
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->drawSevenDecibleText(Landroid/graphics/Canvas;)V

    return-void

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->drawDecibleText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getFontHeight(Landroid/graphics/Paint;)F
    .locals 1

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 191
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p1

    return v0
.end method

.method public getProgress()I
    .locals 3

    .line 208
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    iget v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressUnitLength:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getThumbX()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbX:I

    return v0
.end method

.method public getThumbY()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    return v0
.end method

.method public isInside(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 236
    iget p3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mExtendResponseRange:I

    goto :goto_0

    :cond_0
    move p3, v0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p3

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    if-gt p1, v1, :cond_1

    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-lt p2, p1, :cond_1

    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 251
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressUnitLength:F

    iget v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxProgress:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setThumbY(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 212
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    iget v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressUnitLength:F

    iget v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxProgress:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setProgressFromThumbY(I)V

    return-void
.end method

.method public setProgressFromThumbY(I)V
    .locals 5

    .line 255
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxThumbY:I

    if-le p1, v0, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setThumbY(I)V

    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    if-gt p1, v0, :cond_1

    .line 260
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setThumbY(I)V

    return-void

    :cond_1
    sub-int v1, p1, v0

    int-to-float v1, v1

    .line 264
    iget v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mProgressUnitLength:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 267
    iget v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxProgress:I

    iget v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinProgress:I

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sub-int v1, v0, v3

    .line 270
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    if-le p1, v1, :cond_2

    .line 271
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setThumbY(I)V

    return-void

    .line 273
    :cond_2
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setThumbY(I)V

    :cond_3
    return-void
.end method

.method public setThumbY(I)V
    .locals 1

    .line 224
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMaxThumbY:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 227
    :cond_0
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mMinThumbY:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 230
    :cond_1
    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mThumbY:I

    return-void
.end method

.method public startProgressAnim(Landroid/content/Context;ILcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;)V
    .locals 3

    .line 280
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getProgress()I

    move-result p1

    .line 282
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 285
    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 288
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    .line 289
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x32

    add-int/lit16 p1, p1, 0xc8

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e083127    # 0.133f

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 291
    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;

    invoke-direct {p2, p0, p0, p3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;-><init>(Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
