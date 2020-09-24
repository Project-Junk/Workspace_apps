.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE_FACTOR:F = 0.25f

.field private static final HINT_CIRCLE_OPEN_DURATION:I = 0x1f4

.field public static final HINT_PHASE1_DURATION:J = 0xc8L

.field private static final HINT_PHASE2_DURATION:J = 0x15eL

.field public static final TAG:Ljava/lang/String; = "KeyguardAffordanceHelper"


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTargetedView:Landroid/view/View;

.field private mTouchSlop:I

.field private mTouchSlopExeeded:Z

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V
    .locals 8

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private endMotion(ZFF)V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(ZFF)V

    goto :goto_0

    .line 240
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 242
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 244
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private fling(FZZ)V
    .locals 5

    if-eqz p3, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 378
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x2

    .line 381
    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 382
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v3, v1, v4, v0, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 383
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p2, :cond_2

    const/high16 v0, 0x3ec00000    # 0.375f

    mul-float/2addr v0, p1

    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v0, p3, v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 396
    :goto_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 397
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    :cond_3
    return-void
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .locals 6

    .line 351
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity(FF)F

    move-result p2

    .line 355
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->needsAntiFalsing()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 356
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-nez p3, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p3, v0

    .line 361
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v2, p2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    .line 362
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    or-int/2addr p3, v4

    xor-int/2addr v2, p3

    if-eqz v2, :cond_5

    move p2, v3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move p1, v1

    goto :goto_6

    :cond_7
    :goto_5
    move p1, v0

    .line 364
    :goto_6
    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float p3, p3, v3

    if-gez p3, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    return-void
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 4

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    const/4 v1, 0x2

    .line 330
    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float p2, p2

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 331
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private getCurrentVelocity(FF)F
    .locals 6

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 520
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr p1, v2

    .line 521
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr p2, v2

    float-to-double v2, p1

    float-to-double v4, p2

    .line 522
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 525
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, p0, :cond_1

    neg-float v0, v0

    :cond_1
    return v0
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinTranslationAmount()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 373
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2

    .line 461
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    .line 464
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .locals 0

    .line 495
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result p0

    div-float/2addr p1, p0

    const p0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p0

    const p0, 0x3f4ccccd    # 0.8f

    add-float/2addr p1, p0

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 497
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getTranslationFromRadius(F)F
    .locals 2

    .line 455
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 457
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float p0, p0

    add-float v0, p1, p0

    :cond_0
    return v0
.end method

.method private initDimens()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method private initIcons()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 510
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 2

    .line 368
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 3

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    sub-float/2addr p2, v0

    float-to-double p1, p2

    sub-float/2addr p3, v1

    float-to-double v0, p3

    .line 232
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 233
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private leftSwipePossible()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private rightSwipePossible()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTranslation(FZZ)V
    .locals 17

    move-object/from16 v8, p0

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, p1

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 411
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    move v9, v0

    .line 412
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 413
    iget v2, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v2, v9, v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_9

    :cond_2
    cmpl-float v2, v9, v1

    if-lez v2, :cond_3

    .line 414
    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_2

    :cond_3
    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_2
    if-lez v2, :cond_4

    .line 415
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_3

    :cond_4
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_3
    move-object v10, v2

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    .line 420
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    move v12, v1

    goto :goto_4

    :cond_5
    move v12, v4

    :goto_4
    if-eqz p2, :cond_6

    if-nez p3, :cond_6

    move v13, v1

    goto :goto_5

    :cond_6
    move v13, v4

    .line 424
    :goto_5
    invoke-direct {v8, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getRadiusFromTranslation(F)F

    move-result v5

    if-eqz p2, :cond_7

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_7

    move v14, v1

    goto :goto_6

    :cond_7
    move v14, v4

    :goto_6
    if-nez p2, :cond_8

    .line 427
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float/2addr v0, v11

    add-float v4, v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v5

    move v3, v4

    move v4, v6

    move v5, v7

    move v6, v15

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    .line 430
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v4, v11, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v12

    move v5, v14

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    :goto_7
    const/4 v2, 0x0

    .line 433
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v3, v11, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v12

    move v5, v14

    move/from16 v6, p2

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 436
    iput v9, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    :cond_9
    return-void
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 406
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    return-void
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 281
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 282
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xc8

    .line 302
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 304
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 305
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-void
.end method

.method private startSwiping(Landroid/view/View;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 208
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAffordance(Z)V

    return-void
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 313
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    .line 323
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 324
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 325
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    .line 502
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V
    .locals 1

    .line 476
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p6, :cond_0

    return-void

    :cond_0
    if-eqz p7, :cond_1

    .line 480
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 484
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 1

    .line 488
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 489
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 490
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 491
    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    return-void
.end method

.method private updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 4

    .line 441
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    .line 446
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 450
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 451
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 8

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 470
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    return-void
.end method

.method public getAffordanAtPosition(FF)Landroid/view/View;
    .locals 0

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSwipingInProgress()Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p0
.end method

.method public launchAffordance(ZZ)V
    .locals 10

    .line 558
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    if-eqz p2, :cond_2

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_1
    move-object v3, v1

    .line 564
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 568
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move p1, v2

    :cond_3
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    xor-int/lit8 p1, p2, 0x1

    .line 573
    invoke-direct {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 574
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    goto :goto_3

    .line 576
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    xor-int/lit8 v2, p2, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {p1, v2, v4, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    if-eqz p2, :cond_5

    .line 577
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 578
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result p1

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 579
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 580
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->instantFinishAnimation()V

    .line 581
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 582
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 135
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--onTouchEvent--mMotionCancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "KeyguardAffordanceHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 141
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    return v2

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto/16 :goto_3

    .line 169
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 170
    invoke-direct {p0, v4, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    goto/16 :goto_3

    :cond_3
    move v0, v2

    goto :goto_1

    .line 173
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 174
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr v3, p1

    .line 175
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr v1, p1

    float-to-double v5, v3

    float-to-double v0, v1

    .line 176
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 178
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 180
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    .line 182
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    sub-float/2addr v0, p1

    .line 183
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 185
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v0, p1

    .line 186
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 188
    :goto_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto :goto_3

    :cond_7
    move v0, v4

    .line 195
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v5, v6, :cond_8

    move v2, v4

    .line 196
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    xor-int/lit8 p1, v0, 0x1

    .line 197
    invoke-direct {p0, p1, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    .line 198
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez p1, :cond_c

    if-eqz v0, :cond_c

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)V

    goto :goto_3

    .line 150
    :cond_9
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 151
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_a

    if-eq v5, v0, :cond_a

    goto :goto_4

    .line 155
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_b

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    goto :goto_2

    .line 158
    :cond_b
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 160
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 161
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 162
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 166
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    :cond_c
    :goto_3
    return v4

    .line 152
    :cond_d
    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    return v2
.end method

.method public reset(Z)V
    .locals 2

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 543
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAffordance(Z)V

    .line 547
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 549
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    :cond_0
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updatePreviews()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method
