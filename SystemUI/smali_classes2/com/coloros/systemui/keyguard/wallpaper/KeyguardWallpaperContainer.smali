.class public Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardWallpaperContainer.java"


# static fields
.field private static final DISMISS_DELAY:I = 0x190

.field private static final EXPOSE_START_END_MAX_DURATION:I = 0xc8

.field private static final LAST_STATISTIC_PICTORIAL_SWITCH_TIME:Ljava/lang/String; = "last_statistic_pictorial_switch_time"

.field private static final SHOW_OR_HIDE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperContainer"


# instance fields
.field private mAlpha:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBouncer:Z

.field private mCurrentAlpha:F

.field private mExposeStartTime:J

.field private mExposureStartRunnable:Ljava/lang/Runnable;

.field private mHasStatisticExposeStart:Z

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardStateChange:Z

.field private mLastFocusState:Z

.field private mLastSendTime:J

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

.field mWallpaperObserver:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 187
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 233
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$KeyguardWallpaperContainer$V8L662X8tzK5ETKikAm_EIhtLVQ;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$KeyguardWallpaperContainer$V8L662X8tzK5ETKikAm_EIhtLVQ;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mExposureStartRunnable:Ljava/lang/Runnable;

    .line 259
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperObserver:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;

    .line 270
    new-instance p2, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$3;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 85
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 86
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 87
    const-class p2, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p2, p3}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperObserver:Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;

    invoke-virtual {p2, p3}, Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/WallpaperChangeWatcher$Observer;)V

    .line 89
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 90
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticExposeStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticExposeEnd(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mKeyguardStateChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticScreenState()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticPictorialSwitchState()V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Landroid/widget/ImageView;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    return-void
.end method

.method private getLastSendTime()J
    .locals 4

    .line 478
    iget-wide v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastSendTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const-string v3, "last_statistic_pictorial_switch_time"

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getLongFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastSendTime:J

    .line 482
    iget-wide v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastSendTime:J

    return-wide v0
.end method

.method private isAnimatorRunning()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

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

.method private saveLastSendTime()V
    .locals 4

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 487
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mContext:Landroid/content/Context;

    const-string v3, "last_statistic_pictorial_switch_time"

    invoke-static {v2, v3, v0, v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 488
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastSendTime:J

    return-void
.end method

.method private showOrDismissGaussEffect(ZZZ)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->isAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_3

    .line 377
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    return-void

    .line 381
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrDismissGaussEffect mCurrentAlpha = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", show = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "KeyguardWallpaperContainer"

    invoke-static {v2, p3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x2

    .line 382
    new-array p3, p3, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    aput v3, p3, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    aput v0, p3, v2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    .line 383
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 p3, 0x43480000    # 200.0f

    if-eqz p1, :cond_5

    .line 384
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p3

    float-to-int p3, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    mul-float/2addr v0, p3

    float-to-int p3, v0

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 387
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    const-wide/16 v0, 0x190

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 388
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$KeyguardWallpaperContainer$qE5MldiWIDRo_PVspyuJMrbyyIU;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$KeyguardWallpaperContainer$qE5MldiWIDRo_PVspyuJMrbyyIU;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 391
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;

    invoke-direct {p3, p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer$4;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 417
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startAnimator(ZZ)V
    .locals 2

    .line 347
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAlpha:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardWallpaperContainer"

    const-string p1, "startAnimator return, because of sliding now"

    .line 348
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mKeyguardStateChange:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->showOrDismissGaussEffect(ZZZ)V

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mKeyguardStateChange:Z

    return-void
.end method

.method private statisticExposeEnd(I)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mExposureStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 243
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mHasStatisticExposeStart:Z

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    if-nez v0, :cond_1

    return-void

    .line 249
    :cond_1
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 252
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mExposeStartTime:J

    sub-long/2addr v0, v2

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statisticExposeEnd time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardWallpaperContainer"

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    check-cast v3, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->exposureEnd(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;JI)V

    const/4 p1, 0x0

    .line 255
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mHasStatisticExposeStart:Z

    return-void
.end method

.method private statisticExposeStart()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mHasStatisticExposeStart:Z

    if-eqz v1, :cond_1

    return-void

    .line 206
    :cond_1
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "KeyguardWallpaperContainer"

    if-eqz v0, :cond_3

    const-string p0, "statisticExposeStart is not VISIBLE, return"

    .line 210
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastFocusState:Z

    if-nez v0, :cond_4

    const-string p0, "statisticExposeStart is not focus, return"

    .line 214
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 224
    :cond_6
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "statisticExposeStart is not alpha 0, return"

    .line 225
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mExposeStartTime:J

    .line 229
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mExposureStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private statisticPictorialSwitchState()V
    .locals 5

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 460
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->getLastSendTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 465
    :goto_0
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isLocalType()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_1
    const-string v3, "switch_magazine"

    .line 468
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lock_wallpaper"

    .line 469
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "static_switch_os"

    invoke-static {v1, v2, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->saveLastSendTime()V

    :cond_2
    return-void
.end method

.method private statisticScreenState()V
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 427
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v2

    const-string v3, "type"

    if-nez v2, :cond_1

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    const/4 v4, 0x0

    .line 428
    invoke-static {v2, v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    invoke-static {}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->isLockDeadState()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "3"

    .line 430
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 434
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v2

    const-string v4, "pictype"

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    move-object v3, v4

    :cond_3
    const-string v1, "0"

    .line 435
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 438
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 437
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 440
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_id"

    .line 439
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 442
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isLocalType()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    move-object v3, v4

    :cond_5
    const-string v1, "1"

    .line 443
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    move-object v3, v4

    :cond_7
    const-string v1, "2"

    .line 447
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 454
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "screen_show"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private stopAnimator()V
    .locals 1

    .line 361
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->isAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private updateViewDrawableAlpha(Landroid/widget/ImageView;F)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 169
    :cond_2
    instance-of v1, v0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-nez v1, :cond_3

    const-string p0, "KeyguardWallpaperContainer"

    const-string p1, "drawable is not GaussDrawable, return"

    .line 170
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    iput p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    .line 177
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    if-ne p1, p2, :cond_5

    .line 178
    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    .line 179
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticExposeEnd(I)V

    goto :goto_0

    .line 180
    :cond_4
    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mCurrentAlpha:F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticExposeStart()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$KeyguardWallpaperContainer()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mHasStatisticExposeStart:Z

    .line 236
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->exposureStart(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showOrDismissGaussEffect$1$KeyguardWallpaperContainer(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00d8

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    const v0, 0x7f0a00d9

    .line 97
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropFront:Landroid/widget/ImageView;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 336
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastFocusState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastFocusState:Z

    .line 338
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticExposeStart()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 341
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->statisticExposeEnd(I)V

    .line 343
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mLastFocusState:Z

    return-void
.end method

.method public updateBackground()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isChargingAnimatorShow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 151
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->hasVisibleNotification()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBouncer:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    .line 154
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropFront:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    return-void
.end method

.method public updateBackgroundAlpha(F)V
    .locals 3

    .line 101
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    move p1, v2

    .line 118
    :cond_3
    :goto_0
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mAlpha:F

    .line 120
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->isAnimatorRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isChargingAnimatorShow()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 126
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->hasVisibleNotification()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBouncer:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    .line 135
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->stopAnimator()V

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropFront:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    return-void

    .line 128
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropBack:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    .line 129
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->mBackdropFront:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperContainer;->updateViewDrawableAlpha(Landroid/widget/ImageView;F)V

    return-void
.end method
