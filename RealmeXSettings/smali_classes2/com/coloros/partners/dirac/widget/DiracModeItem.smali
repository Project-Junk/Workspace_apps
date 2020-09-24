.class public Lcom/coloros/partners/dirac/widget/DiracModeItem;
.super Ljava/lang/Object;
.source "DiracModeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;,
        Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;
    }
.end annotation


# static fields
.field private static final TEXT_COLOR_NORMAL:I = -0x555556

.field private static final TEXT_COLOR_SELECTED:I = -0x1

.field private static final TEXT_SIZE_NORMAL:I = 0x10

.field private static final TEXT_SIZE_SELECTED:I = 0x12


# instance fields
.field private mAnim:Landroid/animation/ValueAnimator;

.field private mCenterRect:Landroid/graphics/Rect;

.field private mLastLeft:I

.field private mLastRight:I

.field private mListener:Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;

.field private mModeName:Ljava/lang/String;

.field private mNormalTextSize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mSelected:Z

.field private mSelectedTextSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mModeName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mSelected:Z

    .line 49
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 54
    invoke-static {}, Lcom/coloros/partners/dirac/a/d;->c()Z

    move-result p1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 55
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->dip2px(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mNormalTextSize:I

    .line 56
    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->dip2px(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mSelectedTextSize:I

    return-void

    .line 58
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->dip2px(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mNormalTextSize:I

    const/16 p1, 0x12

    .line 59
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->dip2px(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mSelectedTextSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/partners/dirac/widget/DiracModeItem;F)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->move(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/partners/dirac/widget/DiracModeItem;)Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mListener:Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;

    return-object p0
.end method

.method private dip2px(I)I
    .locals 1

    .line 68
    invoke-static {}, Lcom/coloros/partners/dirac/a;->a()Landroid/app/Application;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->dip2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private move(F)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mLastLeft:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 73
    iget v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mLastRight:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private outOfTargetRect()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mCenterRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mCenterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mCenterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 77
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->outOfTargetRect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mSelectedTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mNormalTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    .line 88
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mModeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mModeName:Ljava/lang/String;

    return-object v0
.end method

.method public moveTo(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    .line 107
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 108
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    .line 109
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public scrollTo(F)V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mLastLeft:I

    .line 114
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mLastRight:I

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/4 v1, 0x2

    .line 120
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 123
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mAnim:Landroid/animation/ValueAnimator;

    .line 124
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    mul-double/2addr v6, v4

    add-double/2addr v6, v2

    double-to-int v0, v6

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mAnim:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/coloros/partners/dirac/a;->a()Landroid/app/Application;

    move-result-object v1

    const v2, 0x10c0003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;

    invoke-direct {v1, p0, p0}, Lcom/coloros/partners/dirac/widget/DiracModeItem$DTSModeItemListener;-><init>(Lcom/coloros/partners/dirac/widget/DiracModeItem;Lcom/coloros/partners/dirac/widget/DiracModeItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    float-to-int p1, p1

    .line 132
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setPosition(IIII)V

    .line 133
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mListener:Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;

    if-eqz p1, :cond_2

    .line 134
    invoke-interface {p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;->onPositionUpdated()V

    :cond_2
    return-void
.end method

.method public setCenterRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mCenterRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setListener(Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mListener:Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;

    return-void
.end method

.method public setPosition(IIII)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 145
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 146
    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 147
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeItem;->mSelected:Z

    return-void
.end method
