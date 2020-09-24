.class public Lcom/coloros/systemui/gesture/ColorSystemGestureManager;
.super Lcom/android/systemui/shared/system/RotationWatcher;
.source "ColorSystemGestureManager.java"


# static fields
.field private static final CANCEL_SEND_DELAY_TIME:I = 0xc8

.field static final GESTURE_FULL_SCREEN:I = 0x7d1

.field static final GESTURE_HINT:I = 0x7d2

.field static final GESTURE_NONE:I = 0x7d0

.field static final GESTURE_SIDE:I = 0x7d3

.field static final GESTURE_TRANSIENT_BAR:I = 0x7d4

.field public static final INVALID_ACTION_DOWN:I = 0x3e9

.field private static final PROCESS_TIME_OUT:J = 0x32L

.field public static final SUCCEED_ACTION_DOWN:I = 0x3ea

.field static final SWIPE_FROM_BOTTOM:I = 0x1

.field static final SWIPE_FROM_LEFT:I = 0x3

.field static final SWIPE_FROM_RIGHT:I = 0x2

.field static final SWIPE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorSystemGestureManager"

.field public static final VALID_ACTION_DOWN:I = 0x3e8

.field private static sMotionDownTime:J

.field private static sReceiveDownTime:J


# instance fields
.field private final MAX_LOAD_OPPO_EXSERVICE_WAIT_TIME:I

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBarController:Lcom/coloros/systemui/gesture/TransientBarController;

.field private mBottomGestureAreaHeight:I

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelTimeOutRunnable:Ljava/lang/Runnable;

.field private mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

.field private mContext:Landroid/content/Context;

.field private mCurloadOppoExServiceWaitTime:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mExService:Landroid/os/IOppoExService;

.field private mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

.field private mGestureDownState:I

.field private mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

.field private mGestureMode:I

.field private mGestureTransitionDownTime:Ljava/lang/Long;

.field private mHandler:Landroid/os/Handler;

.field private mHasMoveEvent:Z

.field private mHasRegistered:Z

.field private mHeight:I

.field private mInputReceiver:Landroid/os/IOppoExInputCallBack$Stub;

.field private mIsImeWindowTop:Z

.field private mIsPanelExpanded:Z

.field private mIsSendDownEvent:Z

.field private mIsValidTouchEvent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPointerEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryGetOppoExServiceCallback:Ljava/lang/Runnable;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShouldIgnoreInPinningGestureMode:Z

.field private mSideGestureAreaWidth:I

.field private mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSwipeDirection:I

.field private mSystemGestures:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

.field private mSystemGesturesCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

.field private mUpEvent:Landroid/view/MotionEvent;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/KeyguardManager;Landroid/os/Handler;)V
    .locals 4

    .line 357
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/RotationWatcher;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mExService:Landroid/os/IOppoExService;

    const/16 v1, 0x3e9

    .line 76
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureDownState:I

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsSendDownEvent:Z

    .line 78
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasMoveEvent:Z

    .line 79
    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCancelEvent:Landroid/view/MotionEvent;

    .line 80
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsValidTouchEvent:Z

    const-wide/16 v2, 0x0

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureTransitionDownTime:Ljava/lang/Long;

    .line 91
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    .line 92
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSideGestureAreaWidth:I

    .line 93
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    .line 94
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    .line 95
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    .line 96
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    .line 97
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mRotation:I

    .line 98
    iput v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSwipeDirection:I

    const/16 v2, 0x7d0

    .line 99
    iput v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    .line 100
    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    .line 101
    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mUpEvent:Landroid/view/MotionEvent;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mPointerEvent:Ljava/util/ArrayList;

    .line 106
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsPanelExpanded:Z

    .line 108
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsImeWindowTop:Z

    .line 110
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasRegistered:Z

    .line 115
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mShouldIgnoreInPinningGestureMode:Z

    .line 121
    new-instance v0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$1;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSystemGesturesCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    .line 210
    new-instance v0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$2;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCancelTimeOutRunnable:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager$3;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mInputReceiver:Landroid/os/IOppoExInputCallBack$Stub;

    const/16 v0, 0x3e8

    .line 350
    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCurloadOppoExServiceWaitTime:I

    const v0, 0x927c0

    .line 351
    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->MAX_LOAD_OPPO_EXSERVICE_WAIT_TIME:I

    .line 353
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$QprOrl5NI8nJfV5kupXpBAMX5BI;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$QprOrl5NI8nJfV5kupXpBAMX5BI;-><init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mRetryGetOppoExServiceCallback:Ljava/lang/Runnable;

    .line 358
    iput-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    .line 359
    iput-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 360
    iput-object p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHandler:Landroid/os/Handler;

    .line 361
    iput-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    .line 362
    iput-object p2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 363
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->enable()V

    .line 364
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->loadOppoExService()V

    .line 366
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    const-string p4, "window"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWindowManager:Landroid/view/WindowManager;

    .line 367
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b0013

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    .line 368
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b0019

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSideGestureAreaWidth:I

    .line 369
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 370
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplay:Landroid/view/Display;

    .line 372
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplay:Landroid/view/Display;

    iget-object p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p3, p4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 373
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    .line 374
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    .line 376
    iget-object p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    .line 377
    new-instance p4, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSystemGesturesCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-direct {p4, v0, v2}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;-><init>(Landroid/content/Context;Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;)V

    iput-object p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSystemGestures:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    .line 379
    new-instance p4, Landroid/os/HandlerThread;

    const-string v0, "GestureBg"

    const/16 v2, 0xa

    invoke-direct {p4, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    .line 382
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 383
    new-instance p4, Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBackgroundHandler:Landroid/os/Handler;

    invoke-direct {p4, p1, p2, v0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    .line 386
    new-instance p4, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    invoke-direct {p4, v0, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    .line 387
    new-instance p2, Lcom/coloros/systemui/gesture/TransientBarController;

    invoke-direct {p2}, Lcom/coloros/systemui/gesture/TransientBarController;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBarController:Lcom/coloros/systemui/gesture/TransientBarController;

    .line 388
    const-class p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-interface {p2, p4}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 393
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 394
    new-instance p2, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    invoke-direct {p2, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    .line 395
    iget-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->enableShowHintWindow(Z)V

    .line 396
    iget-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    iget p2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget p4, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {p1, p2, p4, p3}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->setScreenSize(III)V

    .line 400
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    .line 403
    invoke-direct {p0, p3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->updateScreenSize(I)V

    .line 404
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isNavGestureMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->createInputReceiver()V

    .line 407
    :cond_1
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {}, Lcom/coloros/systemui/gesture/ColorInputInjector;->getInstance()Lcom/coloros/systemui/gesture/ColorInputInjector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSwipeDirection:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSwipeDirection:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->injectAllEvent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasMoveEvent:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasMoveEvent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsValidTouchEvent:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsValidTouchEvent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsSendDownEvent:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsSendDownEvent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureDownState:I

    return p0
.end method

.method static synthetic access$1302(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureDownState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/app/KeyguardManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->offsetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;Z)I
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->verifyValidTouchDown(Landroid/view/MotionEvent;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCancelTimeOutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    return p0
.end method

.method static synthetic access$2000(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->notifyCancel2SideGesture()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mRotation:I

    return p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/FullScreenGestureControl;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->clearLastEvent()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/view/MotionEvent;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCancelEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$802(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCancelEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearLastDownEvent()V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 692
    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private clearLastEvent()V
    .locals 2

    .line 682
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->clearLastDownEvent()V

    .line 683
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->clearLastUpEvent()V

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mPointerEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mPointerEvent:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearLastUpEvent()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mUpEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private createInputReceiver()V
    .locals 2

    .line 441
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mExService:Landroid/os/IOppoExService;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mInputReceiver:Landroid/os/IOppoExInputCallBack$Stub;

    invoke-interface {v0, v1}, Landroid/os/IOppoExService;->registerInputEvent(Landroid/os/IOppoExInputCallBack;)Z

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failing registerInputEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSystemGestureManager"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private destroyInputReceiver()V
    .locals 2

    .line 451
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mExService:Landroid/os/IOppoExService;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mInputReceiver:Landroid/os/IOppoExInputCallBack$Stub;

    invoke-interface {v0, v1}, Landroid/os/IOppoExService;->unregisterInputEvent(Landroid/os/IOppoExInputCallBack;)V

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHasRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failing unregisterInputEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSystemGestureManager"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getScreenHeight()I
    .locals 3

    .line 785
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 786
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 787
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 788
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 789
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 790
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private getScreenWidth()I
    .locals 3

    .line 765
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 766
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 767
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 768
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 769
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 770
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method private getVerifyState(Landroid/view/MotionEvent;Z)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v9, p2

    const-string v2, "NavBar"

    const-string v10, "ColorSystemGestureManager"

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    const/16 v11, 0x3e9

    if-nez v0, :cond_c

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 544
    iget-object v0, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 545
    invoke-direct {v1, v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->updateScreenSize(I)V

    const/4 v4, 0x0

    .line 549
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDockedStackSide error "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v10, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v4

    .line 553
    :goto_0
    iget-object v5, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/common/util/Util;->isScreenShotEditWindow(Landroid/content/Context;)Z

    move-result v14

    .line 556
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isNavGestureMode()Z

    move-result v5

    const/16 v15, 0x3e8

    const/16 v16, 0x3ea

    if-eqz v5, :cond_8

    .line 557
    invoke-direct {v1, v12, v13, v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->isEffectiveRangeBottomGesture(III)Z

    move-result v5

    .line 558
    invoke-direct {v1, v12, v13, v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->isEffectiveSwipeUpPinningRangeGesture(III)Z

    move-result v7

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    .line 559
    invoke-direct {v1, v12, v13, v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->isEffectiveRangeSideGesture(III)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v4

    .line 560
    :goto_1
    invoke-virtual {v1, v6, v5, v12}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->checkInValidRangeInPinningGesturesUp(IZI)V

    .line 561
    iget-boolean v3, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mShouldIgnoreInPinningGestureMode:Z

    if-eqz v3, :cond_2

    const-string v0, "VerifyState should ignore MotionEvent in Pinning Gesture Mode."

    .line 562
    invoke-static {v2, v10, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_2
    if-nez v5, :cond_5

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_b

    .line 581
    iget-object v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-virtual {v2, v12, v13, v6}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->checkSideGesture(III)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7d3

    .line 582
    iput v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    goto :goto_4

    .line 585
    :cond_4
    sget-boolean v2, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->sDetectToView:Z

    if-eqz v2, :cond_b

    goto :goto_5

    .line 566
    :cond_5
    :goto_2
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureNavigationDisable()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    iget-boolean v3, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsPanelExpanded:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsImeWindowTop:Z

    if-nez v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    move/from16 v3, p2

    move v4, v12

    move v5, v13

    move v8, v14

    .line 567
    invoke-virtual/range {v2 .. v8}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->checkFullScreenGesture(ZIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v9, :cond_7

    .line 571
    iget-object v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-virtual {v2}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->getSwipeActionState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->checkTransitionViewGesture(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/16 v2, 0x7d1

    .line 574
    iput v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    goto :goto_4

    .line 593
    :cond_8
    invoke-direct {v1, v12, v13, v6}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->isEffectiveRangeNavBar(III)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->isTwoButtonNavBar()Z

    move-result v2

    if-nez v2, :cond_b

    .line 595
    iget-object v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBarController:Lcom/coloros/systemui/gesture/TransientBarController;

    invoke-virtual {v2}, Lcom/coloros/systemui/gesture/TransientBarController;->isTransient()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x7d4

    .line 596
    iput v2, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    :goto_4
    move/from16 v11, v16

    goto :goto_6

    .line 598
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->isScreenScaled(J)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_5
    move v11, v15

    .line 605
    :cond_b
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyValidTouchDown isLockScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsPanelExpanded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsPanelExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsImeWindowTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mIsImeWindowTop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mStatusBar.isCustomizing(): isScreenShotEditWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " downX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " downY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mGestureMode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    invoke-static {v1, v10, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return v11
.end method

.method private injectAllEvent()V
    .locals 4

    .line 499
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSwipeDirection:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 501
    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/gesture/ColorInputInjector;->getInstance()Lcom/coloros/systemui/gesture/ColorInputInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mUpEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mPointerEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    goto :goto_1

    .line 502
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do not inject because downX is out of side downX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mWidth:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Common"

    const-string v1, "ColorSystemGestureManager"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    const/16 v0, 0x7d0

    .line 508
    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    return-void
.end method

.method private isEffectiveRangeBottomGesture(III)Z
    .locals 2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEffectiveRangeBottom  x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mWidth "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mHeight "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mBottomGestureAreaHeight "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Common"

    const-string v1, "ColorSystemGestureManager"

    invoke-static {v0, v1, p3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getNavState()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    return v0

    .line 631
    :cond_0
    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    sub-int/2addr p3, v1

    if-le p2, p3, :cond_1

    if-ltz p1, :cond_1

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    if-gt p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isEffectiveRangeNavBar(III)Z
    .locals 3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEffectiveRangeNavBar  x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHeight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSideGestureAreaHeight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSideGestureAreaWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBottomGestureAreaHeight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    if-ge p1, p0, :cond_3

    goto :goto_1

    .line 659
    :cond_1
    iget p2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    sub-int/2addr p2, p0

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 654
    :cond_2
    iget p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    sub-int/2addr p1, p0

    if-le p2, p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isEffectiveRangeSideGesture(III)Z
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEffectiveRangeSide  x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mWidth "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mHeight "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mSideGestureAreaHeight "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSideGestureAreaWidth:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Common"

    const-string v1, "ColorSystemGestureManager"

    invoke-static {v0, v1, p3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSideGestureAreaWidth:I

    sub-int/2addr p3, v0

    if-gt p1, p3, :cond_0

    if-ge p1, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    sub-int/2addr p1, p0

    if-ge p2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isEffectiveSwipeUpPinningRangeGesture(III)Z
    .locals 3

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEffectiveSwipeUpPinningRangeGesture  x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getNavState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 845
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->isGestureUpRangePinningMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    if-ne p3, v2, :cond_3

    .line 849
    :cond_1
    iget p3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    sub-int/2addr p3, v2

    if-gt p1, p3, :cond_2

    if-gt p1, v2, :cond_3

    :cond_2
    if-ltz p2, :cond_3

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    if-gt p2, p0, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private isScreenScaled(J)Z
    .locals 6

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 744
    sget-wide v2, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->sMotionDownTime:J

    cmp-long p0, v2, p1

    if-nez p0, :cond_0

    sget-wide v2, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->sReceiveDownTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    .line 746
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sReceiveDownTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->sReceiveDownTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sMotionDownTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->sMotionDownTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " time:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string p2, "ColorSystemGestureManager"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isTwoButtonNavBar()Z
    .locals 1

    .line 704
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getVirtualKeyCombinationType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private notifyCancel2SideGesture()V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onSwipeFailed()V

    return-void
.end method

.method private notifySwipeFiel()V
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSystemGestures:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->notifySwipeFail()V

    return-void
.end method

.method private offsetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 23

    move-object/from16 v0, p1

    .line 315
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getScale()F

    move-result v1

    .line 317
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getOffsetX()I

    move-result v2

    .line 318
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getOffsetY()I

    move-result v3

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 323
    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    .line 324
    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    const/16 v20, 0x0

    move/from16 p0, v15

    move/from16 v15, v20

    :goto_0
    if-ge v15, v9, :cond_0

    .line 334
    new-instance v20, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v20, v10, v15

    .line 335
    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v20, v11, v15

    move/from16 v20, v14

    .line 336
    aget-object v14, v10, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 337
    aget-object v14, v11, v15

    invoke-virtual {v0, v15, v14}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 338
    aget-object v14, v11, v15

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move/from16 v22, v13

    int-to-float v13, v2

    sub-float v21, v21, v13

    div-float v13, v21, v1

    iput v13, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 339
    aget-object v13, v11, v15

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    int-to-float v0, v3

    sub-float/2addr v14, v0

    div-float/2addr v14, v1

    iput v14, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v14, v20

    move/from16 v13, v22

    goto :goto_0

    :cond_0
    move/from16 v22, v13

    move/from16 v20, v14

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "offsetEvent scale:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "ColorSystemGestureManager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v13, v22

    move/from16 v15, p0

    .line 343
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method

.method public static setDownTime(J)V
    .locals 0

    .line 754
    sput-wide p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->sMotionDownTime:J

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->sReceiveDownTime:J

    return-void
.end method

.method private updateScreenSize(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    .line 517
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    goto :goto_1

    .line 513
    :cond_1
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    .line 514
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    .line 522
    :goto_1
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget v2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->setScreenSize(III)V

    .line 527
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSystemGestures:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->setScreenSize(II)V

    .line 528
    iget-object p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->setScreenSize(II)V

    .line 529
    invoke-static {}, Lcom/coloros/systemui/gesture/ColorInputInjector;->getInstance()Lcom/coloros/systemui/gesture/ColorInputInjector;

    move-result-object p1

    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHeight:I

    invoke-virtual {p1, v0, p0}, Lcom/coloros/systemui/gesture/ColorInputInjector;->setScreenSize(II)V

    return-void
.end method

.method private verifyValidTouchDown(Landroid/view/MotionEvent;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 617
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mShouldIgnoreInPinningGestureMode:Z

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->getVerifyState(Landroid/view/MotionEvent;Z)I

    move-result p0

    const/16 p2, 0x3e8

    if-ne p0, p2, :cond_0

    .line 620
    invoke-static {}, Lcom/coloros/systemui/gesture/ColorInputInjector;->getInstance()Lcom/coloros/systemui/gesture/ColorInputInjector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/gesture/ColorInputInjector;->injectMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 467
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mGestureMode:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mFullScreenGestureControl:Lcom/coloros/systemui/gesture/FullScreenGestureControl;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->addPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_2

    .line 473
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->addPointerEvent(Landroid/view/MotionEvent;)V

    .line 476
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## addPointerEvent event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorSystemGestureManager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mPointerEvent:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mPointerEvent:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mUpEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 479
    :cond_6
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->clearLastEvent()V

    .line 480
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mDownEvent:Landroid/view/MotionEvent;

    .line 495
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSystemGestures:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->addPointerEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public checkInValidRangeInPinningGesturesUp(IZI)V
    .locals 2

    .line 826
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getNavState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 827
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->isGestureUpRangePinningMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 832
    iget p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    if-gt p3, p1, :cond_4

    .line 833
    :cond_1
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mShouldIgnoreInPinningGestureMode:Z

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_4

    if-nez p2, :cond_3

    .line 836
    iget p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mWidth:I

    iget p2, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mBottomGestureAreaHeight:I

    sub-int/2addr p1, p2

    if-le p3, p1, :cond_4

    .line 837
    :cond_3
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mShouldIgnoreInPinningGestureMode:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public checkTransitionViewGesture(I)Z
    .locals 2

    .line 713
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkTransitionViewGesture swipeArea:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " getGestureKeysMode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mStatusBar.getNavState() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSystemGestureManager"

    .line 713
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 717
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    if-eq p0, v0, :cond_0

    .line 718
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 719
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    const/16 p0, 0xfa2

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHomeMenuKeyIgnoreState()I
    .locals 0

    .line 731
    sget p0, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    return p0
.end method

.method loadOppoExService()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mExService:Landroid/os/IOppoExService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OPPOExService"

    .line 414
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mExService:Landroid/os/IOppoExService;

    .line 415
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mExService:Landroid/os/IOppoExService;

    if-nez v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->retryGetOppoExService()V

    goto :goto_0

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->createInputReceiver()V

    const-string p0, "NavBar"

    const-string v0, "ColorSystemGestureManager"

    const-string v1, "load OppoExService success"

    .line 419
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBreenoPannelChange(Z)V
    .locals 1

    .line 808
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    if-eqz p0, :cond_0

    .line 809
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->setBreenoStatus(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 760
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenWidth:I

    .line 761
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mScreenHeight:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 735
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mSingleHandGesture:Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;

    if-eqz p0, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onNavigationBarStateChanged()V
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mColorSideGestureManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onNavigationBarStateChanged()V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 1

    .line 534
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->updateScreenSize(I)V

    .line 535
    iput p1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mRotation:I

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRotationChanged  mRotation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mRotation:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Common"

    const-string v0, "ColorSystemGestureManager"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method retryGetOppoExService()V
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHandler:Landroid/os/Handler;

    const-string v1, "ColorSystemGestureManager"

    const-string v2, "NavBar"

    if-nez v0, :cond_0

    const-string p0, "retryGetOppoExService mHandler is null"

    .line 425
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCurloadOppoExServiceWaitTime:I

    const v3, 0x927c0

    if-ge v0, v3, :cond_1

    add-int/lit16 v3, v0, 0x3e8

    .line 432
    iput v3, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mCurloadOppoExServiceWaitTime:I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 436
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryGetOppoExService mCurloadOppoExServiceWaitTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->mRetryGetOppoExServiceCallback:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
