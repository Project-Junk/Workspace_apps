.class public Lcom/color/support/widget/ColorSwitch;
.super Landroid/widget/CompoundButton;
.source "ColorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;
    }
.end annotation


# instance fields
.field private mBarCheckedColor:I

.field private mBarCheckedDisabledColor:I

.field private mBarColor:I

.field private mBarHeight:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarUnCheckedColor:I

.field private mBarUncheckedDisabledColor:I

.field private mBarWidth:I

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mCirclePadding:I

.field private mCircleScale:F

.field private mCircleScaleX:F

.field private mCircleTranslation:I

.field private mDefaultTranslation:I

.field private mEnableHapticFeedback:Z

.field private mInnerCircleAlpha:F

.field private mInnerCircleCheckedDisabledColor:I

.field private mInnerCircleColor:I

.field private mInnerCirclePaint:Landroid/graphics/Paint;

.field private mInnerCircleRectF:Landroid/graphics/RectF;

.field private mInnerCircleUncheckedDisbaledColor:I

.field private mInnerCircleWidth:I

.field private mIsAttachedToWindow:Z

.field private mIsLaidOut:Z

.field private mIsLoading:Z

.field private mIsLoadingStyle:Z

.field private mIsMeasured:Z

.field private mIsThemedEnabled:Z

.field private mLoadingAlpha:F

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadingRotation:F

.field private mLoadingScale:F

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mOnLoadingStateChangedListener:Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;

.field private mOuterCircleCheckedDisabledColor:I

.field private mOuterCircleColor:I

.field private mOuterCirclePaint:Landroid/graphics/Paint;

.field private mOuterCircleRectF:Landroid/graphics/RectF;

.field private mOuterCircleStrokeWidth:I

.field private mOuterCircleUncheckedDisabledColor:I

.field private mOuterCircleWidth:I

.field private mPadding:I

.field private mShouldPlaySound:Z

.field private mSoundIdOff:I

.field private mSoundIdOn:I

.field private mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

.field private mStartLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mStopLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mSwitchLoadingStr:Ljava/lang/String;

.field private mSwitchOffStr:Ljava/lang/String;

.field private mSwitchOnStr:Ljava/lang/String;

.field private mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mToggleAnimator:Landroid/animation/AnimatorSet;

.field private mUncheckedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    .line 85
    iput v0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScale:F

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    .line 93
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoadingStyle:Z

    .line 110
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    .line 120
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsMeasured:Z

    .line 169
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setSoundEffectsEnabled(Z)V

    .line 170
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 171
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 172
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorSwitchStyle:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 173
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    .line 174
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarHeight:I

    .line 175
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleStrokeWidth:I

    .line 176
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barUncheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarUnCheckedColor:I

    .line 177
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barCheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarCheckedColor:I

    .line 178
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    .line 179
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleColor:I

    .line 180
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleWidth:I

    .line 181
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleColor:I

    .line 182
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_circlePadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mCirclePadding:I

    .line 183
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_loadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 184
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarUncheckedDisabledColor:I

    .line 185
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarCheckedDisabledColor:I

    .line 186
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleUncheckedDisbaledColor:I

    .line 187
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleCheckedDisabledColor:I

    .line 188
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleUncheckedDisabledColor:I

    .line 189
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleCheckedDisabledColor:I

    .line 191
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedCheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedUncheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingCheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 194
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 195
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iget p3, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mCirclePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    .line 198
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_switch_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    .line 200
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$bool;->color_switch_theme_enable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    .line 201
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->initPaint()V

    .line 202
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->initAnimator()V

    .line 204
    invoke-static {}, Lcom/color/support/util/ColorSoundLoadUtil;->getInstance()Lcom/color/support/util/ColorSoundLoadUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorSwitch;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    .line 205
    iget-object p2, p0, Lcom/color/support/widget/ColorSwitch;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    sget p3, Lcolor/support/v7/appcompat/R$raw;->color_switch_sound_on:I

    invoke-virtual {p2, p1, p3}, Lcom/color/support/util/ColorSoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->mSoundIdOn:I

    .line 206
    iget-object p2, p0, Lcom/color/support/widget/ColorSwitch;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    sget p3, Lcolor/support/v7/appcompat/R$raw;->color_switch_sound_off:I

    invoke-virtual {p2, p1, p3}, Lcom/color/support/util/ColorSoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mSoundIdOff:I

    .line 207
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$string;->switch_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOnStr:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$string;->switch_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOffStr:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$string;->switch_loading:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchLoadingStr:Ljava/lang/String;

    return-void
.end method

.method private animateWhenStateChanged(Z)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    .line 348
    invoke-static {v2, v1, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    .line 350
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "circleScaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x85

    .line 351
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 354
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xfa

    .line 355
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 357
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getCircleTranslation()I

    move-result v5

    .line 359
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->isRtlMode()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    :cond_0
    move v6, v7

    goto :goto_0

    .line 360
    :cond_1
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    .line 362
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    .line 364
    :goto_0
    new-array v8, v2, [I

    aput v5, v8, v7

    const/4 v5, 0x1

    aput v6, v8, v5

    const-string v6, "circleTranslation"

    invoke-static {p0, v6, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x17f

    .line 365
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 367
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getInnerCircleAlpha()F

    move-result v8

    if-eqz p1, :cond_3

    move v0, v1

    .line 369
    :cond_3
    new-array v1, v2, [F

    aput v8, v1, v7

    aput v0, v1, v5

    const-string v0, "innerCircleAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x64

    .line 370
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 372
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getBarColor()I

    move-result v1

    if-eqz p1, :cond_4

    .line 373
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarCheckedColor:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarUnCheckedColor:I

    .line 374
    :goto_1
    new-array v2, v2, [I

    aput v1, v2, v7

    aput p1, v2, v5

    const-string p1, "barColor"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    .line 375
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 377
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 380
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 382
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private backgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-object p0
.end method

.method private drawBar(Landroid/graphics/Canvas;)V
    .locals 11

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 424
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mBarCheckedDisabledColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mBarUncheckedDisabledColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarHeight:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 429
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v10, p0, Lcom/color/support/widget/ColorSwitch;->mBarPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawInnerCircle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 472
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScale:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 473
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 474
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleCheckedDisabledColor:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleUncheckedDisbaledColor:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 479
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 5

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 493
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingScale:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 494
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingRotation:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 495
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 499
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 501
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawOuterCircle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 435
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScale:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 436
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleCheckedDisabledColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleUncheckedDisabledColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 441
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThemedBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 402
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->backgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 403
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->drawableAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 404
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->mBarHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 405
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->backgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThemedLoading(Landroid/graphics/Canvas;)V
    .locals 7

    .line 505
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 509
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 510
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 511
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 512
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 513
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 515
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingRotation:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 516
    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 517
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawableAlpha()I
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private initAnimator()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->initStartLoadingAnimator()V

    .line 220
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->initStopLoadingAnimator()V

    .line 221
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->initThemedLoadingAnimator()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarPaint:Landroid/graphics/Paint;

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private initStartLoadingAnimator()V
    .locals 8

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 225
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 226
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    .line 227
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "circleScale"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1b1

    .line 229
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "loadingScale"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x226

    .line 233
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "loadingAlpha"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 236
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 240
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v4, 0x320

    .line 241
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 246
    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private initStopLoadingAnimator()V
    .locals 4

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 252
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    .line 254
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "loadingAlpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initThemedLoadingAnimator()V
    .locals 3

    .line 262
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 263
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 264
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0x320

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private isRtlMode()Z
    .locals 3

    .line 851
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 852
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method private performFeedBack()V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    const/4 v1, 0x0

    .line 290
    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    .line 291
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSwitch;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method private playSoundEffect(Z)V
    .locals 8

    .line 285
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mSoundUtil:Lcom/color/support/util/ColorSoundLoadUtil;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mSoundIdOn:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mSoundIdOff:I

    :goto_0
    move v2, p0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/color/support/util/ColorSoundLoadUtil;->play(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private setInnerCircleRectF()V
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleStrokeWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 485
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleStrokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 486
    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleStrokeWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 487
    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleStrokeWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 488
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setOuterCircleRectF()V
    .locals 6

    .line 448
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mCirclePadding:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 451
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    goto :goto_0

    .line 453
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mCirclePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 454
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_1

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mCirclePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 459
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    .line 461
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mCirclePadding:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 462
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 465
    :goto_1
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->mBarHeight:I

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 467
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public disableThemed()V
    .locals 1

    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    return-void
.end method

.method public enableThemed()V
    .locals 1

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 847
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBarColor()I
    .locals 0

    .line 761
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mBarColor:I

    return p0
.end method

.method public getCircleScale()F
    .locals 0

    .line 785
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScale:F

    return p0
.end method

.method public getCircleScaleX()F
    .locals 0

    .line 723
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    return p0
.end method

.method public getCircleTranslation()I
    .locals 0

    .line 704
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    return p0
.end method

.method public getInnerCircleAlpha()F
    .locals 0

    .line 742
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleAlpha:F

    return p0
.end method

.method public getLoadingAlpha()F
    .locals 0

    .line 823
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingAlpha:F

    return p0
.end method

.method public getLoadingRotation()F
    .locals 0

    .line 842
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingRotation:F

    return p0
.end method

.method public getLoadingScale()F
    .locals 0

    .line 804
    iget p0, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingScale:F

    return p0
.end method

.method public isLoading()Z
    .locals 0

    .line 669
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    return p0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSwitch;->mEnableHapticFeedback:Z

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 630
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 631
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 594
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 623
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsAttachedToWindow:Z

    .line 625
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLaidOut:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->drawThemedBackground(Landroid/graphics/Canvas;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->drawThemedLoading(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->setOuterCircleRectF()V

    .line 392
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->setInnerCircleRectF()V

    .line 393
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->drawBar(Landroid/graphics/Canvas;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->drawLoading(Landroid/graphics/Canvas;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->drawOuterCircle(Landroid/graphics/Canvas;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->drawInnerCircle(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 858
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 859
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 860
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 861
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOnStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOffStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOnStr:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOffStr:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 617
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 618
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 600
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 601
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->mPadding:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSwitch;->setMeasuredDimension(II)V

    .line 603
    iget-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->mIsMeasured:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 604
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->mIsMeasured:Z

    .line 605
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->isRtlMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    :goto_0
    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    goto :goto_1

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    :cond_2
    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    .line 610
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleAlpha:F

    .line 611
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarCheckedColor:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarUnCheckedColor:I

    :goto_3
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarColor:I

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 525
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->mShouldPlaySound:Z

    .line 526
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->mEnableHapticFeedback:Z

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoadingStyle:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->startLoading()V

    return v2

    .line 533
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    if-eqz v0, :cond_2

    return v2

    .line 536
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBarColor(I)V
    .locals 0

    .line 751
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mBarColor:I

    .line 752
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 319
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 320
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 323
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 325
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLaidOut:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_2

    .line 326
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->animateWhenStateChanged(Z)V

    goto :goto_5

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v0, v1

    goto :goto_0

    .line 329
    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleTranslation(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 331
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mDefaultTranslation:I

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleTranslation(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 333
    :goto_3
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_7

    .line 334
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarCheckedColor:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->mBarUnCheckedColor:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setBarColor(I)V

    .line 339
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mShouldPlaySound:Z

    if-eqz v0, :cond_9

    .line 340
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->playSoundEffect(Z)V

    .line 341
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->mShouldPlaySound:Z

    .line 343
    :cond_9
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->performFeedBack()V

    .line 344
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleScale(F)V
    .locals 0

    .line 770
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScale:F

    .line 771
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .locals 0

    .line 713
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mCircleScaleX:F

    .line 714
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .locals 0

    .line 694
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mCircleTranslation:I

    .line 695
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 776
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .locals 0

    .line 732
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mInnerCircleAlpha:F

    .line 733
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLaidOut()V
    .locals 1

    const/4 v0, 0x1

    .line 676
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLaidOut:Z

    return-void
.end method

.method public setLoadingAlpha(F)V
    .locals 0

    .line 813
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingAlpha:F

    .line 814
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingRotation(F)V
    .locals 0

    .line 832
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingRotation:F

    .line 833
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .locals 0

    .line 794
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->mLoadingScale:F

    .line 795
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoadingStyle:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/color/support/widget/ColorSwitch;->mOnLoadingStateChangedListener:Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .locals 0

    .line 642
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->mShouldPlaySound:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->mEnableHapticFeedback:Z

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    if-nez v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchLoadingStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    .line 552
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mOnLoadingStateChangedListener:Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;

    if-eqz v0, :cond_2

    .line 558
    invoke-interface {v0}, Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;->onStartLoading()V

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    :cond_3
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOffStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mSwitchOnStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 579
    :cond_3
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    if-eqz v0, :cond_5

    .line 580
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsThemedEnabled:Z

    if-nez v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 583
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleScale(F)V

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->mIsLoading:Z

    .line 585
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->toggle()V

    .line 586
    iget-object p0, p0, Lcom/color/support/widget/ColorSwitch;->mOnLoadingStateChangedListener:Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;

    if-eqz p0, :cond_5

    .line 587
    invoke-interface {p0}, Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;->onStopLoading()V

    :cond_5
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    return-void
.end method
