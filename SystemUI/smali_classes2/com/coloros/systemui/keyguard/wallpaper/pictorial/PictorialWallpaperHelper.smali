.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;
.super Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;
.source "PictorialWallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;
    }
.end annotation


# static fields
.field private static final SECOND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PictorialWallpaperHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;


# instance fields
.field private mCoverInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

.field private mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

.field private mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

.field private mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

.field private mEnable:Z

.field private mHasAlreadyFetchFromSlidePage:Z

.field private mHasFetchWallpaperWhenKeyguardShow:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLockScreenNextDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

.field private mNextPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

.field private final mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private mPictorialMediatorCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;

.field private mPictorialStateWatcherObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

.field private mPreloadChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;

.field private mPreloadNextDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mLockScreenNextDrawableCache:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadNextDrawableCache:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mEnable:Z

    .line 290
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 565
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediatorCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;

    .line 592
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$3;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialStateWatcherObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    .line 69
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 70
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediatorCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerCallback(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V

    .line 73
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasFetchWallpaperWhenKeyguardShow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasFetchWallpaperWhenKeyguardShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->updateAndFetchWallpaper()V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Ljava/util/List;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->wallpaperChange(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setCurrentAndPreloadNext()V

    return-void
.end method

.method private addToNextLockScreenDrawableCache(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mLockScreenNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 483
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mLockScreenNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addToNextPreloadDrawableCache(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 488
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private asyncUpdateWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->createWallpaperRequest()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setPictorialWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object p1

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setGauss(Z)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object p1

    .line 441
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;

    invoke-direct {v0, p0, p3, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NFfYXmpzm44Mq72H-nGJJLpDC7g;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;ZZ)V

    .line 477
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->getInstance()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->loadWallpaper(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;)Z

    return-void
.end method

.method private checkCurrentLockScreenDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 346
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-nez p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mLockScreenNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 349
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private checkCurrentPreloadDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 361
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-nez p1, :cond_2

    .line 362
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 364
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private fetchCurrentWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 374
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 375
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;
    .locals 2

    .line 77
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 84
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    return-object p0
.end method

.method private getLockScreenNextWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 3

    .line 539
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 543
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 546
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 547
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 548
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    :cond_1
    return-object v1
.end method

.method private getPreloadNextWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    xor-int/lit8 v1, v0, 0x1

    .line 145
    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    move v1, v2

    .line 148
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz p0, :cond_3

    .line 150
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private preloadNextLockScreenWallpaper()V
    .locals 1

    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->preloadNextWallpaper(Z)V

    return-void
.end method

.method private preloadNextPreloadViewWallpaper()V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->preloadNextWallpaper(Z)V

    return-void
.end method

.method private preloadNextWallpaper(Z)V
    .locals 2

    .line 492
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getLockScreenNextWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    .line 498
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getPreloadNextWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    .line 501
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    :goto_0
    if-eqz v0, :cond_2

    .line 505
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    .line 507
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->createWallpaperRequest()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setPictorialWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 509
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setGauss(Z)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$XVCSfD12E0O7qBZu9cBjpSkNMHM;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Z)V

    .line 534
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->getInstance()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->loadWallpaper(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;)Z

    :cond_2
    return-void
.end method

.method private releaseDrawable()V
    .locals 2

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 223
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 224
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    .line 226
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    .line 230
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    .line 234
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    .line 238
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mNextPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    :cond_3
    return-void
.end method

.method private setCurrentAndPreloadNext()V
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->updateLockScreenWallpaper(Z)V

    .line 324
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->updatePreloadWallpaper(Z)V

    .line 325
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->preloadNextLockScreenWallpaper()V

    .line 326
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->preloadNextPreloadViewWallpaper()V

    return-void
.end method

.method private updateAndFetchWallpaper()V
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setCurrentAndPreloadNext()V

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->obtainPictorialWallpaper(ZZ)V

    .line 319
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    return-void
.end method

.method private updateLockScreenWallpaper(Z)V
    .locals 4

    .line 384
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->fetchCurrentWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 391
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 392
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->checkCurrentLockScreenDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "PictorialWallpaperHelper"

    if-eqz v1, :cond_2

    const-string v1, "updateLockScreenWallpaper drawable is not null , sync update"

    .line 394
    invoke-static {v3, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz p1, :cond_3

    .line 398
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->onWallpaperChange(I)V

    goto :goto_0

    :cond_2
    const-string v1, "updateLockScreenWallpaper drawable is null, async update"

    .line 402
    invoke-static {v3, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v0, p1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->asyncUpdateWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updatePreloadWallpaper(Z)V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->fetchPreloadWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 417
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 418
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->checkCurrentPreloadDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result v1

    const-string v2, "PictorialWallpaperHelper"

    if-eqz v1, :cond_2

    const-string v1, "updatePreloadWallpaper : drawable is not null , sync update"

    .line 420
    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz p1, :cond_3

    .line 422
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;

    if-eqz p0, :cond_3

    .line 423
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;->onWallpaperChange()V

    goto :goto_0

    :cond_2
    const-string v1, "updatePreloadWallpaper : drawable is null, async update"

    .line 427
    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->asyncUpdateWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private wallpaperChange(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallpaperChange wallpapers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateViews = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 580
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialWallpaperHelper"

    .line 579
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    const/4 p1, 0x0

    .line 584
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    if-eqz p2, :cond_0

    .line 586
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setCurrentAndPreloadNext()V

    const/4 p1, 0x1

    .line 588
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->releaseDrawable()V

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mLockScreenNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 216
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadNextDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mEnable:Z

    .line 218
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialStateWatcherObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->removeCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mEnable:Z

    .line 208
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setCurrentAndPreloadNext()V

    .line 209
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialStateWatcherObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    return-void
.end method

.method public fetchPreloadWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 5

    .line 158
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 168
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 169
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    if-eqz v2, :cond_2

    if-le v0, v4, :cond_2

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 172
    :cond_2
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object p0

    return-object p0

    .line 176
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasAlreadyFetchFromSlidePage:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    move v3, v4

    .line 179
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCoverInfoList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz p0, :cond_5

    const-string v0, "PictorialWallpaperHelper"

    const-string v1, "fetchPreloadWallpaperInfo : return current"

    .line 181
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-nez v0, :cond_2

    const-string p0, "PictorialWallpaperHelper"

    const-string v0, "getPreloadWallpaper mCurrentPreloadWallpaperInfo is null"

    .line 127
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->checkCurrentPreloadDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    return-object p0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->asyncUpdateWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;ZZ)V

    :goto_0
    return-object v1
.end method

.method public getPreloadWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-object p0
.end method

.method public bridge synthetic getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->isEnableLockScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const-string v2, "PictorialWallpaperHelper"

    if-nez v0, :cond_2

    const-string p0, "getWallpaper mCurrentLockScreenWallpaperInfo is null"

    .line 96
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->checkCurrentLockScreenDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "getWallpaper sync return drawable"

    .line 99
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    return-object p0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->asyncUpdateWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;ZZ)V

    :goto_0
    return-object v1
.end method

.method public getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-object p0
.end method

.method public hide()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 246
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide, isKeyguardHiding : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PictorialWallpaperHelper"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->releaseDrawable()V

    :cond_2
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 192
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 193
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableLockScreen()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 199
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isPictorialExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 200
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isAutoPlaySwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 201
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$asyncUpdateWallpaper$1$PictorialWallpaperHelper(ZZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 8

    const-string v0, "PictorialWallpaperHelper"

    const-string v1, "Keyguard"

    if-nez p4, :cond_0

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "asyncUpdateWallpaper result is nul, key is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mEnable:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "asyncUpdateWallpaper mEnable is false and is in lock screen, key is"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 449
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_1
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$1i1ovWCM3Ms9lNnf9_zAGWL3vZQ;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move v5, p2

    move v6, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$1i1ovWCM3Ms9lNnf9_zAGWL3vZQ;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;ZZLcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThreadAtFront(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$null$0$PictorialWallpaperHelper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;ZZLcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 2

    .line 454
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getPictorialWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object p1

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncUpdateWallpaper load success , requestInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needUpdateWallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialWallpaperHelper"

    .line 456
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 462
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 463
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 465
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->onWallpaperChange(I)V

    goto :goto_0

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 469
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentPreloadDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz p2, :cond_1

    .line 470
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;

    if-eqz p0, :cond_1

    .line 471
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;->onWallpaperChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$null$2$PictorialWallpaperHelper(ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->addToNextLockScreenDrawableCache(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->addToNextPreloadDrawableCache(Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$preloadNextWallpaper$3$PictorialWallpaperHelper(ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadNextWallpaper, isLoadSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialWallpaperHelper"

    .line 513
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    return-void

    .line 521
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mEnable:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    return-void

    .line 525
    :cond_2
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialWallpaperHelper$NCxO2Uq12rkrTaFEDnZctiIrJEc;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;ZLcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyguardDone()V
    .locals 0

    .line 562
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->releaseDrawable()V

    return-void
.end method

.method public onSimStateChange(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    .line 279
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->onSimStateChange(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 280
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 281
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasFetchWallpaperWhenKeyguardShow:Z

    :cond_0
    return-void
.end method

.method public setPreloadWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mPreloadChangeListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;

    return-void
.end method

.method public show()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 256
    :goto_1
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mCurrentLockScreenWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-nez v4, :cond_2

    move v1, v3

    .line 257
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show, keyguardShow : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", infoIsNull : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isScreenOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PictorialWallpaperHelper"

    invoke-static {v4, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->updateAndFetchWallpaper()V

    .line 273
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->mHasFetchWallpaperWhenKeyguardShow:Z

    :cond_3
    return-void
.end method

.method public type()Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
    .locals 0

    .line 287
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Pictorial:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    return-object p0
.end method
