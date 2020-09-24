.class public Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;
.super Landroid/view/View;
.source "ColorAbsorbSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;,
        Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;,
        Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSORB_RATIO:F = 0.009f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAbsorbRatio:F

.field private mAbsorbValues:[F

.field private mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundHighlightColor:I

.field private mBackgroundRadius:F

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCurBackgroundColor:I

.field private mCurBackgroundRadius:F

.field private mCurThumbInRadius:F

.field private mCurThumbOutRadius:F

.field private mCurThumbShadowRadius:I

.field private mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

.field private mFastMoveScaleOffsetX:F

.field private final mFastMoveSpring:Lcom/facebook/rebound/Spring;

.field private mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mIsAbsorb:Z

.field private mIsDragging:Z

.field private mLastX:F

.field private mMax:I

.field private mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mShouldCalculateThumbX:Z

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbInRadius:I

.field private mThumbOffsetX:F

.field private mThumbOutRadius:F

.field private mThumbScaleInRadius:F

.field private mThumbScaleOutRadius:F

.field private mThumbShadowColor:I

.field private mThumbShadowRadius:I

.field private mTouchAnimator:Landroid/animation/AnimatorSet;

.field private mTouchDownX:F

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 149
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorAbsorbSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    .line 99
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    const/16 v1, 0x64

    .line 100
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    .line 101
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 112
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    const v1, 0x3c1374bc    # 0.009f

    .line 115
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbRatio:F

    .line 126
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 127
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 128
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 132
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    .line 165
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 166
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 167
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 168
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbRadius:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbInRadius:I

    .line 169
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbScaleRadius:I

    const v1, 0x406ae148    # 3.67f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleInRadius:F

    .line 170
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressRadius:I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    .line 171
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressScaleRadius:I

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleOutRadius:F

    .line 172
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_0

    .line 173
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 175
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, p3, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    .line 176
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_progress_color_disabled:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 175
    invoke-static {p1, p3}, Lcom/color/support/util/ColorStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 178
    :goto_0
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarBackgroundColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 179
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarBackgroundRadius:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    .line 181
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_background_highlight_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundHighlightColor:I

    .line 182
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbShadowRadius:I

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    .line 183
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_thumb_shadow_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowColor:I

    .line 184
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->initView()V

    .line 187
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->ensureThumb()V

    .line 188
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->initAnimator()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    return p0
.end method

.method static synthetic access$002(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    .line 92
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    return p1
.end method

.method static synthetic access$1000(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    return p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    .line 92
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    return p0
.end method

.method static synthetic access$202(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    .line 92
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbInRadius:I

    return p0
.end method

.method static synthetic access$402(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    .line 92
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleInRadius:F

    return p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    .line 92
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleOutRadius:F

    return p0
.end method

.method static synthetic access$802(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 558
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private dpToPx(F)F
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private ensureThumb()V
    .locals 1

    .line 265
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    .line 266
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbInRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    .line 267
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    return-void
.end method

.method private getColor(Landroid/content/res/ColorStateList;I)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getDrawableState()[I

    move-result-object p0

    .line 310
    invoke-virtual {p1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method private getEnd()I
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method private getProgressLimit(I)I
    .locals 0

    .line 568
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getStart()I
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method private initAnimator()V
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 193
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 218
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 221
    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x73

    .line 222
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    new-instance v2, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$2;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$2;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    new-array v2, v0, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    aput v8, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 236
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x57

    .line 237
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    new-instance v4, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$3;

    invoke-direct {v4, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$3;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    new-array v0, v0, [I

    aput v3, v0, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    aput v3, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xca

    .line 250
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 251
    new-instance v3, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;

    invoke-direct {v3, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 258
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 259
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    .line 274
    new-instance v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    .line 275
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 277
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 281
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 446
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 447
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v2, v1, v0

    .line 450
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 451
    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    .line 452
    iput v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 454
    iput v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_1
    sub-float p1, v2, p1

    add-float/2addr p1, v0

    .line 456
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_2
    cmpg-float v3, p1, v0

    if-gez v3, :cond_3

    .line 460
    iput v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_3
    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    .line 462
    iput v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_4
    sub-float/2addr p1, v0

    .line 464
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 468
    :goto_0
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 469
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 470
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    .line 472
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    if-eq p1, v0, :cond_5

    .line 473
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 474
    invoke-interface {p1, p0, v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V

    :cond_5
    return-void
.end method

.method private releaseAnim()V
    .locals 9

    .line 586
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 590
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    .line 591
    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbInRadius:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "radiusIn"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 592
    new-array v2, v0, [F

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    aput v5, v2, v3

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    aput v5, v2, v4

    const-string v5, "radiusOut"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 593
    new-array v5, v0, [I

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    aput v6, v5, v3

    aput v3, v5, v4

    const-string v6, "thumbShadowRadius"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 594
    new-array v6, v0, [F

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    aput v7, v6, v3

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    aput v7, v6, v4

    const-string v7, "backgroundRadius"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 595
    iget-object v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 596
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 597
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 598
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 610
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;)V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 480
    invoke-virtual {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setPressed(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStartTrackingTouch()V

    .line 482
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 2

    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 549
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 551
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 553
    :cond_1
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method

.method private touchAnim()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 582
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 487
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float v0, p1, v0

    .line 488
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 492
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 495
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 496
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 498
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbValues:[F

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 499
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbRatio:F

    mul-float/2addr v0, v2

    .line 501
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v4

    .line 502
    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float v5, p1, v5

    cmpl-float v5, v5, v1

    const/4 v6, 0x0

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v6

    .line 503
    :goto_0
    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float/2addr p1, v7

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v6

    .line 504
    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbValues:[F

    array-length v7, v1

    :goto_2
    if-ge v6, v7, :cond_9

    aget v8, v1, v6

    mul-float/2addr v8, v2

    if-eqz v4, :cond_3

    sub-float v8, v2, v8

    .line 509
    :cond_3
    iget v9, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    sub-float v10, v8, v0

    cmpg-float v10, v9, v10

    if-ltz v10, :cond_8

    add-float v10, v8, v0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v5, :cond_5

    cmpl-float v0, v9, v8

    if-lez v0, :cond_5

    .line 514
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 515
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_9

    .line 516
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    cmpg-float p1, p1, v8

    if-gez p1, :cond_9

    .line 517
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 518
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    cmpg-float v0, v9, v8

    if-gez v0, :cond_7

    .line 522
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 523
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_9

    .line 524
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float p1, p1, v8

    if-lez p1, :cond_9

    .line 525
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 526
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 533
    :cond_9
    :goto_4
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 534
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 535
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    .line 537
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    if-eq p1, v0, :cond_a

    .line 538
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_a

    .line 539
    invoke-interface {p1, p0, v0, v3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V

    .line 543
    :cond_a
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 544
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->startFastMoveAnimation(F)V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    .line 802
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 794
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    return p0
.end method

.method public getThumbCenter()F
    .locals 4

    .line 370
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 373
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 375
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    sub-float/2addr v1, v2

    goto :goto_0

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 378
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    add-float/2addr v1, v2

    .line 380
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v3

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v3, p0

    int-to-float p0, v3

    add-float/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 855
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getLayoutDirection()I

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

.method protected onDetachedFromWindow()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 628
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    .line 315
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    .line 316
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    sub-float/2addr v2, v3

    .line 318
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    add-float/2addr v3, v4

    .line 319
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 320
    iget-object v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v6, v7

    .line 321
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v7, v8

    .line 320
    invoke-virtual {v5, v2, v6, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    iget-object v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 324
    iget-boolean v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mShouldCalculateThumbX:Z

    if-eqz v2, :cond_0

    .line 325
    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    const/4 v2, 0x0

    .line 326
    iput-boolean v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mShouldCalculateThumbX:Z

    :cond_0
    if-eqz v1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 335
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v3

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 336
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v4, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-direct {p0, v3, v4}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getColor(Landroid/content/res/ColorStateList;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 340
    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    sub-float v5, v1, v4

    add-float/2addr v4, v1

    .line 342
    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    sub-float v7, v1, v6

    add-float/2addr v1, v6

    .line 345
    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    iget v8, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleInRadius:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v9

    mul-float/2addr v8, v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    sub-float/2addr v3, v8

    sub-float/2addr v5, v8

    sub-float/2addr v7, v8

    goto :goto_1

    :cond_2
    sub-float/2addr v2, v8

    sub-float/2addr v4, v8

    sub-float/2addr v1, v8

    :goto_1
    move v9, v2

    move v2, v1

    move v1, v7

    move v7, v3

    .line 355
    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    sub-int/2addr v3, v6

    int-to-float v8, v3

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    add-int/2addr v3, v6

    int-to-float v10, v3

    int-to-float v11, v6

    int-to-float v12, v6

    iget-object v13, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 358
    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v7, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {p0, v6, v7}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    sub-float v8, v3, v6

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v12, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    add-float v10, v3, v12

    iget-object v13, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v1

    move v9, v2

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 361
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    sub-float v8, v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v12, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    add-float v10, v1, v12

    iget-object v13, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    move v9, v4

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 287
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 288
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 290
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    move p2, v1

    .line 294
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 573
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 615
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 616
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 386
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    goto/16 :goto_1

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 400
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 401
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    if-nez v0, :cond_2

    .line 402
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    goto/16 :goto_1

    .line 405
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 406
    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 407
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    .line 408
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    .line 409
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 413
    :cond_3
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 416
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 417
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    .line 418
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 419
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 420
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->touchAnim()V

    .line 421
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    goto :goto_1

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 428
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 429
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStopTrackingTouch()V

    .line 430
    invoke-virtual {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 432
    :cond_6
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 433
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStartTrackingTouch()V

    .line 434
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 435
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStopTrackingTouch()V

    .line 438
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->releaseAnim()V

    goto :goto_1

    .line 392
    :cond_8
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchDownX:F

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    .line 395
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 396
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    :goto_1
    return v2
.end method

.method public setAbsorbRatio(F)V
    .locals 0

    .line 836
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbRatio:F

    return-void
.end method

.method public varargs setAbsorbValues([F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 847
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbValues:[F

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0

    .line 866
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    .line 867
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->initAnimator()V

    .line 868
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 815
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    if-gt v0, p1, :cond_0

    .line 818
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    return-void

    .line 816
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "progress cannot be greater than max"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 813
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max cannot be greater than max"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 784
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    const/4 p1, 0x1

    .line 785
    iput-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mShouldCalculateThumbX:Z

    .line 786
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void

    .line 782
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "progress must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
