.class public Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardEngineContainer.java"


# static fields
.field private static final KEYGUARD_WALLPAPER_STATISTICS_SETTINGS:Ljava/lang/String; = "keyguard_wallpaper_statistics_settings"

.field private static final TAG:Ljava/lang/String; = "KeyguardEngineContainer"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mBouncerShow:Z

.field private mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

.field private mColorKeyguardView:Landroid/view/View;

.field private mCurrentProcessY:F

.field private mHostCallback:Lcom/android/keyguard/base/HostCallback;

.field private mIsQsExpanded:Z

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardPluginManager:Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;

.field private mLastFlipFont:I

.field private mLastLocale:Ljava/lang/String;

.field private mLoadColorKeyguardSuccess:Z

.field private mMonitorCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

.field private mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarState:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserSwitching:Z

.field private mViewFlag:I

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 86
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, ""

    .line 69
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastLocale:Ljava/lang/String;

    .line 262
    new-instance p2, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$1;-><init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 289
    new-instance p2, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;-><init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 306
    new-instance p2, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$3;-><init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mMonitorCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    .line 340
    new-instance p2, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$4;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$4;-><init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 442
    new-instance p2, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;-><init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mHostCallback:Lcom/android/keyguard/base/HostCallback;

    .line 91
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->needReloadColorKeyguard()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->showOrHideColorKeyguard()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mBouncerShow:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mBouncerShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->onVisibilityChange(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$702(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object p0
.end method

.method private inflate()V
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardEngineContainer#inflate"

    .line 134
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->loadColorKeyguard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLoadColorKeyguardSuccess:Z

    .line 139
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLoadColorKeyguardSuccess:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->setVisibility(I)V

    .line 140
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    move-result-object v2

    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLoadColorKeyguardSuccess:Z

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->dispatchColorKeyguardLoad(Z)V

    .line 141
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-eqz p0, :cond_2

    .line 142
    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->getExtraWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 141
    :goto_1
    invoke-virtual {v2, p0}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->dispatchSetBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastLocale:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastFlipFont:I

    .line 102
    :cond_1
    new-instance v0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardPluginManager:Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;

    .line 103
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 104
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 105
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private initColorKeyguard()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    invoke-interface {v1}, Lcom/android/keyguard/base/IKeyguardCtrl;->checkNeedsInput()V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mHostCallback:Lcom/android/keyguard/base/HostCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/base/IKeyguardCtrl;->setHostCallback(Lcom/android/keyguard/base/HostCallback;)V

    .line 166
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    check-cast v1, Lcom/android/keyguard/base/ColorKeyguardCtrl;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->checkNeedsChangeWallpaper(Z)Z

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    invoke-interface {v0}, Lcom/android/keyguard/base/IKeyguardCtrl;->onScreenTurnedOff()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    invoke-interface {v0}, Lcom/android/keyguard/base/IKeyguardCtrl;->getExactLockView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    .line 171
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->showOrHideColorKeyguard()V

    .line 172
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isColorKeyguardEnable()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedShow()Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mBouncerShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUserSwitching:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 431
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mCurrentProcessY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 432
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 433
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mIsQsExpanded:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadColorKeyguard()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardPluginManager:Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->loadKeyguard(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadColorKeyguard : mColorKeyguard = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardEngineContainer"

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-nez v0, :cond_1

    return v1

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->writeKeyguardStatisticsSettings()V

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->initColorKeyguard()Z

    move-result p0

    return p0
.end method

.method private needReloadColorKeyguard()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardPluginManager:Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->maybeReloadNormalKeyguard(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 223
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v1

    .line 224
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-nez v0, :cond_3

    if-eq v1, v2, :cond_4

    .line 227
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeReloadKeyguardMainPager , maybeReload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", defaultKeyguardInSettings = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", defaultKeyguardInCurrent = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardEngineContainer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->reloadColorKeyguard()V

    :cond_4
    return-void
.end method

.method private onVisibilityChange(Z)V
    .locals 2

    .line 394
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->isColorKeyguardEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChange show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 398
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardEngineContainer"

    .line 397
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 399
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->reset()V

    goto :goto_0

    .line 402
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->onRemoveWhenDouble()V

    :goto_0
    return-void
.end method

.method private reloadColorKeyguard()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->removeColorKeyguard()V

    .line 237
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->inflate()V

    return-void
.end method

.method private removeColorKeyguard()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lcom/android/keyguard/base/IKeyguardCtrl;->cleanUp()V

    .line 243
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/base/IKeyguardCtrl;->setHostCallback(Lcom/android/keyguard/base/HostCallback;)V

    .line 244
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->removeAllViews()V

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardPluginManager:Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->clearKeyguardPlugIn()V

    .line 246
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    .line 247
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLoadColorKeyguardSuccess:Z

    :cond_0
    return-void
.end method

.method private showOrHideColorKeyguard()V
    .locals 1

    .line 407
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->isColorKeyguardEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->show()V

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->hide()V

    :goto_0
    return-void
.end method

.method private writeKeyguardStatisticsSettings()V
    .locals 4

    .line 126
    iget v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mViewFlag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 129
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyguard_wallpaper_statistics_settings"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public allowInterceptTouch()Z
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 501
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 502
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 503
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUserSwitching:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mBouncerShow:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hide()V
    .locals 2

    const-string v0, "KeyguardEngineContainer"

    const-string v1, "hide"

    .line 351
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-eqz p0, :cond_0

    .line 353
    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->hide()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 178
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 179
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 180
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v2, 0x2

    .line 181
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mMonitorCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 184
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->inflate()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 198
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const-string v1, "KeyguardEngineContainer"

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged, locale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mLastLocale= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 203
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->reloadColorKeyguard()V

    .line 206
    :cond_0
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastLocale:Ljava/lang/String;

    .line 209
    :cond_1
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged. font = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastFlipFont = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastFlipFont:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastFlipFont:I

    if-eq p1, v0, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->reloadColorKeyguard()V

    .line 214
    iput p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLastFlipFont:I

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->needReloadColorKeyguard()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 190
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 191
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 192
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mMonitorCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 119
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->setTop(I)V

    .line 121
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 489
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguardView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setProcessY(F)V
    .locals 3

    .line 365
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->isColorKeyguardEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    move p1, v2

    .line 377
    :cond_3
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mCurrentProcessY:F

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 380
    :cond_4
    iput p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mCurrentProcessY:F

    .line 381
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->showOrHideColorKeyguard()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mIsQsExpanded:Z

    .line 386
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->showOrHideColorKeyguard()V

    return-void
.end method

.method public setViewFlag(I)V
    .locals 2

    .line 109
    iput p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mViewFlag:I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewFlag flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardEngineContainer"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mViewFlag:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mLoadColorKeyguardSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 255
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "KeyguardEngineContainer"

    const-string v1, "show"

    .line 358
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->mColorKeyguard:Lcom/android/keyguard/base/IKeyguardCtrl;

    if-eqz p0, :cond_0

    .line 360
    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->show()V

    :cond_0
    return-void
.end method
