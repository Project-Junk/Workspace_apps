.class public Lcom/color/support/widget/ColorButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "ColorButton.java"


# static fields
.field private static final DEFAULT_RADIUS:F = 7.0f

.field private static final HOLDER_BRIGHTNESS:Ljava/lang/String; = "brightnessHolder"

.field private static final HOLDER_EXPAND:Ljava/lang/String; = "expandHolder"

.field private static final NORMAL_ANIMATOR_DURATION:I = 0x12c

.field private static final PRESS_ANIMATOR_DURATION:I = 0x42

.field private static TAG:Ljava/lang/String; = "ColorButton"

.field private static final TARGET_BRIGHTNESS:F = 0.9f

.field private static final TARGET_EXPAND_OFFSET:I = 0x8


# instance fields
.field private mAnimColorEnable:Z

.field private mCurrentBrightness:F

.field private mDisabledColor:I

.field private mDrawableColor:I

.field private mExpandOffset:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mHasBrightness:Z

.field private mMaxBrightness:F

.field private mMaxExpandOffset:I

.field private mNormalAnimator:Landroid/animation/ValueAnimator;

.field private mOffset:I

.field private mPathInterpolator1:Landroid/view/animation/Interpolator;

.field private mPathInterpolator2:Landroid/view/animation/Interpolator;

.field private mPressedAnimator:Landroid/animation/ValueAnimator;

.field private mRadius:F

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41a80000    # 21.0f

    .line 82
    iput v0, p0, Lcom/color/support/widget/ColorButton;->mRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/color/support/widget/ColorButton;->mCurrentBrightness:F

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/color/support/widget/ColorButton;->mExpandOffset:I

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorButton;->mTmpRect:Landroid/graphics/Rect;

    .line 120
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 121
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorButton:[I

    .line 122
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 127
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorButton_animColorEnable:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorButton;->mAnimColorEnable:Z

    .line 128
    iget-boolean p3, p0, Lcom/color/support/widget/ColorButton;->mAnimColorEnable:Z

    if-eqz p3, :cond_0

    .line 129
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorButton_expandOffset:I

    const/16 v1, 0x8

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    float-to-double v1, p3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p3, v1

    .line 130
    iput p3, p0, Lcom/color/support/widget/ColorButton;->mMaxExpandOffset:I

    .line 131
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorButton_brightness:I

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorButton;->mMaxBrightness:F

    .line 132
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorButton_drawableRadius:I

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorButton;->mRadius:F

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_btn_drawable_color_disabled:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 134
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorButton_disabledColor:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorButton;->mDisabledColor:I

    .line 135
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, p3, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    .line 136
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorButton_drawableColor:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorButton;->mDrawableColor:I

    .line 137
    invoke-direct {p0}, Lcom/color/support/widget/ColorButton;->startAnimColorMode()V

    .line 139
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorButton;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/color/support/widget/ColorButton;->mCurrentBrightness:F

    return p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorButton;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/color/support/widget/ColorButton;->mExpandOffset:I

    return p1
.end method

.method private animateToNormal()V
    .locals 6

    .line 228
    iget-boolean v0, p0, Lcom/color/support/widget/ColorButton;->mHasBrightness:Z

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorButton;->cancelAnimator()V

    .line 232
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 233
    new-array v2, v0, [F

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mMaxBrightness:F

    aput v3, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "brightnessHolder"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 235
    new-array v3, v0, [F

    iget v5, p0, Lcom/color/support/widget/ColorButton;->mMaxExpandOffset:I

    int-to-float v5, v5

    aput v5, v3, v1

    const/4 v5, 0x0

    aput v5, v3, v4

    const-string v5, "expandHolder"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 237
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    aput-object v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    .line 239
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/color/support/widget/ColorButton;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/support/widget/ColorButton$2;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorButton$2;-><init>(Lcom/color/support/widget/ColorButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 254
    iput-boolean v1, p0, Lcom/color/support/widget/ColorButton;->mHasBrightness:Z

    return-void
.end method

.method private animateToPressed()V
    .locals 6

    .line 196
    iget-boolean v0, p0, Lcom/color/support/widget/ColorButton;->mHasBrightness:Z

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorButton;->cancelAnimator()V

    .line 200
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 201
    new-array v2, v0, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mMaxBrightness:F

    aput v3, v2, v1

    const-string v3, "brightnessHolder"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 203
    new-array v3, v0, [F

    const/4 v5, 0x0

    aput v5, v3, v4

    iget v5, p0, Lcom/color/support/widget/ColorButton;->mMaxExpandOffset:I

    int-to-float v5, v5

    aput v5, v3, v1

    const-string v5, "expandHolder"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 205
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v4

    aput-object v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 206
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/color/support/widget/ColorButton;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/support/widget/ColorButton$1;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorButton$1;-><init>(Lcom/color/support/widget/ColorButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    iput-boolean v1, p0, Lcom/color/support/widget/ColorButton;->mHasBrightness:Z

    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object p0, p0, Lcom/color/support/widget/ColorButton;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private getAnimatorColor(I)I
    .locals 3

    .line 273
    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget p0, p0, Lcom/color/support/widget/ColorButton;->mDisabledColor:I

    return p0

    .line 276
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 277
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 278
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 279
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float v0, v0

    .line 280
    iget p0, p0, Lcom/color/support/widget/ColorButton;->mCurrentBrightness:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int p0, v2

    const/16 v2, 0xff

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    if-le p0, v2, :cond_3

    move p0, v2

    .line 286
    :cond_3
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private startAnimColorMode()V
    .locals 5

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 149
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 150
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v3, 0x3f1eb852    # 0.62f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/color/support/widget/ColorButton;->mOffset:I

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 154
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorButton;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    .line 155
    iget v0, p0, Lcom/color/support/widget/ColorButton;->mMaxExpandOffset:I

    iput v0, p0, Lcom/color/support/widget/ColorButton;->mOffset:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    .line 182
    iget-boolean v0, p0, Lcom/color/support/widget/ColorButton;->mAnimColorEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/color/support/widget/ColorButton;->animateToNormal()V

    goto :goto_1

    .line 186
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorButton;->animateToPressed()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 161
    iget-boolean v0, p0, Lcom/color/support/widget/ColorButton;->mAnimColorEnable:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v1, p0, Lcom/color/support/widget/ColorButton;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorButton;->mDrawableColor:I

    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorButton;->getAnimatorColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcom/color/support/widget/ColorButton;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/color/support/widget/ColorButton;->mExpandOffset:I

    rsub-int/lit8 v3, v2, 0x0

    iget v4, p0, Lcom/color/support/widget/ColorButton;->mOffset:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v2, v2, 0x0

    add-int/2addr v2, v4

    .line 167
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 168
    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mExpandOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 169
    iget-object v1, p0, Lcom/color/support/widget/ColorButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorButton;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mExpandOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 171
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorButton;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/color/support/widget/ColorButton;->mRadius:F

    invoke-virtual {v1, v2, v3}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/color/support/widget/ColorButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAnimColorEnable(Z)V
    .locals 0

    .line 295
    iput-boolean p1, p0, Lcom/color/support/widget/ColorButton;->mAnimColorEnable:Z

    return-void
.end method
