.class public Lcom/color/support/widget/seekbar/ColorSeekBar;
.super Landroid/view/View;
.source "ColorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;,
        Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;,
        Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field private static final DIRECTION_180:I = 0xb4

.field private static final DIRECTION_90:I = 0x5a

.field public static final MOVE_BY_DEFAULT:I = 0x0

.field public static final MOVE_BY_FINGER:I = 0x1

.field private static final TOUCH_ANIM_DURATION:I = 0x96


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundHighlightColor:I

.field private mBackgroundRadius:F

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCurBackgroundColor:I

.field private mCurBackgroundRadius:F

.field private mCurProgressRadius:F

.field private mCurThumbInRadius:F

.field private mCurThumbOutRadius:F

.field private mCurThumbShadowRadius:I

.field private mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;

.field private mFastMoveScaleOffsetX:F

.field private final mFastMoveSpring:Lcom/facebook/rebound/Spring;

.field private mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mIsDragging:Z

.field private mLastX:F

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mMax:I

.field private mMoveType:I

.field private mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressRadius:F

.field private mProgressRect:Landroid/graphics/RectF;

.field private mProgressScaleRadius:F

.field private mSecondaryProgress:I

.field private mSecondaryProgressColor:Landroid/content/res/ColorStateList;

.field private mSecondaryProgressRect:Landroid/graphics/RectF;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mStartDragging:Z

.field private mTempRect:Landroid/graphics/RectF;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbInRadius:F

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

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 170
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchSlop:I

    .line 114
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 115
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    const/16 v1, 0x64

    .line 116
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    .line 117
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mIsDragging:Z

    .line 118
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mStartDragging:Z

    .line 130
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 131
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 132
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgressRect:Landroid/graphics/RectF;

    .line 141
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    .line 143
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    .line 154
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 155
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 156
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 186
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 187
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 188
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 189
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbInRadius:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbInRadius:F

    .line 190
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbInScaleRadius:I

    const v1, 0x406ae148    # 3.67f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbScaleInRadius:F

    .line 191
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbOutRadius:I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbOutRadius:F

    .line 192
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbOutScaleRadius:I

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbScaleOutRadius:F

    .line 194
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarProgressScaleRadius:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressScaleRadius:F

    .line 195
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_0

    .line 196
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 198
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, p3, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    .line 199
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_progress_color_disabled:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 198
    invoke-static {p1, p3}, Lcom/color/support/util/ColorStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 201
    :goto_0
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarProgressRadius:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRadius:F

    .line 202
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarBackgroundColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 203
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarBackgroundRadius:I

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    .line 204
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarSecondaryProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgressColor:Landroid/content/res/ColorStateList;

    .line 205
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_background_highlight_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundHighlightColor:I

    .line 206
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_seekbar_thumb_shadow_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowColor:I

    .line 207
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSeekBar_colorSeekBarThumbShadowRadius:I

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorSeekBar;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    .line 208
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->initView()V

    .line 211
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->ensureThumb()V

    .line 212
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/seekbar/ColorSeekBar;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveScaleOffsetX:F

    return p0
.end method

.method static synthetic access$002(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveScaleOffsetX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/color/support/widget/seekbar/ColorSeekBar;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbShadowRadius:I

    return p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurBackgroundRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/color/support/widget/seekbar/ColorSeekBar;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    return p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/seekbar/ColorSeekBar;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    return p0
.end method

.method static synthetic access$202(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/color/support/widget/seekbar/ColorSeekBar;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRadius:F

    return p0
.end method

.method static synthetic access$402(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbInRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/color/support/widget/seekbar/ColorSeekBar;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbInRadius:F

    return p0
.end method

.method static synthetic access$602(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbOutRadius:F

    return p1
.end method

.method static synthetic access$700(Lcom/color/support/widget/seekbar/ColorSeekBar;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbOutRadius:F

    return p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/seekbar/ColorSeekBar;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbScaleInRadius:F

    return p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/seekbar/ColorSeekBar;)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbScaleOutRadius:F

    return p0
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private dpToPx(F)F
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getResources()Landroid/content/res/Resources;

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

    .line 216
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    .line 217
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbInRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbInRadius:F

    .line 218
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbOutRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbOutRadius:F

    .line 219
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurBackgroundRadius:F

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbShadowRadius:I

    return-void
.end method

.method private getEnd()I
    .locals 0

    .line 340
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method private getProgressLimit(I)I
    .locals 0

    .line 607
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getStart()I
    .locals 0

    .line 336
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method private initAnimation()V
    .locals 9

    .line 240
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 241
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorSeekBar$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$1;-><init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 267
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 270
    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x73

    .line 271
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    new-instance v2, Lcom/color/support/widget/seekbar/ColorSeekBar$2;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$2;-><init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    new-array v2, v0, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    aput v8, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x57

    .line 287
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    new-instance v4, Lcom/color/support/widget/seekbar/ColorSeekBar$3;

    invoke-direct {v4, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$3;-><init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    new-array v0, v0, [I

    aput v3, v0, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    aput v3, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xca

    .line 301
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 302
    new-instance v3, Lcom/color/support/widget/seekbar/ColorSeekBar$4;

    invoke-direct {v3, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$4;-><init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 308
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 309
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 310
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchSlop:I

    .line 226
    new-instance v0, Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;-><init>(Lcom/color/support/widget/seekbar/ColorSeekBar;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;

    .line 227
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 229
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorSeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 232
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 492
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 493
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 494
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressScaleRadius:F

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    goto :goto_0

    .line 497
    :cond_0
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressScaleRadius:F

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 499
    :goto_0
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgressLimit(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 500
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    if-eq v0, p1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 502
    invoke-interface {v0, p0, p1, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    return-void
.end method

.method private releaseAnim()V
    .locals 10

    .line 626
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 630
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    .line 631
    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbInRadius:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbInRadius:F

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "radiusIn"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 632
    new-array v2, v0, [F

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbOutRadius:F

    aput v5, v2, v3

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbOutRadius:F

    aput v5, v2, v4

    const-string v5, "radiusOut"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 633
    new-array v5, v0, [F

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    aput v6, v5, v3

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRadius:F

    aput v6, v5, v4

    const-string v6, "progress"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 634
    new-array v6, v0, [I

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbShadowRadius:I

    aput v7, v6, v3

    aput v3, v6, v4

    const-string v7, "thumbShadowRadius"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 635
    new-array v7, v0, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurBackgroundRadius:F

    aput v8, v7, v3

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    aput v8, v7, v4

    const-string v8, "backgroundRadius"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 636
    iget-object v8, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v3

    aput-object v2, v9, v4

    aput-object v5, v9, v0

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    aput-object v7, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 637
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 638
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 639
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorSeekBar$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$5;-><init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 652
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 509
    invoke-virtual {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setPressed(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->onStartTrackingTouch()V

    .line 511
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 2

    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 588
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 590
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 592
    :cond_1
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method

.method private touchAnim()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 622
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 564
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mLastX:F

    sub-float v0, p1, v0

    .line 565
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 569
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    div-float/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v2, v0

    .line 570
    invoke-direct {p0, v2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgressLimit(I)I

    move-result v0

    .line 572
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 573
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 574
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    .line 576
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    if-eq v1, v0, :cond_1

    .line 577
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mLastX:F

    .line 578
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 579
    invoke-interface {p1, p0, v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 583
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->startFastMoveAnimation(F)V

    return-void
.end method

.method private trackTouchEventByFinger(Landroid/view/MotionEvent;)V
    .locals 5

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 523
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getWidth()I

    move-result p1

    .line 524
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getEnd()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressScaleRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 528
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingLeft()I

    move-result p1

    if-ge v0, p1, :cond_1

    goto :goto_2

    :cond_1
    sub-int p1, v1, v0

    .line 534
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_1

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingLeft()I

    move-result v2

    if-ge v0, v2, :cond_3

    :goto_0
    move v3, v4

    goto :goto_2

    .line 540
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_4

    goto :goto_2

    .line 543
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    :goto_1
    int-to-float p1, p1

    int-to-float v1, v1

    div-float v3, p1, v1

    .line 548
    :goto_2
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    .line 550
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 551
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgressLimit(I)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 552
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    .line 554
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    if-eq p1, v1, :cond_5

    int-to-float p1, v0

    .line 555
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mLastX:F

    .line 556
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 557
    invoke-interface {p1, p0, v1, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    .line 842
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 834
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    return p0
.end method

.method public getSecondaryProgress()I
    .locals 0

    .line 889
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 897
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 898
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getLayoutDirection()I

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

    .line 666
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mAccessibilityEventSender:Lcom/color/support/widget/seekbar/ColorSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 671
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    .line 345
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v2}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    sub-float v7, v1, v2

    .line 347
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    add-float v8, v1, v2

    .line 348
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 349
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v3, v4

    .line 350
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v4, v5

    .line 349
    invoke-virtual {v2, v7, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 351
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurBackgroundRadius:F

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 358
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 360
    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    sub-float v3, v2, v3

    .line 362
    iget v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v1, v4

    div-float/2addr v5, v1

    sub-float v1, v2, v5

    move v11, v2

    move v10, v3

    move v12, v10

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    .line 366
    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    int-to-float v5, v4

    div-float/2addr v2, v5

    add-float/2addr v2, v3

    .line 368
    iget v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v1, v4

    div-float/2addr v5, v1

    add-float v1, v3, v5

    move v11, v2

    move v12, v11

    move v10, v3

    move v2, v1

    move v1, v10

    .line 372
    :goto_0
    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgressColor:Landroid/content/res/ColorStateList;

    sget v5, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_SECONDARYPROGRESS_COLOR:I

    invoke-static {p0, v4, v5}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgressRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 374
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgressRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 375
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isLayoutRtl()Z

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    mul-float/2addr v2, v13

    sub-float v2, v8, v2

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 377
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 378
    iget v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    if-ne v1, v2, :cond_2

    .line 379
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    mul-float/2addr v3, v13

    add-float/2addr v3, v7

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 380
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 383
    :cond_1
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    mul-float/2addr v3, v13

    add-float/2addr v3, v7

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 384
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 385
    iget v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    if-ne v1, v2, :cond_2

    .line 386
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    mul-float/2addr v2, v13

    sub-float v2, v8, v2

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 387
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 391
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v3, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {p0, v2, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v10, v2, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 393
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 394
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    sub-float v2, v8, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mBackgroundRadius:F

    sub-float/2addr v8, v4

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    add-float/2addr v8, v4

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 396
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 398
    :cond_3
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    sub-float v2, v10, v2

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurProgressRadius:F

    add-float/2addr v10, v4

    iget-object v4, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v10, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 399
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 402
    :goto_2
    iget v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbShadowRadius:I

    int-to-float v2, v1

    sub-float v2, v12, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    .line 404
    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbInRadius:F

    sub-float v4, v12, v3

    add-float/2addr v3, v12

    .line 406
    iget v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbOutRadius:F

    sub-float v6, v12, v5

    add-float/2addr v12, v5

    .line 409
    iget v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveScaleOffsetX:F

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbScaleInRadius:F

    mul-float/2addr v7, v13

    mul-float/2addr v7, v13

    mul-float/2addr v7, v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    sub-float/2addr v2, v7

    sub-float/2addr v4, v7

    sub-float/2addr v6, v7

    goto :goto_3

    :cond_4
    sub-float/2addr v1, v7

    sub-float/2addr v3, v7

    sub-float/2addr v12, v7

    :goto_3
    move v13, v3

    move v11, v4

    move v10, v6

    move v4, v1

    .line 419
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbShadowRadius:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbShadowRadius:I

    add-int/2addr v1, v5

    int-to-float v6, v1

    int-to-float v7, v5

    int-to-float v8, v5

    iget-object v14, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 423
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v3, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {p0, v2, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbOutRadius:F

    sub-float v3, v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbOutRadius:F

    add-float v5, v1, v7

    iget-object v8, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v4, v12

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 427
    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbInRadius:F

    sub-float v2, v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mCurThumbInRadius:F

    add-float v4, v1, v6

    iget-object v7, v0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v11

    move v3, v13

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 323
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 324
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 325
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 326
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v1, :cond_1

    :goto_0
    move p2, v1

    .line 332
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mStartDragging:Z

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mIsDragging:Z

    .line 612
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mStartDragging:Z

    .line 613
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mIsDragging:Z

    .line 657
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mStartDragging:Z

    .line 658
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 434
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 437
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    goto/16 :goto_1

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 448
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mStartDragging:Z

    if-eqz v0, :cond_4

    .line 449
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMoveType:I

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 454
    :cond_2
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->trackTouchEventByFinger(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 451
    :cond_3
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 460
    :cond_4
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 463
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 464
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_a

    .line 465
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 467
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->touchAnim()V

    .line 468
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mLastX:F

    goto :goto_1

    .line 474
    :cond_6
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 475
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_7

    .line 476
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->onStopTrackingTouch()V

    .line 477
    invoke-virtual {p0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 479
    :cond_7
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 480
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->onStartTrackingTouch()V

    .line 481
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 482
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->onStopTrackingTouch()V

    .line 485
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->releaseAnim()V

    goto :goto_1

    .line 439
    :cond_9
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mIsDragging:Z

    .line 440
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mStartDragging:Z

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mTouchDownX:F

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mLastX:F

    .line 443
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 444
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_1
    return v2
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 317
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 318
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->initAnimation()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 854
    :cond_0
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 855
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    .line 856
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 857
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    return-void
.end method

.method public setMoveType(I)V
    .locals 0

    .line 907
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMoveType:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 818
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 819
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    .line 820
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mProgress:I

    if-eq v0, p1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mOnSeekBarChangeListener:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 822
    invoke-interface {v0, p0, p1, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V

    .line 825
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 879
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar;->mSecondaryProgress:I

    .line 880
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    :cond_0
    return-void
.end method
