.class public Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;
.super Ljava/lang/Object;
.source "ColorOSNavigationBarManager.java"


# static fields
.field public static final APP_UNLOCK_PASS_WORD_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.safecenter.privacy.view.password.AppUnlockPasswordActivity"

.field public static final BREENO_PANEL_PACKAGE_NAME:Ljava/lang/String; = "BreenoSmartPanel"

.field public static final BREENO_PKG_NAME:Ljava/lang/String; = "com.coloros.personalassistant"

.field public static final EDGE_PANEL_PACKAGE_NAME:Ljava/lang/String; = "ColorOSEdgePanel"

.field public static final EXTRA_NAVIGATION_MODE:Ljava/lang/String; = "NAVIGATION_MODE"

.field public static final GALLERY_DIALOG_PACKAGE_NAME:Ljava/lang/String; = "com.oppo.gallery3d.app.DialogPicker"

.field public static final OPPO_CAMEARA_PACKAGE_NAME:Ljava/lang/String; = "com.oppo.camera.Camera"

.field public static final PERSONAL_ASSISTANT_PANEL_STATE_CHANGE:Ljava/lang/String; = "coloros.intent.action.personalassistant.PANEL_STATE_CHANGE"

.field public static final PERSONAL_ASSISTANT_PANEL_STATE_KEY:Ljava/lang/String; = "isShow"

.field public static final SMART_DRIVE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.smartdrive"

.field public static final SPEECH_ASSIST_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.speechassist"

.field public static final STATUS_BAR_PANEL_PACKAGE_NAME:Ljava/lang/String; = "StatusBar"

.field public static final TAG:Ljava/lang/String; = "ColorOSNavigationBarManager"

.field private static final sColorOSNavigationBarManager:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;


# instance fields
.field private mBarTransitionOpaqueInSplitScreen:Z

.field private final mBreenoPanelStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBreenoPid:I

.field private mCanShowAndHideNavBar:Z

.field private mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mExService:Landroid/os/IOppoExService;

.field private mExpandedVisible:Z

.field private mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

.field private mLayoutDirection:I

.field private mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mProcessMonitorCount:I

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field public mShortcutsCenterGestureDirection:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    invoke-direct {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->sColorOSNavigationBarManager:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OPPOExService"

    .line 97
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IOppoExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoExService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mExService:Landroid/os/IOppoExService;

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mLayoutDirection:I

    .line 105
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 107
    new-instance v1, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorOSNavigationBarManager$MjpJhch3pJMHwSfPzc3UFeDPxaQ;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorOSNavigationBarManager$MjpJhch3pJMHwSfPzc3UFeDPxaQ;-><init>(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)V

    iput-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBarTransitionOpaqueInSplitScreen:Z

    const/4 v2, 0x1

    .line 279
    iput-boolean v2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mCanShowAndHideNavBar:Z

    .line 281
    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBreenoPid:I

    .line 282
    iput v1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    .line 284
    new-instance v0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$1;-><init>(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBreenoPanelStateReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager$2;-><init>(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessObserver:Landroid/app/IProcessObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setupBreenoPid(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBreenoPid:I

    return p0
.end method

.method static synthetic access$206(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)I
    .locals 1

    .line 75
    iget v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;)Landroid/app/IProcessObserver;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessObserver:Landroid/app/IProcessObserver;

    return-object p0
.end method

.method public static getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;
    .locals 1

    .line 112
    sget-object v0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->sColorOSNavigationBarManager:Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    return-object v0
.end method

.method private getProcessPid(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 353
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 354
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 355
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 357
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_2
    return v0
.end method

.method private registerObservers(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 120
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/VirtualKeyCombinationTypeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 121
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 122
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 123
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 124
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 125
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 126
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 127
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 128
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 129
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 130
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureKeysModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method private setupBreenoPid(Z)V
    .locals 2

    const-string v0, "com.coloros.personalassistant"

    .line 321
    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getProcessPid(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBreenoPid:I

    .line 322
    iget v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBreenoPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->updateProcessObserver(Z)V

    .line 326
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->onBreenoPannelChange(Z)V

    :cond_0
    return-void
.end method

.method private updateProcessObserver(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 337
    iget p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    goto :goto_0

    .line 339
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessMonitorCount:I

    if-nez p1, :cond_1

    .line 340
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NavBar"

    const-string v0, "ColorOSNavigationBarManager"

    const-string v1, "register or unregister process error "

    .line 344
    invoke-static {p1, v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateShortcutsCenterGestureDirection()V
    .locals 2

    .line 186
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getSwipeUpGestureKeysMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 189
    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    .line 191
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShortcutsCenterGestureDirection() mLayoutDirection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShortcutsCenterGestureDirection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorOSNavigationBarManager"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canShowAndHideNavBar()Z
    .locals 0

    .line 374
    iget-boolean p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mCanShowAndHideNavBar:Z

    return p0
.end method

.method public disableShowAndHideNavBar(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 370
    iput-boolean p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mCanShowAndHideNavBar:Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    invoke-interface {p0, p1, p2, p3}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getBarTransitionOpaqueInSplitScreen()Z
    .locals 0

    .line 446
    iget-boolean p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBarTransitionOpaqueInSplitScreen:Z

    return p0
.end method

.method public getBreenoPanelStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBreenoPanelStateReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public getColorNavigationBarController()Lcom/coloros/systemui/navbar/IColorNavigationBarController;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    return-object p0
.end method

.method public getExpandVisible()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mExpandedVisible:Z

    return p0
.end method

.method public getGestureKeysMode()I
    .locals 0

    .line 219
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureKeysModeObserver;->getSwipeUpGestureKeysMode()I

    move-result p0

    return p0
.end method

.method public getHomeMenuKeyIgnoreState()I
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->getHomeMenuKeyIgnoreState()I

    move-result p0

    goto :goto_0

    :cond_0
    sget p0, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    :goto_0
    return p0
.end method

.method public getNavState()I
    .locals 0

    .line 210
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getNavState()I

    move-result p0

    return p0
.end method

.method public getNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p0

    return-object p0
.end method

.method public getTopIsFullscreen()Z
    .locals 0

    .line 258
    invoke-static {}, Lcom/coloros/common/util/AppInfoUtil;->getTopIsFullscreen()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mContext:Landroid/content/Context;

    .line 135
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->registerObservers(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->updateShortcutsCenterGestureDirection()V

    return-void
.end method

.method public isDeviceProvisioned()Z
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public isGestureBarShow()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->isGestureUpGuideBarShown()Z

    move-result p0

    return p0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureTransitionMode()Z
    .locals 3

    .line 246
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isGestureUpMode()Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

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

.method public isKeyguardLocked()Z
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavGestureMode()Z
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSplitScreen()Z
    .locals 7

    .line 413
    invoke-static {}, Lcom/color/splitscreen/ColorSplitScreenManager;->getInstance()Lcom/color/splitscreen/ColorSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/splitscreen/ColorSplitScreenManager;->getTopAppSplitScreenState()I

    move-result v0

    .line 414
    invoke-static {}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->getCurrentTopAppTitleName()Ljava/lang/String;

    move-result-object v1

    .line 415
    iget-object v2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mContext:Landroid/content/Context;

    .line 416
    invoke-static {v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 418
    :goto_1
    invoke-static {}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getInstance()Lcom/color/zoomwindow/ColorZoomWindowManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getCurrentZoomWindowState()Lcom/color/zoomwindow/ColorZoomWindowInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 420
    iget-boolean v5, v5, Lcom/color/zoomwindow/ColorZoomWindowInfo;->windowShown:Z

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    .line 423
    :goto_2
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenEnable(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v4, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_3
    const/16 v6, 0x3e9

    if-ne v0, v6, :cond_4

    .line 426
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.oppo.launcher"

    .line 427
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ColorOSEdgePanel"

    .line 428
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "StatusBar"

    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BreenoSmartPanel"

    .line 430
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.heytap.speechassist"

    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.coloros.smartdrive"

    .line 432
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.coloros.safecenter.privacy.view.password.AppUnlockPasswordActivity"

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.oppo.camera.Camera"

    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.oppo.gallery3d.app.DialogPicker"

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    if-nez v5, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method public synthetic lambda$new$0$ColorOSNavigationBarManager(Z)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->updateShortcutsCenterGestureDirection()V

    return-void
.end method

.method public notifyBarTransitionsSplitScreenChange(Z)V
    .locals 3

    .line 397
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    const/4 v2, 0x1

    .line 403
    iput-boolean v2, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBarTransitionOpaqueInSplitScreen:Z

    :cond_1
    if-nez p1, :cond_2

    .line 406
    iput-boolean v1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mBarTransitionOpaqueInSplitScreen:Z

    .line 407
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    return-void
.end method

.method public notifyPanelExpandChanged(Z)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->onPanelExpandChanged(Z)V

    :cond_0
    return-void
.end method

.method public onBarTransition(I)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->onBarTransition(I)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    if-eqz p0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 464
    invoke-static {}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setColorNavigationBarController(Lcom/coloros/systemui/navbar/IColorNavigationBarController;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->onDestroy()V

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    return-void
.end method

.method public setExpandVisible(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mExpandedVisible:Z

    return-void
.end method

.method public setForceTransparentBackground(Z)V
    .locals 0

    .line 151
    invoke-static {}, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->getInstance()Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->setForceTransparentBackground(Z)V

    return-void
.end method

.method public setNavigationBarController(Lcom/android/systemui/statusbar/NavigationBarController;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public setSystemGestureManager(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->onDestroy()V

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mGestureManager:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    return-void
.end method

.method public startGestureBarAnimation(II)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0, p1, p2}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->startGestureUpGuideBarAnimation(II)V

    :cond_0
    return-void
.end method

.method public toggleSplitScreenMode(I)V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->isSplitScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/coloros/common/util/Util;->isInFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Common"

    const-string v0, "ColorOSNavigationBarManager"

    const-string v1, "toggleSplitScreenMode freeform showing, do not split screen!"

    .line 384
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mContext:Landroid/content/Context;

    const p1, 0x7f11062c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 391
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->toggleSplitScreenMode(I)V

    return-void
.end method

.method public topAppWindowChanged(IZ)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p0, :cond_0

    .line 459
    invoke-interface {p0}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->onTopWindowChanged()V

    :cond_0
    return-void
.end method

.method public updateNavBarVisibility(I)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p0, :cond_0

    .line 263
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->updateNavBarVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateNavBarVisibility(ILjava/lang/String;)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mColorNavigationBarController:Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    if-eqz p0, :cond_0

    .line 269
    invoke-interface {p0, p1, p2}, Lcom/coloros/systemui/navbar/IColorNavigationBarController;->updateNavBarVisibility(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
