.class public Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;
.super Ljava/lang/Object;
.source "ColorSideGestureManager.java"

# interfaces
.implements Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$DeprecatedInputEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorSideGestureManager"


# instance fields
.field private mBackEventRunnable:Ljava/lang/Runnable;

.field private mColorSideGestureConfiguration:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;

.field private mColorSideGestureDetector:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

.field private mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

.field private mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDownTime:J

.field private mEventHandler:Landroid/os/Handler;

.field private mIsSideGestureMode:Z

.field private mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUIHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 7

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mIsSideGestureMode:Z

    .line 79
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$uclFI6L-6J_ORxunQTzbleKSSsQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$uclFI6L-6J_ORxunQTzbleKSSsQ;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 81
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager$1;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mBackEventRunnable:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDisplay:Landroid/view/Display;

    .line 96
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;-><init>(Landroid/view/Display;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureConfiguration:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;

    .line 97
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-direct {v0, p1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    .line 98
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    iget-object v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDisplay:Landroid/view/Display;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/WindowManager;Landroid/view/Display;Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    .line 99
    new-instance p2, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDisplay:Landroid/view/Display;

    invoke-direct {p2, p1, v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureDetector:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    .line 100
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "GestureBg"

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mEventHandler:Landroid/os/Handler;

    .line 104
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "GestureUI"

    const/4 v0, -0x8

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    .line 108
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onNavigationBarStateChanged()V

    .line 110
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;IIIJ)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->sendEvent(IIIJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private postEvent(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 5

    const-string v0, "ColorSideGestureManager"

    const-string v1, "NavBar"

    .line 216
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "left"

    goto :goto_0

    :cond_0
    const-string v2, "right"

    .line 217
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mEventHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mBackEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    const-string p1, "side_gesture_back"

    invoke-static {p0, p1, v2}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->collectSideGestureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 221
    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->shouldDisableSwitch(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {v3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->isDisableIcon()Z

    move-result v3

    if-nez v3, :cond_4

    .line 223
    :try_start_0
    const-class v3, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v3}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 224
    const-class v3, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v3}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getSide()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->switchPreApp(I)V

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/coloros/systemui/edgepanel/EdgePanelUI;

    invoke-static {p1, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/edgepanel/EdgePanelUI;

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/edgepanel/EdgePanelUI;->onMinimize(Z)V

    .line 230
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    const-string p1, "side_gesture_switch"

    invoke-static {p0, p1, v2}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->collectSideGestureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ColorSideGestureManager switchNextApp"

    .line 231
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Remote exception!"

    .line 233
    invoke-static {v1, v0, p1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p3

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",flags:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",when:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NavBar"

    const-string v4, "ColorSideGestureManager"

    invoke-static {v3, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v1, v0, 0x80

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v15

    .line 243
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mDownTime:J

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v14, v0, 0x40

    const/16 v0, 0x101

    move-object v3, v1

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    move v2, v15

    move v15, v0

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 247
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureDetector:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public checkSideGesture(III)Z
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    iget-boolean v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mIsSideGestureMode:Z

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    .line 167
    invoke-static {p1, p3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getSide(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->isExitAnimFinished(I)Z

    move-result v5

    move v1, p1

    move v2, p2

    move v3, p3

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->checkSideGesture(IIIZZ)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$ColorSideGestureManager(Z)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onNavigationBarStateChanged()V

    return-void
.end method

.method public synthetic lambda$onConfigChanged$4$ColorSideGestureManager()V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onConfigChanged()V

    return-void
.end method

.method public synthetic lambda$onDownEvent$8$ColorSideGestureManager(IZ)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onDownEvent(IZ)V

    return-void
.end method

.method public synthetic lambda$onGestureFinished$7$ColorSideGestureManager(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    return-void
.end method

.method public synthetic lambda$onGetAppIcon$3$ColorSideGestureManager(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onGetAppIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$onPerformHapticFeedback$10$ColorSideGestureManager()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearVibratorSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/gesture/VibrationHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateCustomized(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/gesture/VibrationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/VibrationHelper;->performKeyboardTouchFeedback()Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$onSideGestureDisable$2$ColorSideGestureManager()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->destroyView()V

    return-void
.end method

.method public synthetic lambda$onSideGestureEnable$1$ColorSideGestureManager()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->createView()V

    return-void
.end method

.method public synthetic lambda$onSwipeFailed$5$ColorSideGestureManager()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onSwipeFailed()V

    return-void
.end method

.method public synthetic lambda$onTransitionView$6$ColorSideGestureManager(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onUpdateGestureView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    return-void
.end method

.method public synthetic lambda$onUpEvent$9$ColorSideGestureManager(I)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureViewManager:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureViewManager;->onUpEvent(I)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 144
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mIsSideGestureMode:Z

    if-eqz p1, :cond_0

    .line 147
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->onConfigurationChanged()V

    .line 149
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureDetector:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->onConfigChanged()V

    .line 150
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$9Bg0bFgEXZMX8PWDlG3pr-7noHE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$9Bg0bFgEXZMX8PWDlG3pr-7noHE;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDownEvent(I)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->shouldDisableSwitch(I)Z

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$CSJBkFkip7vgQIfgIeYUTwAjViY;

    invoke-direct {v2, p0, p1, v0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$CSJBkFkip7vgQIfgIeYUTwAjViY;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 2

    .line 186
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->postEvent(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GsRYA9j4pjKSaQOkREwvGnDFFdQ;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGetAppIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$Zlc7_63DP_v_cT6_6sTYH90aBOc;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNavigationBarStateChanged()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getNavState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mIsSideGestureMode:Z

    .line 115
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mIsSideGestureMode:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onSideGestureEnable()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->onSideGestureDisable()V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    if-eqz v0, :cond_3

    .line 122
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 123
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->registerGestureExclusionListener()V

    goto :goto_2

    .line 125
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGesturePreProcess:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGesturePreProcess;->unRegisterGestureExclusionListener()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onPerformHapticFeedback()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$oduV8YIgz9-NOgSLDX-cwp4hFvk;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$oduV8YIgz9-NOgSLDX-cwp4hFvk;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSideGestureDisable()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GKqPZztUEjj_nw0QjlZpXjz3q-0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$GKqPZztUEjj_nw0QjlZpXjz3q-0;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSideGestureEnable()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$KYKjKzkSsWGSJhhn_82CJgfwWJ0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$KYKjKzkSsWGSJhhn_82CJgfwWJ0;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSwipeFailed()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mIsSideGestureMode:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureDetector:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-virtual {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->onGestureFailed()V

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$iPOMIJRrlLgFXUgRgH2kB1ruMqQ;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$iPOMIJRrlLgFXUgRgH2kB1ruMqQ;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSwipeSuccess(I)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mColorSideGestureDetector:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->onSwipeSuccess()V

    return-void
.end method

.method public onTransitionView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$RLdW2w4jOxt6R1orP5y25zO2nrk;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$RLdW2w4jOxt6R1orP5y25zO2nrk;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpEvent(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
