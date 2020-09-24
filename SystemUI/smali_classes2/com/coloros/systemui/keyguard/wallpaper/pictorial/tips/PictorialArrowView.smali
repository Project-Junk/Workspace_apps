.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;
.super Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;
.source "PictorialArrowView.java"


# static fields
.field private static final ALPHA_ONE:F = 1.0f

.field private static final ARROW_ANIM_DURATION:I = 0x532

.field private static final ARROW_ANIM_TRAN_PROCESS:I = 0x14

.field private static final ARROW_DELAY:I = 0x1f4

.field private static final ARROW_DISMISS_DURATION:I = 0x2a8

.field private static final ARROW_LEFT:[F

.field private static final ARROW_RIGHT:[F

.field private static final DELAY_SHOW:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TipsView-PictorialArrowView"

.field private static final TRAN_LEFT_DURATION:I = 0x1fe

.field private static final TRAN_LEFT_RIGHT_PROCESS:I = 0x68

.field private static final TRAN_LEFT_RIGHT_X1:F = 0.18f

.field private static final TRAN_LEFT_RIGHT_X2:F = 0.18f

.field private static final TRAN_LEFT_RIGHT_Y1:F = 0.55f

.field private static final TRAN_LEFT_RIGHT_Y2:F = 1.0f

.field private static final TRAN_RIGHT_DELAY:I = 0x212

.field private static final TRAN_RIGHT_DURATION:I = 0x21c


# instance fields
.field private mHasStartSlideAnimator:Z

.field private mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mTipsAnimator:Landroid/animation/AnimatorSet;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 44
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->ARROW_LEFT:[F

    .line 45
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->ARROW_RIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x0
        0x3f147ae1    # 0.58f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ed70a3d    # 0.42f
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;-><init>(Landroid/content/Context;)V

    .line 370
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$4;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->startLeftArrowAnimator()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->startRightArrowAnimator()V

    return-void
.end method

.method private getArrowDismissAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 322
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2a8

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$mCrv7XBkNgdKSh_G-ifRe4-ez8E;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$mCrv7XBkNgdKSh_G-ifRe4-ez8E;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getFirstArrowAnimator()Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v0, 0x2

    .line 335
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x532

    .line 336
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 337
    new-instance v2, Landroid/view/animation/PathInterpolator;

    sget-object v3, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->ARROW_LEFT:[F

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    aget v0, v3, v0

    const/4 v6, 0x3

    aget v3, v3, v6

    invoke-direct {v2, v4, v5, v0, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$UYdzdy_-SpfQh9chHHrJSaRz23M;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$UYdzdy_-SpfQh9chHHrJSaRz23M;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getFirstSlideAnimator()Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x2

    .line 213
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v2, 0x1fe

    .line 216
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$b-ioi99GQiIVfiEF48D7y5MpaNE;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$b-ioi99GQiIVfiEF48D7y5MpaNE;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x68
    .end array-data
.end method

.method private getSecondArrowAnimator()Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v0, 0x2

    .line 348
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x532

    .line 349
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 350
    new-instance v2, Landroid/view/animation/PathInterpolator;

    sget-object v3, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->ARROW_RIGHT:[F

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    aget v0, v3, v0

    const/4 v6, 0x3

    aget v3, v3, v6

    invoke-direct {v2, v4, v5, v0, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$BDzRDgtCNzRWVze1U2pFsngsp2M;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$BDzRDgtCNzRWVze1U2pFsngsp2M;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x1f4

    .line 357
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSecondSlideAnimator()Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 232
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v2, 0x21c

    .line 234
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$vPh7m26SN-obA_zQjkCJFLEnL4g;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/-$$Lambda$PictorialArrowView$vPh7m26SN-obA_zQjkCJFLEnL4g;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x212

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x68
        0x0
    .end array-data
.end method

.method private hide()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mShow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TipsView-PictorialArrowView"

    const-string v1, "hide"

    .line 117
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->stopTipsAnimator()V

    const/16 v0, 0x8

    .line 120
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mShow:Z

    return-void
.end method

.method private isAnimatorRunning()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRTL()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private show()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mShow:Z

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isFirstAnimationShow()Z

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isPromptAnimationShow()Z

    move-result v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirstAnimationShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPromptAnimationShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mHasStartSlideAnimator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mHasStartSlideAnimator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TipsView-PictorialArrowView"

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 104
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mHasStartSlideAnimator:Z

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->startSlideAnimator()V

    .line 106
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mHasStartSlideAnimator:Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->startLeftArrowAnimator()V

    .line 110
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mShow:Z

    return-void
.end method

.method private startLeftArrowAnimator()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isNeedShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    .line 255
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getFirstArrowAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 286
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startRightArrowAnimator()V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isNeedShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    .line 295
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getSecondArrowAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$3;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$3;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 317
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startSlideAnimator()V
    .locals 6

    const-string v0, "TipsView-PictorialArrowView"

    const-string v1, "startSlideAnimator"

    .line 164
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 168
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    .line 169
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getFirstSlideAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 170
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getSecondSlideAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 171
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getArrowDismissAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->statisticSlideAnimatorUsers()V

    .line 208
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private stopTipsAnimator()V
    .locals 2

    .line 362
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TipsView-PictorialArrowView"

    const-string v1, "stopTipsAnimator"

    .line 363
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->create()V

    .line 127
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->destroy()V

    .line 133
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method protected isNeedShow()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mCreate:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mAllowState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 87
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 89
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    .line 91
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isFirstAnimationShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->isPromptAnimationShow()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    .line 92
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;->otherProcessForbidTips()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$getArrowDismissAnimator$2$PictorialArrowView(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 326
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 327
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 328
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setTranslationX(F)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$getFirstArrowAnimator$3$PictorialArrowView(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 339
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 340
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, p1, v1

    mul-float/2addr v0, v2

    .line 341
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setTranslationX(F)V

    sub-float/2addr v1, p1

    .line 342
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$getFirstSlideAnimator$0$PictorialArrowView(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 219
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 221
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    if-eqz v1, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    neg-float p1, p1

    .line 224
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    invoke-interface {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;->onSlideUpdate(IF)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$getSecondArrowAnimator$4$PictorialArrowView(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 352
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 353
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, p1, v1

    mul-float/2addr v0, v2

    .line 354
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setTranslationX(F)V

    sub-float/2addr v1, p1

    .line 355
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$getSecondSlideAnimator$1$PictorialArrowView(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 237
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 238
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 239
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    if-eqz v1, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    .line 241
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    neg-float p1, p1

    .line 242
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    invoke-interface {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;->onSlideUpdate(IF)V

    :cond_2
    return-void
.end method

.method public markShow()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mTipsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TipsView-PictorialArrowView"

    const-string v1, "markShow"

    .line 146
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->stopTipsAnimator()V

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyFirstAnimationAlreadyShow()V

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyPromptAnimationAlreadyShow()V

    :cond_1
    return-void
.end method

.method public setAllowStates(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mAllowState:Z

    return-void
.end method

.method public updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->mHasStartSlideAnimator:Z

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->updateTipsState()V

    return-void
.end method

.method public updateTipsState()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->show()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialArrowView;->hide()V

    :goto_0
    return-void
.end method
