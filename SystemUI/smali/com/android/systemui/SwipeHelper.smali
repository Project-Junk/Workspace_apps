.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEFAULT_ESCAPE_ANIMATION_DURATION:I = 0xc8

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final MAX_DISMISS_VELOCITY:I = 0xfa0

.field private static final MAX_ESCAPE_ANIMATION_DURATION:I = 0x190

.field static final MAX_SCROLL_SIZE_FRACTION:F = 0.3f

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field public static final SWIPED_FAR_ENOUGH_SIZE_FRACTION:F = 0.6f

.field private static final SWIPE_ESCAPE_VELOCITY:F = 500.0f

.field static final SWIPE_PROGRESS_FADE_END:F = 0.5f

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1


# instance fields
.field private final mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private final mDismissPendingMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private final mFadeDependingOnAmountSwiped:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFalsingThreshold:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressSent:Z

.field private final mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMenuRowIntercepting:Z

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private final mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 88
    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 105
    iput-object p3, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 107
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 108
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 109
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 110
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 113
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 115
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const p2, 0x7f070822

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    const p2, 0x7f050019

    .line 118
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    .line 119
    invoke-static {p3}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 120
    new-instance p1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v0

    long-to-float p2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 123
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/SwipeHelper;)Landroid/util/ArrayMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/SwipeHelper;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 701
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxVelocity()F
    .locals 1

    .line 705
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const/high16 v0, 0x457a0000    # 4000.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 0

    .line 144
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getSwipeAlpha(F)F
    .locals 2

    .line 206
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    sub-float/2addr v1, p1

    .line 208
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    .line 211
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float/2addr v1, p0

    return v1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result p1

    div-float/2addr p2, p1

    .line 201
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 202
    iget p2, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    .line 238
    new-instance v0, Landroid/graphics/RectF;

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 238
    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5

    .line 249
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 252
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    .line 255
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 252
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private snapChildInstantly(Landroid/view/View;)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    .line 573
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 1

    .line 220
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result p3

    .line 221
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 223
    iget-boolean p2, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 225
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 227
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 230
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 233
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 157
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v8, p4

    .line 393
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_2

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_1

    if-eqz p9, :cond_2

    :cond_1
    iget v7, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-ne v7, v4, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    if-nez v6, :cond_4

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v11

    cmpl-float v11, v11, v5

    if-eqz v11, :cond_3

    if-eqz p9, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 403
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    cmpg-float v11, p2, v5

    if-ltz v11, :cond_6

    .line 404
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v11

    cmpg-float v5, v11, v5

    if-gez v5, :cond_7

    if-nez p9, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    if-nez v3, :cond_9

    if-nez v2, :cond_9

    if-eqz v7, :cond_8

    goto :goto_3

    .line 408
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    goto :goto_4

    .line 406
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    neg-float v2, v2

    :goto_4
    move v5, v2

    const-wide/16 v11, 0x0

    cmp-long v2, p7, v11

    if-nez v2, :cond_b

    const-wide/16 v2, 0x190

    if-eqz v6, :cond_a

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v6

    .line 416
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v6, v4

    .line 414
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_5

    :cond_a
    const-wide/16 v2, 0xc8

    goto :goto_5

    :cond_b
    move-wide/from16 v2, p7

    .line 425
    :goto_5
    iget-boolean v4, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_c

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 426
    invoke-virtual {p1, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 428
    :cond_c
    new-instance v4, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v4, p0, p1, v10}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 435
    invoke-virtual {p0, p1, v5, v4}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v13

    if-nez v13, :cond_d

    return-void

    :cond_d
    if-eqz p6, :cond_e

    .line 440
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    invoke-virtual {v13, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_6

    .line 443
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    move-object v3, v13

    move/from16 v6, p2

    .line 443
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    :goto_6
    cmp-long v2, v8, v11

    if-lez v2, :cond_f

    .line 447
    invoke-virtual {v13, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 449
    :cond_f
    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v3, p3

    invoke-direct {v2, p0, p1, v10, v3}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    invoke-virtual {p0, p1, v13}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 479
    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    if-eqz p9, :cond_10

    .line 484
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->playBackground()V

    :cond_10
    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    .line 378
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, p0

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 0

    .line 188
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 0

    .line 148
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    :goto_0
    return p0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 0

    const/high16 p0, 0x43fa0000    # 500.0f

    return p0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 0

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 171
    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 727
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 729
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 731
    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissedInDirection(Landroid/view/View;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 735
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result p1

    .line 736
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 737
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 739
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez p0, :cond_0

    :goto_0
    return v1
.end method

.method protected onChildSnappedBack(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 276
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    const-string v1, "--mLongPressSent: "

    const-string v2, "StatusBarEvent--onInterceptTouchEvent--mDragging: "

    const-string v3, "com.android.systemui.SwipeHelper"

    const-string v4, "Notification"

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "--mMenuRowIntercepting--mCurrView: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "--ev: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v5, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_1

    .line 283
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v5, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_4

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_2

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    .line 335
    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v8

    .line 336
    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float/2addr v7, v8

    .line 337
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    .line 338
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v7}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDragged(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v7}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 341
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 342
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 343
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    goto/16 :goto_2

    .line 352
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v6

    goto :goto_1

    :cond_6
    :goto_0
    move p1, v5

    .line 353
    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 355
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 356
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    if-eqz p1, :cond_9

    return v5

    .line 292
    :cond_7
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 293
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 294
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 295
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 296
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v7}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 302
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 305
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 306
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    .line 307
    new-instance v0, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 326
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    :cond_9
    :goto_2
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz p1, :cond_a

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "--mMenuRowIntercepting: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "--return--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez p1, :cond_c

    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    move v5, v6

    :cond_c
    :goto_3
    return v5
.end method

.method protected onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 610
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onTouchEvent--mLongPressSent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--mMenuRowIntercepting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--mDragging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--mCallback.getChildAtPosition(ev): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 613
    invoke-interface {v1, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "--ev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "com.android.systemui.SwipeHelper"

    .line 611
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_1

    return v1

    .line 621
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_3

    .line 622
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    return v2

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    goto/16 :goto_2

    .line 642
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 643
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v4

    .line 644
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 645
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_5

    .line 646
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 650
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    move v2, v1

    :cond_6
    invoke-interface {v5, v6, v2}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissedInDirection(Landroid/view/View;Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 652
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v2

    cmpl-float v6, v4, v2

    if-ltz v6, :cond_8

    if-lez v3, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    neg-float v0, v5

    goto :goto_0

    .line 657
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/systemui/SwipeHelper$Callback;->getConstrainSwipeStartPosition()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-lez v4, :cond_9

    .line 660
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-double v6, v0

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    .line 662
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v5, v0

    add-float v0, v3, v5

    .line 668
    :cond_9
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 669
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 670
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v3, v0

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_2

    .line 675
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_2

    .line 678
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 681
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p0, p1, v4, v0, v5}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v4

    if-nez v4, :cond_d

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 684
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 684
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    goto :goto_1

    .line 688
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {p1, v4}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 689
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    :goto_1
    const/4 p1, 0x0

    .line 691
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 693
    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    :cond_e
    :goto_2
    return v1
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0

    .line 568
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public setDensityScale(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    return-void
.end method

.method public setMinSwipeProgress(F)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_1

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 8

    .line 497
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 498
    new-instance v1, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 505
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 509
    :cond_0
    new-instance v2, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 527
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 530
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    move-object v3, v1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 532
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .locals 4

    .line 586
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 590
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 593
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 594
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    .line 599
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_1

    .line 601
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected swipedFarEnough()Z
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 723
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result p0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected swipedFastEnough()Z
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 746
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 747
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result p0

    cmpl-float p0, v2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v3

    :goto_1
    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method
