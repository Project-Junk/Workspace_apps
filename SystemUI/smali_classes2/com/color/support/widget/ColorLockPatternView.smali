.class public Lcom/color/support/widget/ColorLockPatternView;
.super Landroid/view/View;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;,
        Lcom/color/support/widget/ColorLockPatternView$SavedState;,
        Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;,
        Lcom/color/support/widget/ColorLockPatternView$DisplayMode;,
        Lcom/color/support/widget/ColorLockPatternView$CellState;,
        Lcom/color/support/widget/ColorLockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final DEBUG_A11Y:Z = false

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final FEEDBACK_MIN_SIZE:I = 0x1

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorLockPatternView"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimatingPeriodStart:J

.field private final mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

.field private mContext:Landroid/content/Context;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInnerDrawable:Landroid/graphics/drawable/Drawable;

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsLinearMotorVersion:Z

.field private mIsSetPassword:Z

.field private mOnPatternListener:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

.field private final mOuterCircleMaxAlpha:F

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathAlpha:F

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field private final mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

.field private final mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWongAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWrongAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathAlpha:F

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mDrawingProfilingStarted:Z

    .line 98
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/ColorLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x3

    .line 132
    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, Z

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 139
    iput v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    .line 140
    iput v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    .line 144
    sget-object v3, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    const/4 v3, 0x1

    .line 145
    iput-boolean v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mInputEnabled:Z

    .line 146
    iput-boolean v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    .line 147
    iput-boolean v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    .line 148
    iput-boolean v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    const v4, 0x3f19999a    # 0.6f

    .line 150
    iput v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mHitFactor:F

    .line 157
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 158
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 159
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 170
    iput-boolean v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mIsSetPassword:Z

    .line 629
    new-instance v4, Lcom/color/support/widget/ColorLockPatternView$3;

    invoke-direct {v4, p0}, Lcom/color/support/widget/ColorLockPatternView$3;-><init>(Lcom/color/support/widget/ColorLockPatternView;)V

    iput-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mWongAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 362
    invoke-static {p0, v1}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 363
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mContext:Landroid/content/Context;

    .line 364
    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->ColorLockPatternView:[I

    sget v5, Lcolor/support/v7/appcompat/R$attr;->colorLockPatternViewStyle:I

    invoke-virtual {p1, p2, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 366
    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorLockPatternView;->setClickable(Z)V

    .line 368
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 371
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorLockPatternView_colorRegularColor:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mRegularColor:I

    .line 372
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorLockPatternView_colorErrorColor:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mErrorColor:I

    .line 373
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorLockPatternView_colorSuccessColor:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mSuccessColor:I

    .line 375
    sget v4, Lcolor/support/v7/appcompat/R$styleable;->ColorLockPatternView_colorPathColor:I

    iget v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mRegularColor:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 376
    iget-object v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 380
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 382
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->lock_pattern_dot_line_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathWidth:I

    .line 383
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 384
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->lock_pattern_dot_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 386
    iget-object v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 387
    iget-object v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 389
    filled-new-array {v2, v2}, [I

    move-result-object v5

    const-class v6, Lcom/color/support/widget/ColorLockPatternView$CellState;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/color/support/widget/ColorLockPatternView$CellState;

    iput-object v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    move v5, v1

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v2, :cond_1

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_0

    .line 392
    iget-object v8, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    aget-object v8, v8, v5

    new-instance v9, Lcom/color/support/widget/ColorLockPatternView$CellState;

    invoke-direct {v9}, Lcom/color/support/widget/ColorLockPatternView$CellState;-><init>()V

    aput-object v9, v8, v7

    .line 393
    iget-object v8, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    aget-object v9, v8, v5

    aget-object v9, v9, v7

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    iput v10, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->radius:F

    .line 394
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    iput v5, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->row:I

    .line 395
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    iput v7, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->col:I

    .line 396
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    const v10, 0x3ecccccd    # 0.4f

    iput v10, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->alpha:F

    .line 397
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    iput v6, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->innerCircleAlpha:F

    .line 398
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    iput v0, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->innerCircleScale:F

    .line 399
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    iput v6, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->outerCircleAlpha:F

    .line 400
    aget-object v9, v8, v5

    aget-object v9, v9, v7

    iput v0, v9, Lcom/color/support/widget/ColorLockPatternView$CellState;->outerCircleScale:F

    .line 401
    aget-object v8, v8, v5

    aget-object v8, v8, v7

    iput-boolean v3, v8, Lcom/color/support/widget/ColorLockPatternView$CellState;->needDrawCircle:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_lock_pattern_inner_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_lock_pattern_outer_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 407
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->oppo_lock_pattern_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mViewWidth:I

    .line 408
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->oppo_lock_pattern_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mViewHeight:I

    .line 409
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorLockPatternView_colorOuterCircleMaxAlpha:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterCircleMaxAlpha:F

    const v0, 0x10c000d

    .line 411
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 412
    new-instance v0, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/color/support/widget/ColorLockPatternView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    .line 413
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 415
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    .line 416
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mIsLinearMotorVersion:Z

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorLockPatternView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathAlpha:F

    return p0
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorLockPatternView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorLockPatternView;)Ljava/util/ArrayList;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorLockPatternView;)[[Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    return-object p0
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorLockPatternView;I)F
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorLockPatternView;I)F
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/color/support/widget/ColorLockPatternView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareHeight:F

    return p0
.end method

.method static synthetic access$1400(Lcom/color/support/widget/ColorLockPatternView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mHitFactor:F

    return p0
.end method

.method static synthetic access$1500(Lcom/color/support/widget/ColorLockPatternView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    return p0
.end method

.method static synthetic access$1600(Lcom/color/support/widget/ColorLockPatternView;F)I
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->getRowHit(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/color/support/widget/ColorLockPatternView;F)I
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->getColumnHit(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorLockPatternView;)[[Lcom/color/support/widget/ColorLockPatternView$CellState;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorLockPatternView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->resetPattern()V

    return-void
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorLockPatternView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorLockPatternView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    return p0
.end method

.method private addCellToPattern(Lcom/color/support/widget/ColorLockPatternView$Cell;)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 774
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 776
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->startCellActivatedAnimation(Lcom/color/support/widget/ColorLockPatternView$Cell;)V

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 1242
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1243
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    div-float/2addr p1, p0

    const p0, 0x3e99999a    # 0.3f

    sub-float/2addr p1, p0

    const/high16 p0, 0x40800000    # 4.0f

    mul-float/2addr p1, p0

    const/4 p0, 0x0

    .line 1244
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private cancelLineAnimations()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1065
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    .line 1066
    iget-object v5, v4, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 1067
    iget-object v5, v4, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x1

    .line 1068
    iput v5, v4, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndX:F

    .line 1069
    iput v5, v4, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndY:F

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/color/support/widget/ColorLockPatternView$Cell;
    .locals 1

    .line 857
    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorLockPatternView;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 861
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    .line 866
    :cond_1
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    return-object v0

    .line 869
    :cond_2
    invoke-static {p2, p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->of(II)Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 664
    iget-object v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/color/support/widget/ColorLockPatternView$Cell;
    .locals 8

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->checkForNewHit(FF)Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 731
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 732
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 733
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 734
    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v0

    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 735
    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v2

    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 737
    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v3

    .line 738
    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v4

    .line 740
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 741
    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v3

    if-lez v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/2addr v3, v5

    .line 744
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 745
    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result p2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    add-int v4, p2, v1

    .line 748
    :cond_3
    invoke-static {v3, v4}, Lcom/color/support/widget/ColorLockPatternView$Cell;->of(II)Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 751
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    .line 752
    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 753
    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorLockPatternView;->addCellToPattern(Lcom/color/support/widget/ColorLockPatternView$Cell;)V

    .line 755
    :cond_5
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->addCellToPattern(Lcom/color/support/widget/ColorLockPatternView$Cell;)V

    .line 756
    iget-boolean p2, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_6

    .line 757
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->performHitFeedback()V

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 1

    .line 1269
    iget-object p5, p0, Lcom/color/support/widget/ColorLockPatternView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mRegularColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1270
    iget-object p5, p0, Lcom/color/support/widget/ColorLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p6, v0

    float-to-int p6, p6

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1271
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleDrawable(Landroid/graphics/Canvas;FFFFFF)V
    .locals 6

    .line 1277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1278
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1279
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    sub-float v2, p2, v1

    float-to-int v2, v2

    sub-float v1, p3, v1

    float-to-int v1, v1

    add-int v3, v2, v0

    add-int/2addr v0, v1

    .line 1283
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1284
    iget-object p4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/color/support/widget/ColorLockPatternView;->getCurrentColor(Z)I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1285
    iget-object p4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v2, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1286
    iget-object p4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p4, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1287
    iget-object p4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInnerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1291
    iget-object p4, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 1292
    div-int/lit8 p5, p4, 0x2

    int-to-float p5, p5

    sub-float v1, p2, p5

    float-to-int v1, v1

    sub-float p5, p3, p5

    float-to-int p5, p5

    add-int v2, v1, p4

    add-int/2addr p4, p5

    .line 1296
    invoke-virtual {p1, p6, p6, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1297
    iget-object p2, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/color/support/widget/ColorLockPatternView;->getCurrentColor(Z)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1298
    iget-object p2, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1, p5, v2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1299
    iget-object p2, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p7, v0

    float-to-int p3, p7

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1300
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 1

    .line 1114
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareHeight:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getColumnHit(F)I
    .locals 5

    .line 901
    iget v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    .line 902
    iget v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 904
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getCurrentColor(Z)I
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Animate:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->FingerprintMatch:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 1256
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1260
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown display mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1258
    :cond_3
    :goto_0
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mRegularColor:I

    return p0

    .line 1255
    :cond_4
    :goto_1
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSuccessColor:I

    return p0

    .line 1251
    :cond_5
    :goto_2
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mErrorColor:I

    return p0
.end method

.method private getRowHit(F)I
    .locals 5

    .line 880
    iget v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareHeight:F

    .line 881
    iget v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 883
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1076
    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathAlpha:F

    .line 1077
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->resetPattern()V

    .line 1078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1080
    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorLockPatternView;->detectAndAddHit(FF)Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1082
    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorLockPatternView;->setPatternInProgress(Z)V

    .line 1083
    sget-object v2, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    .line 1084
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->notifyPatternStarted()V

    goto :goto_0

    .line 1085
    :cond_0
    iget-boolean v2, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1086
    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorLockPatternView;->setPatternInProgress(Z)V

    .line 1087
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->notifyPatternCleared()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1090
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 1091
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v1

    .line 1093
    iget v3, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 1094
    iget v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareHeight:F

    div-float/2addr v5, v4

    sub-float v4, v2, v3

    float-to-int v4, v4

    sub-float v6, v1, v5

    float-to-int v6, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 1096
    invoke-virtual {p0, v4, v6, v2, v1}, Lcom/color/support/widget/ColorLockPatternView;->invalidate(IIII)V

    .line 1099
    :cond_2
    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    .line 1100
    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    .line 981
    iget v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPathWidth:I

    int-to-float v0, v0

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 983
    iget-object v2, p0, Lcom/color/support/widget/ColorLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_7

    if-ge v2, v1, :cond_0

    .line 986
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_1
    if-ge v2, v1, :cond_1

    .line 987
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 988
    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/color/support/widget/ColorLockPatternView;->detectAndAddHit(FF)Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object v6

    .line 989
    iget-object v7, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v7, v8, :cond_2

    .line 991
    invoke-direct {p0, v8}, Lcom/color/support/widget/ColorLockPatternView;->setPatternInProgress(Z)V

    .line 992
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->notifyPatternStarted()V

    .line 995
    :cond_2
    iget v9, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 996
    iget v10, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_3

    cmpl-float v9, v10, v11

    if-lez v9, :cond_4

    :cond_3
    move v3, v8

    .line 1001
    :cond_4
    iget-boolean v8, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_6

    if-lez v7, :cond_6

    .line 1002
    iget-object v8, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    .line 1003
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1004
    invoke-static {v7}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 1005
    invoke-static {v7}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 1008
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    .line 1009
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v0

    .line 1010
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v0

    .line 1011
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    if-eqz v6, :cond_5

    .line 1015
    iget v7, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    .line 1016
    iget v11, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareHeight:F

    mul-float/2addr v11, v10

    .line 1017
    invoke-static {v6}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 1018
    invoke-static {v6}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v6

    sub-float v12, v10, v7

    .line 1020
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v7

    .line 1021
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v7, v6, v11

    .line 1022
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v6, v11

    .line 1023
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1027
    :cond_5
    iget-object v6, p0, Lcom/color/support/widget/ColorLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1028
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1027
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1031
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    .line 1032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    if-eqz v3, :cond_8

    .line 1036
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1037
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 1038
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method private handleActionUp()V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1049
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->setPatternInProgress(Z)V

    .line 1050
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->cancelLineAnimations()V

    .line 1051
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->notifyPatternDetected()V

    .line 1052
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOnPatternListener:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 594
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 612
    sget v0, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_cleared:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->sendAccessEvent(I)V

    .line 613
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOnPatternListener:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    if-eqz p0, :cond_0

    .line 614
    invoke-interface {p0}, Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 1

    .line 605
    sget v0, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_detected:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->sendAccessEvent(I)V

    .line 606
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOnPatternListener:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 598
    sget v0, Lcolor/support/v7/appcompat/R$string;->lockscreen_access_pattern_start:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->sendAccessEvent(I)V

    .line 599
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mOnPatternListener:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    if-eqz p0, :cond_0

    .line 600
    invoke-interface {p0}, Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method private performHitFeedback()V
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mIsLinearMotorVersion:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12f

    .line 766
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 768
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method private performWrongModeFeedback()V
    .locals 2

    .line 520
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mIsLinearMotorVersion:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const/16 v0, 0x130

    .line 524
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->performHapticFeedback(II)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    .line 528
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->performHapticFeedback(II)Z

    :goto_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->clearPatternDrawLookup()V

    .line 654
    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    .line 655
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 1

    .line 697
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 698
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    move p2, p0

    goto :goto_0

    .line 703
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method private sendAccessEvent(I)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 0

    .line 974
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    .line 975
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private startCellActivatedAnimation(Lcom/color/support/widget/ColorLockPatternView$Cell;)V
    .locals 8

    .line 782
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v1

    aget-object v3, v0, v1

    .line 783
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorLockPatternView;->startOuterAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;)V

    .line 784
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorLockPatternView;->startInnerAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;)V

    .line 785
    iget v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    iget v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    .line 786
    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v6

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v7

    move-object v2, p0

    .line 785
    invoke-direct/range {v2 .. v7}, Lcom/color/support/widget/ColorLockPatternView;->startLineEndAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;FFFF)V

    return-void
.end method

.method private startFingerprintNoMatchAnimator()V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 561
    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3eb33333    # 0.35f

    .line 562
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3ecccccd    # 0.4f

    .line 563
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3e19999a    # 0.15f

    .line 564
    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 565
    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 566
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v1, 0x6

    .line 567
    new-array v1, v1, [Landroid/animation/Keyframe;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v3, 0x2

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v6, v1, v3

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-string v0, "pathAlpha"

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 569
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 571
    new-instance v1, Lcom/color/support/widget/ColorLockPatternView$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorLockPatternView$2;-><init>(Lcom/color/support/widget/ColorLockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 584
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startInnerAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;)V
    .locals 5

    const/4 v0, 0x2

    .line 842
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 843
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v1, v3, v2, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xe6

    .line 844
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 845
    new-instance v1, Lcom/color/support/widget/ColorLockPatternView$8;

    invoke-direct {v1, p0, p1}, Lcom/color/support/widget/ColorLockPatternView$8;-><init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 851
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;FFFF)V
    .locals 9

    const/4 v0, 0x2

    .line 791
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 792
    new-instance v8, Lcom/color/support/widget/ColorLockPatternView$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/color/support/widget/ColorLockPatternView$4;-><init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 801
    new-instance p2, Lcom/color/support/widget/ColorLockPatternView$5;

    invoke-direct {p2, p0, p1}, Lcom/color/support/widget/ColorLockPatternView$5;-><init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x64

    .line 808
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 809
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 810
    iput-object v0, p1, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startOuterAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;)V
    .locals 8

    .line 814
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x1cc

    .line 815
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 816
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    .line 817
    new-array v4, v1, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 818
    new-instance v5, Lcom/color/support/widget/ColorLockPatternView$6;

    invoke-direct {v5, p0, p1}, Lcom/color/support/widget/ColorLockPatternView$6;-><init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 825
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 826
    iget v6, p0, Lcom/color/support/widget/ColorLockPatternView;->mOuterCircleMaxAlpha:F

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 827
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x3

    .line 828
    new-array v3, v3, [Landroid/animation/Keyframe;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const/4 v5, 0x1

    aput-object v6, v3, v5

    aput-object v2, v3, v1

    const-string v1, "alpha"

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 829
    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 830
    new-instance v2, Lcom/color/support/widget/ColorLockPatternView$7;

    invoke-direct {v2, p0, p1}, Lcom/color/support/widget/ColorLockPatternView$7;-><init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 837
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 838
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method private startWrongAnimator()V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 535
    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3eb33333    # 0.35f

    .line 536
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3ecccccd    # 0.4f

    .line 537
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3e19999a    # 0.15f

    .line 538
    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 539
    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 540
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v1, 0x6

    .line 541
    new-array v1, v1, [Landroid/animation/Keyframe;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v3, 0x2

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v6, v1, v3

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-string v0, "pathAlpha"

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 543
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    .line 544
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 545
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorLockPatternView$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorLockPatternView$1;-><init>(Lcom/color/support/widget/ColorLockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 557
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWongAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->resetPattern()V

    :goto_0
    return-void
.end method

.method public clearPattern(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 643
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 644
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public getCellStates()[[Lcom/color/support/widget/ColorLockPatternView$CellState;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    return-object p0
.end method

.method public getFailAnimator()Landroid/animation/Animator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x2

    .line 1632
    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSuccessAnimator()Landroid/animation/Animator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x2

    .line 1643
    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isInStealthMode()Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    return p0
.end method

.method public isSetLockPassword()Z
    .locals 0

    .line 1605
    iget-boolean p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mIsSetPassword:Z

    return p0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 0

    .line 441
    iget-boolean p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1306
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1307
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1309
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 1310
    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v8, p0

    .line 1119
    iget-object v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1121
    iget-object v9, v8, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    .line 1123
    iget-object v2, v8, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v3, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Animate:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    mul-int/lit16 v2, v2, 0x2bc

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v11, v8, Lcom/color/support/widget/ColorLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v5, v11

    long-to-int v3, v5

    rem-int/2addr v3, v2

    .line 1131
    div-int/lit16 v2, v3, 0x2bc

    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/ColorLockPatternView;->clearPatternDrawLookup()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 1135
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1136
    invoke-virtual {v6}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v7

    aget-object v7, v9, v7

    invoke-virtual {v6}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v6

    aput-boolean v4, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 1145
    rem-int/lit16 v3, v3, 0x2bc

    int-to-float v3, v3

    const/high16 v5, 0x442f0000    # 700.0f

    div-float/2addr v3, v5

    add-int/lit8 v5, v2, -0x1

    .line 1149
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1150
    invoke-static {v5}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v6

    invoke-direct {v8, v6}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v6

    .line 1151
    invoke-static {v5}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v5

    invoke-direct {v8, v5}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v5

    .line 1153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1155
    invoke-static {v2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v7

    invoke-direct {v8, v7}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v7

    sub-float/2addr v7, v6

    mul-float/2addr v7, v3

    .line 1157
    invoke-static {v2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v2

    invoke-direct {v8, v2}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float/2addr v2, v5

    mul-float/2addr v3, v2

    add-float/2addr v6, v7

    .line 1158
    iput v6, v8, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    add-float/2addr v5, v3

    .line 1159
    iput v5, v8, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    .line 1162
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    .line 1165
    :cond_3
    iget-object v2, v8, Lcom/color/support/widget/ColorLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1166
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1172
    iget-boolean v3, v8, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 1175
    iget-object v3, v8, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-direct {v8, v4}, Lcom/color/support/widget/ColorLockPatternView;->getCurrentColor(Z)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1176
    iget-object v3, v8, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, v8, Lcom/color/support/widget/ColorLockPatternView;->mPathAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    move v6, v3

    move v7, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v3, v1, :cond_8

    .line 1181
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1186
    invoke-static {v11}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v12

    aget-object v12, v9, v12

    invoke-static {v11}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v13

    aget-boolean v12, v12, v13

    if-nez v12, :cond_4

    goto :goto_4

    .line 1191
    :cond_4
    invoke-static {v11}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v5

    invoke-direct {v8, v5}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v6

    .line 1192
    invoke-static {v11}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v5

    invoke-direct {v8, v5}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v7

    if-nez v3, :cond_5

    .line 1194
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1195
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_5
    if-eqz v3, :cond_7

    .line 1198
    iget-object v5, v8, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    invoke-static {v11}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v12

    aget-object v5, v5, v12

    invoke-static {v11}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v11

    aget-object v5, v5, v11

    .line 1199
    iget v11, v5, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndX:F

    const/4 v12, 0x1

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_6

    iget v11, v5, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndY:F

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_6

    .line 1200
    iget v11, v5, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndX:F

    iget v5, v5, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndY:F

    invoke-virtual {v2, v11, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 1202
    :cond_6
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_2

    .line 1210
    :cond_8
    :goto_4
    iget-boolean v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    if-nez v0, :cond_9

    iget-object v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Animate:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_a

    :cond_9
    if-eqz v5, :cond_a

    .line 1212
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1213
    iget v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    iget v1, v8, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1215
    :cond_a
    iget-object v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_b
    move-object/from16 v11, p1

    :goto_5
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x3

    if-ge v12, v13, :cond_10

    .line 1220
    invoke-direct {v8, v12}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v14

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v13, :cond_f

    .line 1222
    iget-object v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mCellStates:[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    aget-object v0, v0, v12

    aget-object v7, v0, v15

    .line 1223
    invoke-direct {v8, v15}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v6

    .line 1224
    iget v5, v7, Lcom/color/support/widget/ColorLockPatternView$CellState;->translationY:F

    .line 1225
    aget-object v0, v9, v12

    aget-boolean v16, v0, v15

    if-nez v16, :cond_d

    .line 1226
    iget-object v0, v8, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v20, v5

    move v10, v6

    move-object v13, v7

    goto :goto_9

    :cond_d
    :goto_8
    float-to-int v0, v14

    int-to-float v0, v0

    add-float v3, v0, v5

    .line 1227
    iget v4, v7, Lcom/color/support/widget/ColorLockPatternView$CellState;->innerCircleScale:F

    iget v2, v7, Lcom/color/support/widget/ColorLockPatternView$CellState;->innerCircleAlpha:F

    iget v1, v7, Lcom/color/support/widget/ColorLockPatternView$CellState;->outerCircleScale:F

    iget v0, v7, Lcom/color/support/widget/ColorLockPatternView$CellState;->outerCircleAlpha:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v2

    move v2, v6

    move/from16 v20, v5

    move/from16 v5, v19

    move v10, v6

    move/from16 v6, v18

    move-object v13, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/color/support/widget/ColorLockPatternView;->drawCircleDrawable(Landroid/graphics/Canvas;FFFFFF)V

    .line 1231
    :goto_9
    iget-boolean v0, v13, Lcom/color/support/widget/ColorLockPatternView$CellState;->needDrawCircle:Z

    if-eqz v0, :cond_e

    float-to-int v0, v10

    int-to-float v2, v0

    float-to-int v0, v14

    int-to-float v0, v0

    add-float v3, v0, v20

    .line 1232
    iget v4, v13, Lcom/color/support/widget/ColorLockPatternView$CellState;->radius:F

    iget v6, v13, Lcom/color/support/widget/ColorLockPatternView$CellState;->alpha:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/color/support/widget/ColorLockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    :cond_e
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x3

    goto :goto_7

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 927
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 921
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 924
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 930
    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 931
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 933
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 714
    iget p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mViewWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorLockPatternView;->mViewHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1325
    check-cast p1, Lcom/color/support/widget/ColorLockPatternView$SavedState;

    .line 1326
    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1327
    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    .line 1329
    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1327
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setPattern(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1330
    invoke-static {}, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->values()[Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    .line 1331
    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInputEnabled:Z

    .line 1332
    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    .line 1333
    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1316
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1317
    new-instance v8, Lcom/color/support/widget/ColorLockPatternView$SavedState;

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1318
    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    .line 1319
    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/color/support/widget/ColorLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/color/support/widget/ColorLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/color/support/widget/ColorLockPatternView$1;)V

    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 686
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    .line 687
    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareWidth:F

    .line 690
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, p3

    .line 691
    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mSquareHeight:F

    .line 692
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView;->mExploreByTouchHelper:Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 938
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    .line 957
    :cond_1
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternInProgress:Z

    if-eqz p1, :cond_2

    .line 958
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setPatternInProgress(Z)V

    .line 959
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->resetPattern()V

    .line 960
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->notifyPatternCleared()V

    :cond_2
    return v2

    .line 954
    :cond_3
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 951
    :cond_4
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->handleActionUp()V

    return v2

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 946
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mWrongAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 948
    :cond_6
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method public setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V
    .locals 2

    .line 495
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDisplayMode:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    .line 496
    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Animate:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mAnimatingPeriodStart:J

    .line 502
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 503
    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressX:F

    .line 504
    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorLockPatternView;->getCenterYForRow(I)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mInProgressY:F

    .line 505
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 498
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_1
    :goto_0
    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne p1, v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 509
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->performWrongModeFeedback()V

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->startWrongAnimator()V

    .line 513
    :cond_3
    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    if-ne p1, v0, :cond_4

    .line 514
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->startFingerprintNoMatchAnimator()V

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setLockPassword(Z)V
    .locals 0

    .line 1614
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mIsSetPassword:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mOnPatternListener:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/support/widget/ColorLockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    invoke-direct {p0}, Lcom/color/support/widget/ColorLockPatternView;->clearPatternDrawLookup()V

    .line 480
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 481
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    return-void
.end method

.method public setSuccessFinger()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 459
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
