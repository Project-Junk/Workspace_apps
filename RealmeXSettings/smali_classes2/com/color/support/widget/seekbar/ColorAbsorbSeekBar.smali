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
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

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

    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbInRadius:I

    .line 169
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbScaleRadius:I

    const v0, 0x406ae148    # 3.67f

    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleInRadius:F

    .line 170
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressRadius:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    .line 171
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressScaleRadius:I

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbScaleOutRadius:F

    .line 172
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_0

    .line 173
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 175
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, p3}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result p1

    .line 176
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_progress_color_disabled:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 175
    invoke-static {p1, p3}, Lcom/color/support/c/i;->a(II)Landroid/content/res/ColorStateList;

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
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private dpToPx(F)F
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private ensureThumb()V
    .locals 1

    .line 270
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    .line 271
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbInRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    .line 272
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    return-void
.end method

.method private getColor(Landroid/content/res/ColorStateList;I)I
    .locals 1

    if-nez p1, :cond_0

    return p2

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 315
    invoke-virtual {p1, v0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getEnd()I
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getProgressLimit(I)I
    .locals 1

    .line 573
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getStart()I
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getPaddingLeft()I

    move-result v0

    return v0
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

    .line 223
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 226
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

    .line 227
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    new-instance v2, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$2;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$2;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    new-array v2, v0, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    aput v8, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 241
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x57

    .line 242
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    new-instance v4, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$3;

    invoke-direct {v4, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$3;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    new-array v0, v0, [I

    aput v3, v0, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    aput v3, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xca

    .line 255
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    new-instance v3, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;

    invoke-direct {v3, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    .line 279
    new-instance v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    .line 280
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 282
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 285
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 286
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 451
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 452
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v2, v1, v0

    .line 455
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 456
    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    .line 457
    iput v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 459
    iput v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_1
    sub-float p1, v2, p1

    add-float/2addr p1, v0

    .line 461
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_2
    cmpg-float v3, p1, v0

    if-gez v3, :cond_3

    .line 465
    iput v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_3
    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    .line 467
    iput v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    :cond_4
    sub-float/2addr p1, v0

    .line 469
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 473
    :goto_0
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 474
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 475
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    .line 477
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    if-eq p1, v0, :cond_5

    .line 478
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 479
    invoke-interface {p1, p0, v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V

    :cond_5
    return-void
.end method

.method private releaseAnim()V
    .locals 9

    .line 591
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 595
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    .line 596
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

    .line 597
    new-array v2, v0, [F

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    aput v5, v2, v3

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOutRadius:F

    aput v5, v2, v4

    const-string v5, "radiusOut"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 598
    new-array v5, v0, [I

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    aput v6, v5, v3

    aput v3, v5, v4

    const-string v6, "thumbShadowRadius"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 599
    new-array v6, v0, [F

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    aput v7, v6, v3

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    aput v7, v6, v4

    const-string v7, "backgroundRadius"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 600
    iget-object v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 601
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 603
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 615
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;)V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 643
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 485
    invoke-virtual {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setPressed(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStartTrackingTouch()V

    .line 487
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 2

    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 554
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void

    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 556
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void

    .line 558
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private touchAnim()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 492
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float v0, p1, v0

    .line 493
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 497
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 500
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 501
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 503
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbValues:[F

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    .line 504
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbRatio:F

    mul-float/2addr v0, v2

    .line 506
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v4

    .line 507
    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float v5, p1, v5

    cmpl-float v5, v5, v1

    const/4 v6, 0x0

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v6

    .line 508
    :goto_0
    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float/2addr p1, v7

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v6

    .line 509
    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbValues:[F

    array-length v7, v1

    :goto_2
    if-ge v6, v7, :cond_8

    aget v8, v1, v6

    mul-float/2addr v8, v2

    if-eqz v4, :cond_3

    sub-float v8, v2, v8

    .line 514
    :cond_3
    iget v9, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    sub-float v10, v8, v0

    cmpg-float v10, v9, v10

    if-ltz v10, :cond_7

    add-float v10, v8, v0

    cmpl-float v10, v9, v10

    if-gtz v10, :cond_7

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    cmpl-float v0, v9, v8

    if-lez v0, :cond_4

    .line 519
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 520
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_8

    .line 521
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    cmpg-float p1, p1, v8

    if-gez p1, :cond_8

    .line 522
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 523
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    cmpg-float v0, v9, v8

    if-gez v0, :cond_6

    .line 527
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 528
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_8

    .line 529
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float p1, p1, v8

    if-lez p1, :cond_8

    .line 530
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    .line 531
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 538
    :cond_8
    :goto_3
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 539
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    .line 540
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    .line 542
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    if-eq p1, v0, :cond_9

    .line 543
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_9

    .line 544
    invoke-interface {p1, p0, v0, v3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V

    .line 548
    :cond_9
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 549
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->startFastMoveAnimation(F)V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 799
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    return v0
.end method

.method public getThumbCenter()F
    .locals 5

    .line 375
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

    .line 378
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 380
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    sub-float/2addr v1, v2

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 383
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    add-float/2addr v1, v2

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 860
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 633
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    .line 320
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    .line 321
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    sub-float/2addr v2, v3

    .line 323
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

    .line 324
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

    .line 325
    iget-object v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v6, v7

    .line 326
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v7, v8

    .line 325
    invoke-virtual {v5, v2, v6, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurBackgroundRadius:F

    iget-object v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 329
    iget-boolean v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mShouldCalculateThumbX:Z

    if-eqz v2, :cond_0

    .line 330
    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbOffsetX:F

    const/4 v2, 0x0

    .line 331
    iput-boolean v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mShouldCalculateThumbX:Z

    :cond_0
    if-eqz v1, :cond_1

    .line 336
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

    .line 338
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

    .line 340
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

    .line 341
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v4, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-direct {p0, v3, v4}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getColor(Landroid/content/res/ColorStateList;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbShadowRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 345
    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbInRadius:F

    sub-float v5, v1, v4

    add-float/2addr v4, v1

    .line 347
    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mCurThumbOutRadius:F

    sub-float v7, v1, v6

    add-float/2addr v1, v6

    .line 350
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

    .line 360
    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
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

    .line 363
    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v7, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {p0, v6, v7}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
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

    .line 366
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
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

    .line 292
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 293
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 294
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 295
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    move p2, v1

    .line 299
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 578
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 620
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 621
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 391
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 395
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

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 405
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 406
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    if-nez v0, :cond_2

    .line 407
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    goto/16 :goto_1

    .line 410
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 411
    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 412
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsAbsorb:Z

    .line 413
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    .line 414
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 418
    :cond_3
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 421
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 422
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    .line 423
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 424
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 425
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->touchAnim()V

    .line 426
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    goto :goto_1

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 433
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStopTrackingTouch()V

    .line 435
    invoke-virtual {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 437
    :cond_6
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStartTrackingTouch()V

    .line 439
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 440
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->onStopTrackingTouch()V

    .line 443
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->releaseAnim()V

    goto :goto_1

    .line 397
    :cond_8
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mIsDragging:Z

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mTouchDownX:F

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mLastX:F

    .line 400
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 401
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    :goto_1
    return v2
.end method

.method public setAbsorbRatio(F)V
    .locals 0

    .line 841
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbRatio:F

    return-void
.end method

.method public varargs setAbsorbValues([F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 852
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mAbsorbValues:[F

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0

    .line 871
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mBackgroundRadius:F

    .line 872
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->initAnimator()V

    .line 873
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 878
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->releaseAnim()V

    .line 879
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 820
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    if-gt v0, p1, :cond_0

    .line 823
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mMax:I

    return-void

    .line 821
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress cannot be greater than max"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 818
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "max cannot be greater than max"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 789
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mProgress:I

    const/4 p1, 0x1

    .line 790
    iput-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->mShouldCalculateThumbX:Z

    .line 791
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void

    .line 787
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
