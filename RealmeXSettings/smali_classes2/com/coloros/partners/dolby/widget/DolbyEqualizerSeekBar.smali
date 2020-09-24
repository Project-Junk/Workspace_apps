.class public Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;
.super Ljava/lang/Object;
.source "DolbyEqualizerSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;,
        Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;
    }
.end annotation


# static fields
.field private static final DURATION_BASE:I = 0xc8

.field private static final DURATION_FACTOR:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DolbyEqualizerSeekBar"


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/PathInterpolator;

.field private mActiveTextPaint:Landroid/graphics/Paint;

.field private mActived:Z

.field private mAnim:Landroid/animation/ValueAnimator;

.field private mCurrentDecibel:Landroid/graphics/drawable/Drawable;

.field private mCurrentDecibelDeltaTop:I

.field private mCurrentDecibelTextSize:I

.field private mDrawArea:Landroid/graphics/Rect;

.field private mDrawableSeekbarBg:Landroid/graphics/drawable/Drawable;

.field private mDrawableSeekbarProgress:Landroid/graphics/drawable/Drawable;

.field private mDrawableThumbActive:Landroid/graphics/drawable/Drawable;

.field private mDrawableThumbNormal:Landroid/graphics/drawable/Drawable;

.field private mExtendResponseRange:I

.field private mMaxProgress:I

.field private mMaxThumbY:I

.field private mMinProgress:I

.field private mMinThumbY:I

.field private mProgressUnitLength:F

.field private mSeekBarBgRect:Landroid/graphics/Rect;

.field private mSeekBarProgressDeltaTop:I

.field private mSeekBarProgressRect:Landroid/graphics/Rect;

.field private mSeekBarThumbRect:Landroid/graphics/Rect;

.field private mSeekbarBgWidth:I

.field private mSeekbarProgressWidth:I

.field private mSeekbarThumbHeight:I

.field private mSeekbarThumbWidth:I

.field private mThumbX:I

.field private mThumbY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;IIIIII)V
    .locals 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e083127    # 0.133f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAccelerateInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarBgWidth:I

    .line 37
    iput v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarProgressWidth:I

    .line 38
    iput v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbWidth:I

    .line 39
    iput v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbHeight:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070371

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mExtendResponseRange:I

    const v1, 0x7f070361

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibelTextSize:I

    const v1, 0x7f070360

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibelDeltaTop:I

    const v1, 0x7f070391

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressDeltaTop:I

    .line 71
    iput p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarBgWidth:I

    .line 72
    iput p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarProgressWidth:I

    .line 73
    iput p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbWidth:I

    .line 74
    iput p8, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbHeight:I

    .line 76
    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mDrawArea ="

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "DolbyEqualizerSeekBar"

    invoke-static {p5, p2}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    iget-object p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p6

    iget p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarBgWidth:I

    sub-int/2addr p5, p6

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    .line 79
    iget-object p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    iget-object p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->right:I

    iget-object p8, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->left:I

    sub-int/2addr p7, p8

    iget p8, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarBgWidth:I

    sub-int/2addr p7, p8

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p5, p7

    add-int/2addr p6, p5

    .line 80
    iget-object p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    .line 81
    new-instance p7, Landroid/graphics/Rect;

    iget-object p8, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->top:I

    invoke-direct {p7, p2, p8, p6, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    .line 83
    iget-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->right:I

    iget-object p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, p7

    iget p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarProgressWidth:I

    sub-int/2addr p6, p7

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p2, p6

    .line 84
    iget-object p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->left:I

    iget-object p8, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p8, v1

    iget v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarProgressWidth:I

    sub-int/2addr p8, v1

    div-int/lit8 p8, p8, 0x2

    add-int/2addr p6, p8

    add-int/2addr p7, p6

    .line 85
    new-instance p6, Landroid/graphics/Rect;

    iget-object p8, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p8, p8, Landroid/graphics/Rect;->top:I

    invoke-direct {p6, p2, p8, p7, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    .line 88
    invoke-direct {p0, v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->createSeekBarBg(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableSeekbarBg:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08052c

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableSeekbarProgress:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08052d

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableThumbNormal:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08052b

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableThumbActive:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080523

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->right:I

    iget-object p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p7, p7, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, p7

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p2, p6

    iput p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbX:I

    .line 96
    iget p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbHeight:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p5, p2

    iput p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxThumbY:I

    .line 97
    iget-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbHeight:I

    div-int/lit8 p6, p5, 0x2

    add-int/2addr p2, p6

    iput p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    .line 98
    iget p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxThumbY:I

    iput p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    .line 99
    new-instance p2, Landroid/graphics/Rect;

    iget p6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbX:I

    iget p7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbWidth:I

    div-int/lit8 p8, p7, 0x2

    sub-int p8, p6, p8

    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    div-int/lit8 v1, p5, 0x2

    sub-int v1, v0, v1

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p6, p7

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p5

    invoke-direct {p2, p8, v1, p6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarThumbRect:Landroid/graphics/Rect;

    .line 101
    iput p3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinProgress:I

    .line 102
    iput p4, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxProgress:I

    .line 103
    iget p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxThumbY:I

    iget p3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxProgress:I

    iget p4, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinProgress:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mProgressUnitLength:F

    const/4 p2, 0x0

    .line 104
    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    .line 106
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    .line 107
    iget-object p2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibelTextSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    invoke-static {p1}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private createSeekBarBg(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 119
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v1, 0x7f0601de

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 122
    iget p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarBgWidth:I

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private drawDecibleText(Landroid/graphics/Canvas;)V
    .locals 8

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 163
    iget v3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbX:I

    iget-object v4, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 164
    iget v4, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    iget-object v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 165
    iget-object v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 166
    iget-object v6, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 167
    iget-object v7, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    iget-object v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v3

    .line 169
    iget-object v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v5, v1

    add-float/2addr v3, v5

    iget v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mCurrentDecibelDeltaTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v2, v1

    add-float/2addr v4, v2

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActiveTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSeekBar(Landroid/graphics/Canvas;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 128
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableSeekbarBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableSeekbarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    iget v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressDeltaTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 132
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableSeekbarProgress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarProgressRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableSeekbarProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 7

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 144
    iget v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekbarThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    .line 145
    iget-object v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarThumbRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbX:I

    sub-int v4, v3, v0

    iget v5, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    sub-int v6, v5, v1

    add-int/2addr v3, v0

    add-int/2addr v5, v1

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    iget-boolean v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActived:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableThumbActive:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 149
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableThumbActive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableThumbNormal:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 152
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mDrawableThumbNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 175
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->drawSeekBar(Landroid/graphics/Canvas;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 177
    iget-boolean v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActived:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->drawDecibleText(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getProgress()I
    .locals 3

    .line 183
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    iget v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mProgressUnitLength:F

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

    .line 191
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbX:I

    return v0
.end method

.method public getThumbY()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    return v0
.end method

.method public isInside(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 211
    iget p3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mExtendResponseRange:I

    goto :goto_0

    :cond_0
    move p3, v0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p3

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    if-gt p1, v1, :cond_1

    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-lt p2, p1, :cond_1

    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mSeekBarBgRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mActived:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 223
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    iget v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mProgressUnitLength:F

    iget v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxProgress:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setThumbY(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 187
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    iget v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mProgressUnitLength:F

    iget v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxProgress:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setProgressFromThumbY(I)V

    return-void
.end method

.method public setProgressFromThumbY(I)V
    .locals 5

    .line 227
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxThumbY:I

    if-le p1, v0, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setThumbY(I)V

    return-void

    .line 231
    :cond_0
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    if-gt p1, v0, :cond_1

    .line 232
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setThumbY(I)V

    return-void

    :cond_1
    sub-int v1, p1, v0

    int-to-float v1, v1

    .line 236
    iget v2, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mProgressUnitLength:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 239
    iget v3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxProgress:I

    iget v4, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinProgress:I

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

    .line 242
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    if-le p1, v1, :cond_2

    .line 243
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setThumbY(I)V

    return-void

    .line 245
    :cond_2
    invoke-virtual {p0, v3}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setThumbY(I)V

    :cond_3
    return-void
.end method

.method public setThumbY(I)V
    .locals 1

    .line 199
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMaxThumbY:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 202
    :cond_0
    iget v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mMinThumbY:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 205
    :cond_1
    iput p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mThumbY:I

    return-void
.end method

.method public startProgressAnim(ILcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;)V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->getProgress()I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    .line 256
    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    aput v3, v1, v2

    .line 259
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    .line 260
    iget-object v1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x32

    add-int/lit16 p1, p1, 0xc8

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAccelerateInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;

    invoke-direct {v0, p0, p0, p2}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;-><init>(Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
