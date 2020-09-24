.class public Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;
.super Lcom/coloros/common/manager/ComponentManager;
.source "ColorOSSystemUiManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ColorOSSystemUiManager"

.field private static final sColorOSSystemUiManager:Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    invoke-direct {v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->sColorOSSystemUiManager:Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/coloros/common/manager/ComponentManager;-><init>()V

    return-void
.end method

.method private addComponent()V
    .locals 3

    .line 216
    const-class v0, Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 217
    const-class v0, Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/CollapsedStatusBarFragmentHelperImpl;->getInstance()Lcom/coloros/systemui/statusbar/phone/helper/ICollapsedStatusBarFragmentHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 218
    const-class v0, Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->getInstance()Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 219
    const-class v0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    new-instance v1, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    iget-object v2, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 220
    const-class v0, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 221
    const-class v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 222
    const-class v0, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-static {}, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->getInstance()Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 223
    const-class v0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 224
    const-class v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getInstance()Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 225
    const-class v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 226
    const-class v0, Lcom/coloros/systemui/qs/PageIndicatorExt;

    invoke-static {}, Lcom/coloros/systemui/qs/PageIndicatorExt;->getInstance()Lcom/coloros/systemui/qs/PageIndicatorExt;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 227
    const-class v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 228
    const-class v0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 229
    const-class v0, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;->getInstance(Landroid/content/Context;)Lcom/coloros/customize/systemui/statusbar/policy/MobileSignalExpController;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 230
    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 231
    const-class v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;
    .locals 1

    .line 94
    sget-object v0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->sColorOSSystemUiManager:Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    return-object v0
.end method

.method private loadFeatureOption(Landroid/content/Context;)V
    .locals 0

    .line 235
    invoke-static {p1}, Lcom/coloros/common/feature/FeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 236
    invoke-static {p1}, Lcom/coloros/common/feature/ColorOSFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 237
    invoke-static {p1}, Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 238
    invoke-static {p1}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 239
    invoke-static {p1}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 240
    invoke-static {p1}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 241
    invoke-static {p1}, Lcom/coloros/systemui/common/edgepanel/feature/EdgePanelFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 242
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->loadFeatureOption(Landroid/content/Context;)V

    .line 243
    invoke-static {p1}, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/coloros/common/util/Util;->loadUtilOption()V

    .line 245
    invoke-static {p1}, Lcom/coloros/common/feature/RealmeFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 206
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 207
    invoke-static {}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 208
    invoke-static {}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->getInstance()Lcom/coloros/systemui/common/observer/TalkbackObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 209
    invoke-static {}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->getInstance()Lcom/coloros/systemui/common/observer/SplitScreenObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/observer/SplitScreenObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 210
    invoke-static {}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->getInstance()Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/systemui/common/observer/DevelopmentSettingsObserver;->register(Landroid/content/Context;IZ)V

    .line 211
    invoke-static {}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 212
    invoke-static {}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->getInstance()Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v2}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 195
    invoke-static {}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/receiver/RomUpdateReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 196
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 197
    invoke-static {}, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/ForceClearReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/receiver/ForceClearReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 198
    invoke-static {}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 199
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 200
    sget-object v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->Companion:Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;->getInstance()Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 201
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 202
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/ResourceUtil;->init(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->loadFeatureOption(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/common/thread/ThreadManager;->start()V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/common/thread/ThreadManager;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/common/util/LogUtil;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 121
    invoke-static {p1}, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->init(Landroid/content/Context;)V

    .line 123
    sget-object p1, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->initStatusBarAnimBlackList(Landroid/content/Context;)V

    .line 125
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->init()V

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/AppNavigationBarList;->init(Landroid/content/Context;)V

    .line 129
    iget-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/GestureAppList;->init(Landroid/content/Context;)V

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onStart(Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mHandler:Landroid/os/Handler;

    .line 142
    iput-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 143
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent()V

    .line 147
    invoke-static {}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->getInstance()Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->checkValidity(Landroid/content/Context;)V

    .line 149
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->registerObserver()V

    .line 151
    const-class p1, Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/NotificationCenterManager;

    .line 152
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->initExt(Landroid/content/Context;)V

    .line 155
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onStartEnd()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-class v0, Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/NotificationCenterManager;

    .line 168
    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 170
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->registerReceiver()V

    .line 172
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerMultiUserListener()V

    .line 174
    invoke-static {}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->getInstance()Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/settingsvalue/SettingsValueProxyManager;->registerMultiUserListener(Landroid/content/Context;)V

    .line 176
    invoke-static {}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->getInstance()Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->sendMsgs(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->getInstance()Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
