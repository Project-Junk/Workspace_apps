.class public Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;
.super Ljava/lang/Object;
.source "KeyguardFakeAppLayer.java"


# static fields
.field private static final COLOR_BLACK:I = -0x1000000

.field private static final GOING_AWAY_FLAG:I = 0x3e8

.field public static final HIDE_FAKE_LAYER_DELAY:I = 0x1f4

.field private static final HIDE_FAKE_LAYER_VSYNC_DELAY:I = 0x10

.field private static final RESET_TIMEOUT_AFTER_LAYER_COMPOSE:I = 0x5dc

.field private static final RESET_TIMEOUT_AFTER_VIEW_SHOW:I = 0x1388

.field public static final SURFACEFLINGER_COMPOSE_LAYER_CODE:I = 0x520b

.field private static final TAG:Ljava/lang/String; = "KeyguardFakeAppLayer"

.field private static final WALLPAPER_TYPE_DYNAMIC:I = 0x2

.field private static final WALLPAPER_TYPE_IMAGE:I = 0x1

.field private static final WALLPAPER_TYPE_NONE:I

.field private static sInstance:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

.field public static sWorkHandler:Landroid/os/Handler;


# instance fields
.field private volatile mAccepts:I

.field private volatile mAppLayerShown:Z

.field private volatile mComposed:Z

.field private mContext:Landroid/content/Context;

.field private final mDockedStackListener:Lcom/coloros/systemui/stackdivider/ISplitScreenListener;

.field private volatile mFakeAppLayer:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mInDockStackMode:Z

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mResetTask:Ljava/lang/Runnable;

.field private volatile mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVisibilityTask:Ljava/lang/Runnable;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperType:I

.field private final mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

.field private mWallpaperVisible:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z

    .line 89
    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$1;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mResetTask:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$2;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    .line 106
    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$3;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mDockedStackListener:Lcom/coloros/systemui/stackdivider/ISplitScreenListener;

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyguardFakeAppLayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sWorkHandler:Landroid/os/Handler;

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "window"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "wallpaper"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 131
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->initWithDependency()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->hideImpl()V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperVisible:Z

    return p1
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mInDockStackMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Landroid/view/IWallpaperVisibilityListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Lcom/coloros/systemui/stackdivider/ISplitScreenListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mDockedStackListener:Lcom/coloros/systemui/stackdivider/ISplitScreenListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->showImpl()V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)Landroid/widget/ImageView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    return-object p0
.end method

.method private declared-synchronized composeFakeAppLayerImpl(Z)V
    .locals 3

    monitor-enter p0

    .line 431
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 432
    monitor-exit p0

    return-void

    .line 434
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z

    .line 435
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x5dc

    .line 436
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->resetVisibility(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    const-string v0, "KeyguardFakeAppLayer"

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeFakeAppLayerImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 441
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-string v1, "KeyguardFakeAppLayer"

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 443
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/16 v2, 0x520b

    .line 444
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->talkToSurfaceFlinger(ILandroid/os/Parcel;)V

    if-eqz p1, :cond_3

    .line 446
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->highlightControl(Landroid/content/Context;Z)V

    .line 447
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->composeFpIconLayerImpl(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    :catch_0
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private finishDreamService()V
    .locals 2

    .line 414
    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$8;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$8;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 427
    invoke-virtual {v0, p0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;
    .locals 2

    const-class v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sInstance:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sInstance:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    .line 118
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sInstance:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private hideImpl()V
    .locals 4

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->composeFakeAppLayerImpl(Z)V

    .line 374
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x8

    const-string v2, "FakeAppLayer#hideImpl"

    .line 375
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "KeyguardFakeAppLayer"

    const-string v3, "hideImpl"

    .line 376
    invoke-static {v2, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 379
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iput-object v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    .line 381
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    return-void
.end method

.method private initWithDependency()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$4;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 191
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 193
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getBaseDisplayWidth()I

    move-result v3

    .line 197
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getBaseDisplayHeight()I

    move-result v4

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 199
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v5, v3, :cond_1

    if-gt v6, v4, :cond_1

    .line 201
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 203
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    sget-object v4, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_4

    .line 206
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_4

    .line 207
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v5, v4, :cond_4

    .line 208
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v6, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    return-object v2

    .line 214
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processWallpaperDrawable w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scissor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardFakeAppLayer"

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v0, v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_4
    :goto_0
    return-object v2
.end method

.method private resetVisibility(J)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetVisibility delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFakeAppLayer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 388
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resumeActivityForBiometricsUnlock()V
    .locals 2

    .line 398
    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$7;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$7;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 410
    invoke-virtual {v0, p0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showImpl()V
    .locals 6

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    if-ne v0, v1, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 335
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 336
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_7

    const-wide/16 v2, 0x8

    const-string v0, "FakeAppLayer#showImpl"

    .line 337
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v0, "KeyguardFakeAppLayer"

    const-string v4, "showImpl"

    .line 338
    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 339
    invoke-direct {p0, v4}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->composeFakeAppLayerImpl(Z)V

    .line 340
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    .line 341
    iget v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    if-eq v4, v1, :cond_3

    .line 342
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_3
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v5, -0x2

    .line 345
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v5, 0x7df

    .line 346
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 347
    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x510

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 351
    iget v5, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    if-ne v5, v1, :cond_4

    .line 352
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne v5, v1, :cond_6

    .line 354
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->processWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 356
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    const-string p0, "showImpl skip..."

    .line 357
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 364
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v0, 0x1388

    .line 367
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->resetVisibility(J)V

    .line 368
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    return-void
.end method

.method private skipForOppoLauncher()Z
    .locals 3

    .line 392
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 393
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "launcher_state"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized composeFakeAppLayer(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 287
    :try_start_0
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mInDockStackMode:Z

    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->resumeActivityForBiometricsUnlock()V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->finishDreamService()V

    .line 291
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mVisibilityTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->setStatusBarShow(Z)V

    .line 295
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->composeFakeAppLayerImpl(Z)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isHasWakingUp()Z

    move-result p1

    if-nez p1, :cond_2

    .line 301
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->setStatusBarShow(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "KeyguardFakeAppLayer"

    const-string v0, "No screenshot and has waking-up"

    .line 303
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAppLayerShown:Z

    .line 308
    sget-object p1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sWorkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$6;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isFakeAppLayerComposed()Z
    .locals 0

    .line 455
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z

    return p0
.end method

.method public onStartGoingToSleep()V
    .locals 6

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAppLayerShown:Z

    .line 152
    invoke-virtual {p0, v0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V

    .line 154
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->needVerify()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "KeyguardFakeAppLayer"

    if-eqz v2, :cond_0

    const-string v2, "onStartGoingToSleep, need verify"

    .line 156
    invoke-static {v5, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->skipForOppoLauncher()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onStartGoingToSleep, recents"

    .line 159
    invoke-static {v5, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    goto :goto_0

    .line 161
    :cond_1
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mInDockStackMode:Z

    if-eqz v2, :cond_2

    const-string v2, "onStartGoingToSleep, in DockStackMode"

    .line 162
    invoke-static {v5, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "onStartGoingToSleep, showing"

    .line 165
    invoke-static {v5, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    goto :goto_0

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_4

    .line 169
    iput v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    goto :goto_0

    .line 171
    :cond_4
    iput v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    :goto_0
    if-eqz v1, :cond_5

    goto :goto_1

    .line 176
    :cond_5
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperVisible:Z

    if-eqz v1, :cond_7

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 178
    iput v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    goto :goto_1

    .line 180
    :cond_6
    iput v3, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    goto :goto_1

    .line 183
    :cond_7
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    .line 184
    iget v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    if-ne v0, v3, :cond_8

    .line 185
    iput v4, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    :cond_8
    :goto_1
    return-void
.end method

.method public declared-synchronized setFakeAppLayerVisibility(ZI)V
    .locals 3

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerTouchDownNow()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ne p1, v0, :cond_2

    .line 245
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    const-string p1, "KeyguardFakeAppLayer"

    const-string p2, "setFakeAppLayerVisibility, skip show"

    .line 249
    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 253
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 255
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAppLayerShown:Z

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "KeyguardFakeAppLayer"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFakeAppLayerVisibility, show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mVisibilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    new-instance v0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$5;-><init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;Z)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mVisibilityTask:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    if-lez p2, :cond_5

    .line 277
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mVisibilityTask:Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 278
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_6

    .line 279
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mVisibilityTask:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 281
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mVisibilityTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :goto_2
    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    :try_start_3
    const-string p1, "KeyguardFakeAppLayer"

    const-string p2, "setFakeAppLayerVisibility, skip hide"

    .line 257
    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_8

    const-wide/16 p1, 0x5dc

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->resetVisibility(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScreenshot(Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 222
    :try_start_0
    iget v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    if-gtz v1, :cond_0

    const-string p1, "KeyguardFakeAppLayer"

    const-string v0, "setScreenshot, cancel"

    .line 223
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    .line 227
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    const-string p1, "KeyguardFakeAppLayer"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenshot, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    .line 229
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    const-string p1, "KeyguardFakeAppLayer"

    const-string v1, "setScreenshot, clear"

    .line 232
    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mScreenShot:Landroid/graphics/drawable/BitmapDrawable;

    .line 235
    iput v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mAccepts:I

    .line 237
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->setFakeAppLayerVisibility(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unlockWithoutTransition()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mFakeAppLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->mComposed:Z

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
