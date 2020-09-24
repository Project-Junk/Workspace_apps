.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/ShadeController;
.implements Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;
.implements Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;,
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/StatusBar$H;
    }
.end annotation


# static fields
.field public static final ACTION_FAKE_ARTWORK:Ljava/lang/String; = "fake_artwork"

.field protected static final APP_OPS:[I

.field private static final BANNER_ACTION_CANCEL:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_cancel"

.field private static final BANNER_ACTION_SETUP:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_setup"

.field public static final CHATTY:Z = false

.field protected static final CLOSE_PANEL_WHEN_EMPTIED:Z = true

.field public static final DEBUG:Z = false

.field public static final DEBUG_CAMERA_LIFT:Z = false

.field public static final DEBUG_GESTURES:Z = false

.field public static final DEBUG_MEDIA_FAKE_ARTWORK:Z = false

.field public static final DEBUG_WINDOW_STATE:Z = false

.field public static final DUMPTRUCK:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field public static final ENABLE_LOCKSCREEN_WALLPAPER:Z = true

.field public static final FADE_KEYGUARD_DURATION:I = 0x12c

.field public static final FADE_KEYGUARD_DURATION_PULSING:I = 0x60

.field public static final FADE_KEYGUARD_START_DELAY:I = 0x64

.field private static final HINT_RESET_DELAY_MS:I = 0x4b0

.field private static final LAUNCH_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field protected static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0x3ff

.field private static final MSG_CLOSE_PANELS:I = 0x3e9

.field protected static final MSG_DISMISS_KEYBOARD_SHORTCUTS_MENU:I = 0x403

.field protected static final MSG_HIDE_RECENT_APPS:I = 0x3fc

.field private static final MSG_LAUNCH_TRANSITION_TIMEOUT:I = 0x3eb

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_SETTINGS_PANEL:I = 0x3ea

.field protected static final MSG_PRELOAD_RECENT_APPS:I = 0x3fe

.field protected static final MSG_TOGGLE_KEYBOARD_SHORTCUTS_MENU:I = 0x402

.field public static final MULTIUSER_DEBUG:Z = false

.field public static final ONLY_CORE_APPS:Z

.field public static final SHOW_LOCKSCREEN_MEDIA_ARTWORK:Z = true

.field public static final SPEW:Z = false

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final TAG:Ljava/lang/String; = "StatusBar"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mAbsPos:[I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private mAmbientIndicationContainer:Landroid/view/View;

.field protected mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field protected mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field protected mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field protected mBouncerShowing:Z

.field private mBouncerWasShowingWhenHidden:Z

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessMirrorVisible:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private mCameraLaunchGestureVibePattern:[J

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mCurrentDisplaySize:Landroid/graphics/Point;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private final mDemoReceiver:Landroid/content/BroadcastReceiver;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled1:I

.field private mDisabled2:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayId:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field protected mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandedVisible:Z

.field protected mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field protected mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field protected mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field protected mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field protected final mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHideIconsForBouncer:Z

.field protected mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInteractingWindows:I

.field protected mIsKeyguard:Z

.field private mIsOccluded:Z

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field protected mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastCameraLaunchSource:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private mLastFlipFont:I

.field private final mLastFullscreenStackBounds:Landroid/graphics/Rect;

.field private mLastLoggedStateFingerprint:I

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraWhenFinishedWaking:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field protected mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected mLockscreenWallpaper:Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNaturalBarHeight:I

.field protected mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoAnimationOnNextBarModeChange:Z

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private final mNotificationAlertingManager:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

.field protected mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

.field protected mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field protected mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field protected mPanelExpanded:Z

.field private mPendingRemoteInputView:Landroid/view/View;

.field private mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

.field private final mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPulsing:Z

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQueueLock:Ljava/lang/Object;

.field protected mRecents:Lcom/android/systemui/recents/Recents;

.field protected mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mReportRejectedTouch:Landroid/view/View;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field protected mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

.field protected mStackScroller:Landroid/view/ViewGroup;

.field final mStartTracing:Ljava/lang/Runnable;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarStateLog:Landroid/metrics/LogMaker;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field protected mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mStatusBarWindowHidden:Z

.field private mStatusBarWindowState:I

.field final mStopTracing:Ljava/lang/Runnable;

.field private mSystemUiVisibility:I

.field private final mTmpInt2:[I

.field private mTopHidesStatusBar:Z

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUserSetup:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mVibrateOnOpening:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field protected mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field private mWakeUpComingFromTouch:Z

.field mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWereIconsJustHidden:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.child_notifs"

    const/4 v1, 0x1

    .line 288
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 338
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 339
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 340
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    :try_start_0
    const-string v0, "package"

    .line 358
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    const/4 v0, 0x5

    .line 683
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->APP_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x1a
        0x18
        0x1b
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, -0x1

    .line 387
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 389
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 398
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 403
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    .line 424
    const-class v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 425
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    const/4 v1, 0x2

    .line 431
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    .line 432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 444
    const-class v2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    .line 445
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationAlertingManager:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    .line 448
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 449
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 452
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 453
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    .line 454
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 456
    const-class v2, Landroid/util/DisplayMetrics;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/DisplayMetrics;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    .line 459
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 465
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 468
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 473
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFlipFont:I

    .line 483
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    .line 515
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 524
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 556
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    .line 570
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 607
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 619
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yGW3L-liHoPrdVSisJBkD7OsnTE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yGW3L-liHoPrdVSisJBkD7OsnTE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    .line 634
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 635
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 637
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 652
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    .line 662
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$be2UvXBqvJVkeR4_MOL5Z579OFk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$be2UvXBqvJVkeR4_MOL5Z579OFk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    .line 2159
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$hcoUGmHpwgtk12ln4V8HNBe6RFA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$hcoUGmHpwgtk12ln4V8HNBe6RFA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 2590
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 2944
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2998
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 3273
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 3284
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$RAI9_BB0sxI6fAXVPwmNkObnx6k;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$RAI9_BB0sxI6fAXVPwmNkObnx6k;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 4120
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 4196
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 4695
    const-class v0, Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AmbientPulseManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    .line 4714
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4715
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4739
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5111
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 0

    .line 278
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)[I
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p1
.end method

.method private areLightsOn()Z
    .locals 1

    .line 2631
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private barMode(I)I
    .locals 2

    const/high16 p0, 0x4000000

    and-int/2addr p0, p1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x9

    const/16 v1, 0x9

    if-ne p0, v1, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private dismissVolumeDialog()V
    .locals 0

    .line 2611
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz p0, :cond_0

    .line 2612
    invoke-interface {p0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 3380
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p0, :cond_0

    return-void

    .line 3381
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 3382
    instance-of p3, p0, Lcom/android/systemui/DemoMode;

    if-eqz p3, :cond_1

    .line 3383
    check-cast p0, Lcom/android/systemui/DemoMode;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    const-string v0, "  "

    .line 2780
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ".BarTransitions.mMode="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2781
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .locals 2

    .line 3034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3037
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .line 2584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 2587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->finishBarAnimations(I)V

    return-void
.end method

.method public static getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    .line 4953
    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    .line 4955
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_0
    const/4 v0, 0x4

    .line 4959
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 4960
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x9

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xa

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0xb

    or-int/2addr p0, p1

    shl-int/lit8 p1, p5, 0xc

    or-int/2addr p0, p1

    return p0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 3

    if-ltz p1, :cond_0

    .line 5024
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5031
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3311
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private handleVisibleToUserChangedImpl(Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 3179
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result p1

    .line 3180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 3181
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3184
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 3185
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz p1, :cond_2

    .line 3186
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 3190
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HmJQbKES5h2Nfz54WrIvhU_YRh4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HmJQbKES5h2Nfz54WrIvhU_YRh4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 3199
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_2
    return-void
.end method

.method private inflateShelf()V
    .locals 4

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1396
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    const v2, 0x7f0d0201

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initKeyguardSlideLayout(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 1

    .line 5088
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0317

    .line 5091
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    if-eqz v0, :cond_1

    .line 5093
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setStatusBarWindowView(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    .line 5094
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    :cond_1
    const p0, 0x7f0a0310

    .line 5096
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    if-eqz p0, :cond_2

    .line 5098
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    :cond_2
    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .line 3851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 3852
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method private isGoingToSleep()Z
    .locals 1

    .line 4347
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWakingUpOrAwake()Z
    .locals 3

    .line 4352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4353
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic lambda$GDSEpzokV1v2-uNGuP8V5K9Jrjw(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method private synthetic lambda$dump$16()V
    .locals 3

    .line 2723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLocationOnScreen([I)V

    .line 2724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatusBarView: ----- ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 2725
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    .line 2724
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->debug()V

    return-void
.end method

.method public static synthetic lambda$h1YVkfulr3o8W-Bsc2YTikmPmYI(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method static synthetic lambda$maybeEscalateHeadsUp$13(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2052
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 2053
    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 2063
    :try_start_0
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 2064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$30(Ljava/lang/Runnable;)V
    .locals 1

    .line 4896
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4899
    :catch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$rvCsIQdHonxFrWe7zDPDF5dVrCc(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V

    return-void
.end method

.method static synthetic lambda$setWindowState$15()V
    .locals 2

    .line 2418
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    const/4 v1, 0x1

    .line 2419
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateCircleProgressAnimation(Z)V

    return-void
.end method

.method static synthetic lambda$startActivityDismissingKeyguard$18(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, -0x60

    .line 2887
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_0
    return-void
.end method

.method private logStateToEventlog()V
    .locals 9

    .line 3211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 3212
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    .line 3213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v7

    .line 3214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v8

    .line 3215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v6

    .line 3216
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v4, v7

    move v5, v8

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v1

    .line 3222
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v1, v2, :cond_3

    .line 3223
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v2, :cond_0

    .line 3224
    new-instance v2, Landroid/metrics/LogMaker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 3226
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-eqz v7, :cond_1

    const/16 v4, 0xc5

    goto :goto_0

    :cond_1
    const/16 v4, 0xc4

    .line 3227
    :goto_0
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 3228
    :goto_1
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 3229
    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 3226
    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3239
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    :cond_3
    return-void
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 2

    .line 3490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 3491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 3494
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    .line 3498
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    .line 3500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->setLaunchTransitionFadingAway(Z)V

    .line 3501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "Launch transition: Timeout!"

    .line 3598
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 3600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3601
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    return-void
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 4947
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .line 3663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3664
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .line 3605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3610
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3611
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    .line 2232
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2234
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2238
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method private setUpPresenter()V
    .locals 32

    move-object/from16 v0, p0

    .line 1274
    new-instance v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1278
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1281
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/SystemUIFactory;->provideAllowNotificationLongPress()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;-><init>(Landroid/content/Context;Z)V

    .line 1283
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationAlertingManager:Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    move-object v5, v2

    move-object/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 1288
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationListController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationListController;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    .line 1295
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBar;->APP_OPS:[I

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 1296
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    .line 1297
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1299
    const-class v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 1300
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 1302
    const-class v2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 1303
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/plugins/ActivityStarter;

    .line 1305
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    move-object v3, v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v24, v1

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v1

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 1312
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 1313
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v29, v1

    invoke-direct/range {v3 .. v29}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/bubbles/BubbleController;)V

    move-object/from16 v1, v31

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1315
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1317
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setRowBinder(Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;)V

    .line 1318
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationClicker;

    const-class v3, Lcom/android/systemui/bubbles/BubbleController;

    .line 1319
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/BubbleController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1318
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinderImpl;->setNotificationClicker(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V

    .line 1321
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->bind(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1322
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListController:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->bind()V

    return-void
.end method

.method private showBouncerIfKeyguard()V
    .locals 3

    .line 3805
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 3806
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3807
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method private updateDozing()V
    .locals 4

    .line 3950
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 3951
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3955
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v0, v1

    .line 3960
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setIsDozing(Z)Z

    return-void
.end method

.method private updateDozingState()V
    .locals 5

    .line 3720
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const-wide/16 v1, 0x1000

    const-string v3, "dozing"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v0, "StatusBar#updateDozingState"

    .line 3721
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3724
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToSleepVisibleNotOccluded()Z

    move-result v0

    .line 3725
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3727
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 3728
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateScreenOff()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    .line 3730
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3731
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3732
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateHideIconsForBouncer(Z)V
    .locals 4

    .line 1950
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1952
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 1954
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-eq v0, v1, :cond_6

    .line 1955
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v1, :cond_5

    .line 1956
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    if-eqz v0, :cond_5

    .line 1959
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 1960
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_tjqT6RfwAJrgby0kQAoLzFakt4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_tjqT6RfwAJrgby0kQAoLzFakt4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1965
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 1969
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    :cond_7
    return-void
.end method

.method private updateIsKeyguard()Z
    .locals 5

    .line 3409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3416
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v3, :cond_1

    .line 3417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenFullyOff()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 3418
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v3, :cond_5

    .line 3421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_5
    if-eqz v2, :cond_7

    .line 3424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 3425
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 3428
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguardImpl()V

    :goto_3
    return v1

    .line 3431
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguardImpl()Z

    move-result p0

    return p0
.end method

.method private updateKeyguardState()V
    .locals 4

    .line 3964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 3965
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3966
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    .line 3964
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZZ)V

    .line 3969
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3970
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideNotificationIndication()V

    :cond_0
    return-void
.end method

.method private updateNotificationPanelTouchState()V
    .locals 5

    .line 4190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 4191
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4192
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v4, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    if-eqz p0, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchAndAnimationDisabled(Z)V

    return-void
.end method

.method private updatePanelExpansionForKeyguard()V
    .locals 4

    .line 3471
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_1

    .line 3477
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v2, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    if-eqz v0, :cond_0

    .line 3478
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v2

    const-class v3, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v2}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getHomePressed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3479
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    if-eqz v1, :cond_2

    .line 3480
    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getHomePressed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3481
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedFraction(F)V

    goto :goto_1

    .line 3484
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .locals 3

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1568
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 1569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateQsExpansionEnabled - QS Expand enabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateReportRejectedTouchVisibility()V
    .locals 3

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1653
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 1654
    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 1653
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private vibrateForCameraGesture()V
    .locals 2

    .line 4235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1340
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 3505
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1574
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    const/4 v0, 0x0

    .line 2156
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2185
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2191
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2195
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 0

    if-nez p2, :cond_0

    .line 2200
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz p2, :cond_0

    .line 2201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 2211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 p2, 0x3fc

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2212
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 2213
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 2218
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mStatusBarWindow: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " canPanelBeCollapsed(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2219
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBar"

    .line 2218
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2222
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    .line 2224
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 2225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    goto :goto_0

    .line 2227
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    :goto_0
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 3

    .line 2288
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 2289
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .line 2260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2264
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithoutQs()V

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 1

    .line 2272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2277
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 2280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Ljava/lang/String;)V

    .line 2282
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    return-void
.end method

.method public animateKeyguardUnoccluding()V
    .locals 2

    .line 3583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedFraction(F)V

    .line 3584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    return-void
.end method

.method public appTransitionCancelled(I)V
    .locals 1

    .line 4266
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 4267
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onAppTransitionFinished()V

    :cond_0
    return-void
.end method

.method public appTransitionFinished(I)V
    .locals 1

    .line 4273
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 4274
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onAppTransitionFinished()V

    :cond_0
    return-void
.end method

.method public areLaunchAnimationsEnabled()Z
    .locals 0

    .line 2008
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public areNotificationsHidden()Z
    .locals 0

    .line 1589
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->areNotificationsHiddenInShade()Z

    move-result p0

    return p0
.end method

.method awakenDreams()V
    .locals 2

    .line 4810
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1WMogreweqZK6K0lu_QDplFsRxA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1WMogreweqZK6K0lu_QDplFsRxA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .line 4829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4830
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    .line 2578
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2580
    :goto_0
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method checkBarModes()V
    .locals 3

    .line 2564
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2565
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 2566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    .line 2565
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2567
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->checkNavBarModes(I)V

    const/4 v0, 0x0

    .line 2568
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 4988
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1585
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->clickTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public closeShadeIfOpen()Z
    .locals 4

    .line 3826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 3829
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 3830
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    return v1
.end method

.method public collapsePanel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4768
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    goto :goto_0

    .line 4770
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    const/4 p1, 0x0

    .line 4772
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    goto :goto_0

    .line 4774
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    :cond_2
    :goto_0
    return-void
.end method

.method public collapsePanel()Z
    .locals 3

    .line 4780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 4782
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 4784
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    return v2

    :cond_0
    return v1
.end method

.method public collapseShade()V
    .locals 1

    .line 4112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelCurrentTouch()V

    .line 4115
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_1

    .line 4116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    :cond_1
    return-void
.end method

.method protected computeBarMode(II)I
    .locals 0

    .line 2538
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(I)I

    move-result p1

    .line 2539
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method protected computeStatusBarMode(II)I
    .locals 0

    .line 2530
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(II)I

    move-result p0

    return p0
.end method

.method public createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 1

    .line 2785
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 2786
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 2787
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->add(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected createDefaultQSFragment()Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    .line 1260
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    const-class v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .locals 1

    .line 1754
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 2

    .line 1369
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 1372
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getColorNavigationBarController()Lcom/coloros/systemui/navbar/IColorNavigationBarController;

    move-result-object v0

    const/4 v1, 0x1

    .line 1369
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/coloros/systemui/navbar/IColorNavigationBarController;)V

    return-void
.end method

.method protected createUserSwitcher()V
    .locals 5

    .line 1451
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a031b

    .line 1452
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0a0303

    .line 1453
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public disable(IIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1662
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    .line 1665
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result v2

    .line 1667
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v4, 0x2

    .line 1668
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    xor-int/2addr v3, v1

    .line 1670
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 1672
    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    xor-int/2addr v4, v2

    .line 1674
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 1683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable<"

    .line 1684
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x10000

    and-int v7, v1, v6

    if-eqz v7, :cond_1

    const/16 v8, 0x45

    goto :goto_0

    :cond_1
    const/16 v8, 0x65

    .line 1685
    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v6, v3

    const/16 v9, 0x20

    if-eqz v6, :cond_2

    const/16 v10, 0x21

    goto :goto_1

    :cond_2
    move v10, v9

    .line 1686
    :goto_1
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v10, 0x20000

    and-int v11, v1, v10

    const/16 v12, 0x49

    const/16 v13, 0x69

    if-eqz v11, :cond_3

    move v11, v12

    goto :goto_2

    :cond_3
    move v11, v13

    .line 1687
    :goto_2
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v10, v3

    if-eqz v10, :cond_4

    const/16 v10, 0x21

    goto :goto_3

    :cond_4
    move v10, v9

    .line 1688
    :goto_3
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v10, 0x40000

    and-int v11, v1, v10

    if-eqz v11, :cond_5

    const/16 v14, 0x41

    goto :goto_4

    :cond_5
    const/16 v14, 0x61

    .line 1689
    :goto_4
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v10, v3

    if-eqz v10, :cond_6

    const/16 v14, 0x21

    goto :goto_5

    :cond_6
    move v14, v9

    .line 1690
    :goto_5
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x100000

    and-int v15, v1, v14

    const/16 v16, 0x53

    const/16 v17, 0x73

    if-eqz v15, :cond_7

    move/from16 v15, v16

    goto :goto_6

    :cond_7
    move/from16 v15, v17

    .line 1691
    :goto_6
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v14, v3

    if-eqz v14, :cond_8

    const/16 v14, 0x21

    goto :goto_7

    :cond_8
    move v14, v9

    .line 1692
    :goto_7
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x400000

    and-int v15, v1, v14

    if-eqz v15, :cond_9

    const/16 v15, 0x42

    goto :goto_8

    :cond_9
    const/16 v15, 0x62

    .line 1693
    :goto_8
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v14, v3

    if-eqz v14, :cond_a

    const/16 v14, 0x21

    goto :goto_9

    :cond_a
    move v14, v9

    .line 1694
    :goto_9
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x200000

    and-int v15, v1, v14

    if-eqz v15, :cond_b

    const/16 v15, 0x48

    goto :goto_a

    :cond_b
    const/16 v15, 0x68

    .line 1695
    :goto_a
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v14, v3

    if-eqz v14, :cond_c

    const/16 v14, 0x21

    goto :goto_b

    :cond_c
    move v14, v9

    .line 1696
    :goto_b
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v14, 0x1000000

    and-int/2addr v14, v1

    if-eqz v14, :cond_d

    const/16 v15, 0x52

    goto :goto_c

    :cond_d
    const/16 v15, 0x72

    .line 1697
    :goto_c
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v15, 0x1000000

    and-int/2addr v15, v3

    if-eqz v15, :cond_e

    const/16 v8, 0x21

    goto :goto_d

    :cond_e
    move v8, v9

    .line 1698
    :goto_d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x800000

    and-int/2addr v8, v1

    if-eqz v8, :cond_f

    const/16 v8, 0x43

    goto :goto_e

    :cond_f
    const/16 v8, 0x63

    .line 1699
    :goto_e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x800000

    and-int/2addr v8, v3

    if-eqz v8, :cond_10

    const/16 v8, 0x21

    goto :goto_f

    :cond_10
    move v8, v9

    .line 1700
    :goto_f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x2000000

    and-int/2addr v8, v1

    if-eqz v8, :cond_11

    move/from16 v8, v16

    goto :goto_10

    :cond_11
    move/from16 v8, v17

    .line 1701
    :goto_10
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x2000000

    and-int/2addr v3, v8

    if-eqz v3, :cond_12

    const/16 v3, 0x21

    goto :goto_11

    :cond_12
    move v3, v9

    .line 1702
    :goto_11
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "> disable2<"

    .line 1703
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_13

    const/16 v3, 0x51

    goto :goto_12

    :cond_13
    const/16 v3, 0x71

    .line 1704
    :goto_12
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_14

    const/16 v8, 0x21

    goto :goto_13

    :cond_14
    move v8, v9

    .line 1705
    :goto_13
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_15

    goto :goto_14

    :cond_15
    move v12, v13

    .line 1706
    :goto_14
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_16

    const/16 v8, 0x21

    goto :goto_15

    :cond_16
    move v8, v9

    .line 1707
    :goto_15
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    const/16 v2, 0x4e

    goto :goto_16

    :cond_17
    const/16 v2, 0x6e

    .line 1708
    :goto_16
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_18

    const/16 v9, 0x21

    .line 1709
    :cond_18
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e

    .line 1710
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1711
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_19

    if-eqz v7, :cond_19

    .line 1715
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    :cond_19
    if-eqz v15, :cond_1a

    if-eqz v14, :cond_1a

    .line 1722
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 1723
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    :cond_1a
    if-eqz v10, :cond_1c

    .line 1728
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    if-eqz v11, :cond_1b

    const/4 v5, 0x1

    goto :goto_17

    :cond_1b
    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setDisableNotificationAlerts(Z)V

    :cond_1c
    if-eqz v3, :cond_1d

    .line 1733
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    :cond_1d
    if-eqz v2, :cond_1e

    .line 1737
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1e

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 1745
    :cond_1e
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getPanelEnableCallback()Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1747
    invoke-virtual {v1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getPanelEnableCallback()Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;->notifyEnable()V

    const/4 v0, 0x0

    .line 1748
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->setPanelEnableCallback(Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;)V

    :cond_1f
    return-void
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    .line 4864
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    .line 4836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4837
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 3047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 3048
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3049
    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3057
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 3060
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :goto_0
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3041
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 3319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sysui_demo_allowed"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    .line 3323
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "enter"

    .line 3324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "exit"

    if-eqz v3, :cond_3

    .line 3325
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    goto :goto_1

    .line 3326
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3327
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    .line 3328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_1

    .line 3329
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-nez v3, :cond_5

    .line 3331
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3333
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    const-string v3, "volume"

    .line 3334
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v3, :cond_9

    .line 3335
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/volume/VolumeComponent;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    if-nez v0, :cond_a

    const-string v3, "clock"

    .line 3337
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const v3, 0x7f0a016b

    .line 3338
    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_b
    if-nez v0, :cond_c

    const-string v3, "battery"

    .line 3340
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3341
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    if-nez v0, :cond_e

    const-string v3, "status"

    .line 3343
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3344
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3346
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v3, :cond_11

    if-nez v0, :cond_10

    const-string v3, "network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3347
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_11
    const/4 v3, 0x4

    if-nez v0, :cond_12

    const-string v4, "notifications"

    .line 3349
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3350
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_4

    :cond_13
    const v5, 0x7f0a03fe

    .line 3351
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_15

    const-string v5, "visible"

    .line 3353
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3354
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v6, :cond_14

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_5

    :cond_14
    move v5, v2

    .line 3355
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    const-string v4, "bars"

    .line 3358
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "mode"

    .line 3359
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "opaque"

    .line 3360
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_16

    goto :goto_6

    :cond_16
    const-string v2, "translucent"

    .line 3361
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    goto :goto_6

    :cond_17
    const-string v2, "semi-transparent"

    .line 3362
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_6

    :cond_18
    const-string v2, "transparent"

    .line 3363
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v3

    goto :goto_6

    :cond_19
    const-string v2, "warning"

    .line 3364
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x5

    goto :goto_6

    :cond_1a
    move v2, v6

    :goto_6
    if-eq v2, v6, :cond_1c

    .line 3368
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_1b

    .line 3369
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3371
    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->transitionTo(IIZ)V

    :cond_1c
    if-nez v0, :cond_1d

    const-string v0, "operator"

    .line 3374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    const v0, 0x7f0a041b

    .line 3375
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_1e
    return-void
.end method

.method public dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2251
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setNotTouchable(Z)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2253
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setNotTouchable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 2641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Current Status Bar state:"

    .line 2642
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayMetrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 2647
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 2648
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2646
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "  mInteractingWindows="

    .line 2651
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mStatusBarWindowState="

    .line 2652
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2653
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mStatusBarMode="

    .line 2654
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2655
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDozing="

    .line 2656
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mZenMode="

    .line 2657
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 2659
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "zen_mode"

    .line 2658
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 2663
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const-string v2, "mStatusBarView"

    invoke-static {p2, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_0
    const-string v0, "  StatusBarWindowView: "

    .line 2665
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    .line 2667
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    const-string v0, "  mMediaManager: "

    .line 2670
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_2

    .line 2672
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    const-string v0, "  Panels: "

    .line 2675
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_3

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mNotificationPanel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2678
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2677
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    .line 2679
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    const-string v0, "  mStackScroller: "

    .line 2682
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_4

    const-string v0, "      "

    .line 2684
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    const-string v0, "  Theme:"

    .line 2687
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_5

    const-string v0, "null"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2689
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    dark theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (auto: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", yes: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", no: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    const v4, 0x7f1202ed

    if-ne v2, v4, :cond_6

    move v1, v3

    .line 2694
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    light wallpaper theme: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2696
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 2698
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v1, :cond_7

    .line 2699
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->dump(Ljava/io/PrintWriter;)V

    .line 2702
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v1, :cond_8

    .line 2703
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2706
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v1, :cond_9

    .line 2707
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2710
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_a

    .line 2711
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 2715
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    monitor-enter v1

    .line 2716
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, p2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2717
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2736
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v1, :cond_b

    .line 2737
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v1, "  mHeadsUpManager: null"

    .line 2739
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v1, :cond_c

    .line 2742
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v1, "  mGroupManager: null"

    .line 2744
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v1, :cond_d

    .line 2748
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2751
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_e

    .line 2752
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2757
    :cond_e
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2760
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 2761
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    const-string p1, "SharedPreferences:"

    .line 2763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2764
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string v1, "  "

    .line 2765
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 2770
    :cond_f
    array-length p0, p3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_10

    aget-object p0, p3, v3

    const-string p1, "GC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 2771
    aget-object p0, p3, v0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "Call GC!"

    .line 2772
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->triggerGCImmediate()V

    :cond_10
    return-void

    :catchall_0
    move-exception p0

    .line 2717
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2649
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public endAffordanceLaunch()V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3762
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    return-void
.end method

.method public executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V
    .locals 1

    .line 4887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4889
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 1

    .line 2903
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$L4kE_3rylr6H_pNi7mB0rm5zMes;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$L4kE_3rylr6H_pNi7mB0rm5zMes;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 3522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 3523
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3526
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->unlockWithoutTransition()Z

    move-result p2

    .line 3528
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;Z)V

    .line 3555
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 3557
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3559
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 3

    .line 3568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3569
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 3570
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x60

    .line 3571
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3572
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$KlfqlCeP0_t3Ji18QuG8__kx4ws;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$KlfqlCeP0_t3Ji18QuG8__kx4ws;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3573
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3576
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .line 3700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardDoneFading()V

    .line 3701
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    return-void
.end method

.method public getAmbientIndicationContainer()Landroid/view/View;
    .locals 0

    .line 1921
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object p0
.end method

.method public getBarState()I
    .locals 0

    .line 5129
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return p0
.end method

.method public getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 2399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1504
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object p0
.end method

.method getDisplayDensity()F
    .locals 0

    .line 2801
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method getDisplayHeight()F
    .locals 0

    .line 2809
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    return p0
.end method

.method getDisplayWidth()F
    .locals 0

    .line 2805
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 0

    .line 2395
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object p0
.end method

.method public getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 0

    .line 5066
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 4041
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .line 4033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationScrollLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 1903
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 5054
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method public getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    .line 2016
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-object p0
.end method

.method getRotation()I
    .locals 0

    .line 2813
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .line 1508
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-gez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1510
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_dimen_status_bar_height:I

    .line 1511
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 1513
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    return p0
.end method

.method public getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method public getStatusBarMode()I
    .locals 0

    .line 5075
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    return p0
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 0

    .line 2534
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object p0

    return-object p0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 0

    .line 1496
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 0

    .line 1500
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object p0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1382
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gi1Q5LxNZ9QrWtGCyPxIsIRj6Ac;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gi1Q5LxNZ9QrWtGCyPxIsIRj6Ac;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public getUserSetup()Z
    .locals 0

    .line 479
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return p0
.end method

.method public getWakefulnessState()I
    .locals 0

    .line 4230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    return p0
.end method

.method public goToKeyguard()V
    .locals 2

    .line 4088
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 5

    .line 4052
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-void

    .line 4056
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 4059
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4060
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    .line 4061
    invoke-virtual {p1, v3, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserExpanded(ZZ)V

    .line 4064
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setGroupExpansionChanging(Z)V

    .line 4065
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_2

    .line 4066
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 4069
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4070
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4071
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 4072
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    .line 4073
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 4074
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 4075
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 4076
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4077
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    goto :goto_3

    .line 4079
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 4080
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :goto_3
    return-void
.end method

.method handlePeekToExpandTransistion()V
    .locals 2

    .line 3165
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    .line 3166
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleSystemKey(I)V
    .locals 3

    .line 2079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 2080
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2085
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x118

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    .line 2088
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ed

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x119

    if-ne v0, p1, :cond_5

    .line 2091
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ee

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2092
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 2093
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    if-eqz p1, :cond_3

    .line 2094
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 2096
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 2097
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0

    .line 2098
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2099
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FI)V

    .line 2101
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open_qs"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3153
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 3154
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->startNotificationLogging()V

    goto :goto_0

    .line 3156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 3157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    :goto_0
    return-void
.end method

.method public hasActiveNotifications()Z
    .locals 0

    .line 4261
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hideKeyguard()Z
    .locals 2

    .line 3396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result p0

    return p0
.end method

.method public hideKeyguardImpl()Z
    .locals 5

    const/4 v0, 0x0

    .line 3619
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    const-string v1, "StatusBar#hideKeyguard"

    .line 3620
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3621
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v1

    .line 3622
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3627
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updatePublicMode()V

    .line 3629
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3630
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3631
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3633
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    .line 3634
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 3635
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_2

    .line 3636
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    const/4 v0, 0x0

    .line 3637
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3642
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarController;->disableAnimationsDuringHide(IJ)V

    goto :goto_0

    .line 3643
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 3649
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_5

    .line 3650
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 3652
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 3653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 3655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 3657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3658
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1
.end method

.method public hideStatusBarIconsForBouncer()Z
    .locals 1

    .line 1936
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

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

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 0

    .line 1911
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result p0

    return p0
.end method

.method public inFullscreenMode()Z
    .locals 0

    .line 2618
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit8 p0, p0, 0x6

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inImmersiveMode()Z
    .locals 0

    .line 2625
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit16 p0, p0, 0x1800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected inflateStatusBarWindow(Landroid/content/Context;)V
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 1459
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1458
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d020d

    const/4 v1, 0x0

    .line 1459
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-void
.end method

.method public instantExpandNotificationsPanel()V
    .locals 2

    const/4 v0, 0x1

    .line 3819
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 3820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 3821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3742
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3743
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2349
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v0, :cond_0

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarEvent--interceptTouchEvent--event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "StatusBar"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 2384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 2385
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez p1, :cond_3

    .line 2386
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_2

    .line 2388
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_4
    :goto_2
    return v1
.end method

.method public isBouncerShowing()Z
    .locals 0

    .line 5002
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return p0
.end method

.method public isBouncerShowingScrimmed()Z
    .locals 1

    .line 5009
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isCameraAllowedByAdmin()Z
    .locals 4

    .line 4332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4333
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    .line 4332
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 4336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 4338
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4339
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public isDeviceInVrMode()Z
    .locals 0

    .line 2012
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 4736
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 1345
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return p0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 1

    .line 1791
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullScreenUserSwitcherState()Z
    .locals 1

    .line 3405
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeadsUpShouldBeVisible()Z
    .locals 0

    .line 1974
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result p0

    return p0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .line 3509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3510
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

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

.method public isKeyguardCurrentlySecure()Z
    .locals 0

    .line 1870
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .line 5035
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_0

    .line 5039
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 5043
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 4422
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_0

    const-string p0, "StatusBar"

    const-string v0, "isKeyguardShowing() called before startKeyguard(), returning true"

    .line 4423
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4426
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isOccluded()Z
    .locals 0

    .line 1926
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    return p0
.end method

.method public isPulsing()Z
    .locals 0

    .line 1907
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulsing:Z

    return p0
.end method

.method public isScreenFullyOff()Z
    .locals 0

    .line 4243
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 0

    .line 1787
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p0
.end method

.method public keyguardGoingAway()V
    .locals 2

    .line 3674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardGoingAway(Z)V

    .line 3675
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(IZ)V

    return-void
.end method

.method public synthetic lambda$awakenDreams$29$StatusBar()V
    .locals 0

    .line 4812
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4814
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$executeActionDismissingKeyguard$31$StatusBar(Ljava/lang/Runnable;)Z
    .locals 2

    .line 4890
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DYXaMMT8TOGVT0HxZAT454OtLiI;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DYXaMMT8TOGVT0HxZAT454OtLiI;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4900
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$executeRunnableDismissingKeyguard$19$StatusBar(Ljava/lang/Runnable;ZZ)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 2905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2906
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2911
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2917
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 2924
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p1, 0x2

    .line 2925
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    goto :goto_1

    .line 2930
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$h1YVkfulr3o8W-Bsc2YTikmPmYI;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$h1YVkfulr3o8W-Bsc2YTikmPmYI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2933
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2938
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return p3
.end method

.method public synthetic lambda$fadeKeyguardAfterLaunchTransition$27$StatusBar(Ljava/lang/Runnable;Z)V
    .locals 7

    .line 3529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->setLaunchTransitionFadingAway(Z)V

    if-eqz p1, :cond_0

    .line 3531
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3533
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3534
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3535
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 3536
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 3537
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x64

    .line 3543
    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x12c

    .line 3544
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3546
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3547
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x78

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    return-void
.end method

.method public synthetic lambda$fadeKeyguardWhilePulsing$28$StatusBar()V
    .locals 0

    .line 3574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 3575
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method public synthetic lambda$getStatusBarWindowTouchListener$9$StatusBar(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1383
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    .line 1384
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->checkRemoteInputOutside(Landroid/view/MotionEvent;)V

    .line 1385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1386
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 1390
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleVisibleToUserChangedImpl$20$StatusBar(ZI)V
    .locals 0

    .line 3192
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic lambda$handleVisibleToUserChangedImpl$21$StatusBar()V
    .locals 0

    .line 3201
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic lambda$makeStatusBarView$3$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3

    .line 984
    move-object p1, p2

    check-cast p1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 987
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 988
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 989
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 990
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 991
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1000
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1001
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyBarPanelExpansionChanged()V

    .line 1003
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    if-eqz p1, :cond_1

    .line 1005
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getExpansionFraction()F

    move-result p2

    .line 1006
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isExpanded()Z

    move-result p1

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->panelExpansionChanged(FZ)V

    .line 1011
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1012
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1013
    invoke-virtual {p1, p2, v0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->initSystemPromptController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V

    .line 1014
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 1015
    invoke-virtual {p1, p2}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setNotificationIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1016
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1017
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1018
    invoke-virtual {p1, p2, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setUpCircleBatteryView(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 1022
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz p1, :cond_3

    .line 1025
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->destroy()V

    .line 1027
    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p2, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 1029
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 1030
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAreThereNotifications()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$4$StatusBar(Lcom/android/systemui/statusbar/phone/ScrimState;Ljava/lang/Float;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$5$StatusBar(Ljava/lang/Integer;)V
    .locals 2

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setScrimsVisibility(I)V

    .line 1119
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz p0, :cond_1

    .line 1120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onScrimVisibilityChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$makeStatusBarView$6$StatusBar(Ljava/lang/Boolean;)V
    .locals 0

    .line 1155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    .line 1156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$7$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 1159
    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    .line 1160
    instance-of p1, p2, Lcom/android/systemui/qs/QSFragment;

    if-eqz p1, :cond_2

    .line 1161
    check-cast p2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1164
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1165
    invoke-static {}, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->getInstance()Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->setQsFragment(Lcom/android/systemui/qs/QSFragment;)V

    .line 1174
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1175
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    goto :goto_0

    .line 1177
    :cond_1
    iget-object p1, p2, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p1}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/ColorQSContainerImpl;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$makeStatusBarView$8$StatusBar(Landroid/view/View;)V
    .locals 4

    .line 1188
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1191
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, "Build info: "

    .line 1192
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.build.description"

    .line 1193
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\nSerial number: "

    .line 1194
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.serialno"

    .line 1195
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 1196
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1198
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1199
    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 1200
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 1203
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Rejected touch report"

    .line 1204
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 1205
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 1206
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Share rejected touch report"

    .line 1202
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 1208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 1202
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public synthetic lambda$new$0$StatusBar(Landroid/view/View;)V
    .locals 3

    .line 620
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "SHADE_CLICK"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    .line 625
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getDisablePullStatusBar()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$StatusBar(ZLjava/lang/String;)V
    .locals 0

    .line 664
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 665
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public synthetic lambda$new$22$StatusBar()V
    .locals 2

    .line 3285
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    const-string v0, "StatusBar"

    const-string v1, "stopTracing"

    .line 3286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrate()V

    return-void
.end method

.method public synthetic lambda$null$23$StatusBar(Ljava/lang/Runnable;)V
    .locals 0

    .line 3294
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onHeadsUpPinnedModeChanged$10$StatusBar()V
    .locals 1

    .line 1821
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceWindowCollapsed(Z)V

    return-void
.end method

.method public synthetic lambda$onHeadsUpPinnedModeChanged$11$StatusBar()V
    .locals 2

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHeadsUpShowing(Z)V

    .line 1836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 1838
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    return-void
.end method

.method public synthetic lambda$postAnimateForceCollapsePanels$14$StatusBar()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2167
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return-void
.end method

.method public synthetic lambda$postQSRunnableDismissingKeyguard$24$StatusBar(Ljava/lang/Runnable;)V
    .locals 8

    .line 3293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3294
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$UWngNjLLIVSGaCHyV4AAlwZzCYU;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$UWngNjLLIVSGaCHyV4AAlwZzCYU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public synthetic lambda$postStartActivityDismissingKeyguard$25$StatusBar(Landroid/app/PendingIntent;)V
    .locals 0

    .line 3301
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic lambda$postStartActivityDismissingKeyguard$26$StatusBar(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 3307
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method public synthetic lambda$start$2$StatusBar()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method public synthetic lambda$startActivityDismissingKeyguard$17$StatusBar(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p4

    const-string v13, "StatusBar"

    .line 2836
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    const/high16 v1, 0x14000000

    .line 2837
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2839
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2841
    new-instance v1, Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move/from16 v2, p3

    .line 2843
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 2845
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v3, v2, :cond_0

    const/4 v2, 0x3

    .line 2854
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 2857
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.settings.panel.action.VOLUME"

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    .line 2863
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 2866
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 2867
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 2869
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    .line 2871
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    move-object v0, v2

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, p1

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    move-object v10, v14

    move v11, v15

    .line 2866
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "start activity error"

    .line 2878
    invoke-static {v13, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unable to start activity"

    .line 2873
    invoke-static {v13, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/16 v0, -0x60

    :goto_1
    if-eqz v12, :cond_2

    .line 2882
    invoke-interface {v12, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$startPendingIntentDismissingKeyguard$32$StatusBar(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4927
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 4929
    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v7

    .line 4928
    invoke-virtual {v0, p2, v7}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 4927
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending intent failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StatusBar"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    :goto_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4938
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    if-eqz p3, :cond_1

    .line 4941
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateHideIconsForBouncer$12$StatusBar()V
    .locals 2

    const/4 v0, 0x0

    .line 1961
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 1962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 3136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3138
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 3139
    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_dimen_status_bar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDimens: mNaturalBarHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StatusBar"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-eq p0, v1, :cond_0

    .line 3143
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBarHeight(I)V

    :cond_0
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 10

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mStatusBarWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "StatusBar"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 2311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 2313
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2314
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2318
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setExpandVisible(Z)V

    .line 2322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setPanelVisible(Z)V

    .line 2323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2326
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    const/4 v0, 0x1

    .line 2330
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->isCollapsingToShowActivityOverLockscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 2336
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2337
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v2

    .line 2336
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2342
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 3

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make expanded visible: expanded force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mExpandedVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "StatusBar"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 2136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2140
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2143
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setExpandVisible(Z)V

    .line 2148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setPanelVisible(Z)V

    .line 2150
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    xor-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2152
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method protected makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 17

    move-object/from16 v7, p0

    .line 923
    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 928
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow(Landroid/content/Context;)V

    .line 929
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 930
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 934
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0407

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 935
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a040d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 936
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 937
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 938
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setUpWithContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 945
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const-class v2, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 947
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 948
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    check-cast v2, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->addComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 951
    :cond_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 952
    invoke-virtual {v0, v8, v7, v1}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 956
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    .line 957
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 961
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNavigationBarUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    new-instance v0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/navbar/ColorNavigationBarController;-><init>(Landroid/content/Context;)V

    .line 963
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setColorNavigationBarController(Lcom/coloros/systemui/navbar/IColorNavigationBarController;)V

    .line 964
    new-instance v0, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/KeyguardManager;Landroid/os/Handler;)V

    .line 965
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setSystemGestureManager(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V

    .line 971
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiStatusBarUi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 972
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 976
    :cond_2
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 978
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 979
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 980
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 981
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 982
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TPJyILujZ88K3rKFmgzHGHpbtLo;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TPJyILujZ88K3rKFmgzHGHpbtLo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-string v2, "CollapsedStatusBarFragment"

    .line 983
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a055c

    new-instance v3, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    .line 1035
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1038
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1040
    new-instance v6, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    iput-object v6, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1042
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 1043
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1044
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1045
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1046
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1047
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1048
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/AmbientPulseManager;->addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V

    .line 1049
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AmbientPulseManager;->addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V

    .line 1050
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AmbientPulseManager;->addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V

    .line 1051
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1052
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1053
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1054
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1055
    const-class v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1057
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 1063
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/ColorLockScreenWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;

    goto :goto_1

    .line 1066
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, v1, v7, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;

    .line 1072
    :goto_1
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a0305

    .line 1073
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0a0362

    .line 1074
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 1072
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1075
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1079
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a0363

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->setView(Landroid/widget/LinearLayout;)V

    .line 1081
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 1082
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a031a

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->setTipsView(Lcom/coloros/systemui/keyguard/view/KeyguardTipsView;)V

    .line 1086
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    .line 1090
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 1105
    const-class v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 1106
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1108
    const-class v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1110
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/ScrimView;

    .line 1111
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a04f7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/ScrimView;

    .line 1112
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v9

    iget-object v12, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;

    new-instance v13, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;

    invoke-direct {v13, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    new-instance v14, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1122
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v15

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    .line 1123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/AlarmManager;

    .line 1112
    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/SystemUIFactory;->createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1124
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1126
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1128
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/BackDropView;

    .line 1129
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const v0, 0x7f0a00d9

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    const v0, 0x7f0a00d8

    .line 1130
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;

    .line 1129
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;)V

    .line 1133
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeComponent;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1135
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUserSetupComplete(Z)V

    .line 1136
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    .line 1140
    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$HshNPAFauaSwgr5N8iT9CKLXoqs;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HshNPAFauaSwgr5N8iT9CKLXoqs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchAffordanceListener(Ljava/util/function/Consumer;)V

    .line 1144
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0491

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1146
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 1147
    const-class v3, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 1148
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v4, Lcom/android/systemui/plugins/qs/QS;

    .line 1149
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    const-class v4, Lcom/android/systemui/plugins/qs/QS;

    .line 1150
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zqmz5npIKuMPJHZWVxICwxzCPwk;

    invoke-direct {v4, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zqmz5npIKuMPJHZWVxICwxzCPwk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1151
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v3

    .line 1152
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v3

    const-string v4, "QS"

    .line 1147
    invoke-static {v0, v4, v1, v3}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    .line 1153
    new-instance v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_gTb2j_mFw_X1LTvRYyxjB4ReLg;

    invoke-direct {v3, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_gTb2j_mFw_X1LTvRYyxjB4ReLg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Ljava/util/function/Consumer;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1158
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_jw9ixkkLLMPFpz5qlWQAWilFGk;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_jw9ixkkLLMPFpz5qlWQAWilFGk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v2, v4, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1184
    :cond_6
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a04ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    .line 1185
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1186
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 1187
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$toYLtGSPfaNCERnxWzNtbm9uCxA;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$toYLtGSPfaNCERnxWzNtbm9uCxA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    :cond_7
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1214
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    if-nez v1, :cond_8

    .line 1215
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    const/16 v1, 0xa

    const-string v3, "GestureWakeLock"

    .line 1217
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1219
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1220
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1222
    array-length v1, v0

    new-array v1, v1, [J

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v1, 0x0

    .line 1223
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_9

    .line 1224
    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1228
    :cond_9
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1229
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 1231
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1234
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.demo"

    .line 1238
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.DUMP"

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1243
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 1244
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    const-string v0, "disableProfileBars"

    const-string v1, "true"

    .line 1247
    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1250
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambientRatio"

    invoke-static {v1, v0}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/utils/OppoThemeApplyUtil;->checkOppoDefaultTheme(Landroid/content/Context;)V

    return-void
.end method

.method public maybeEscalateHeadsUp()V
    .locals 2

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2069
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->releaseAllImmediately()V

    return-void
.end method

.method public noneAnimateKeyguardUnOccluding()V
    .locals 2

    .line 5103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedFraction(F)V

    .line 5104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithoutQsNoAnimator()V

    return-void
.end method

.method public notifyBiometricAuthModeChanged()V
    .locals 1

    .line 4357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 4358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onBiometricAuthModeChanged(Z)V

    return-void
.end method

.method protected notifyHeadsUpGoingToSleep()V
    .locals 0

    .line 4995
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    return-void
.end method

.method public onActivationReset()V
    .locals 1

    .line 3976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 3979
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3980
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideNotificationIndication()V

    :cond_0
    return-void
.end method

.method public onActiveStateChanged(IILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onAmbientStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 1860
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    if-eqz p2, :cond_0

    .line 1862
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->fireNotificationPulse()V

    goto :goto_0

    .line 1863
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AmbientPulseManager;->hasNotifications()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1865
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 3766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3767
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 3769
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithoutQs()V

    :cond_1
    return v3

    .line 3773
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3775
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    goto :goto_1

    .line 3777
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs(Z)V

    :goto_1
    return v3

    .line 3781
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v3, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 3782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3783
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_2

    .line 3785
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->performBackPressIfNeeded()V

    :goto_2
    return v3

    .line 3789
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_7
    return v2
.end method

.method public onCameraHintStarted()V
    .locals 1

    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    .line 4010
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v0, 0x7f110205

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 9

    .line 4280
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    .line 4281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4283
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return-void

    .line 4286
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4287
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4286
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canCameraGestureBeLaunched(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4292
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_3

    .line 4293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4302
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrateForCameraGesture()V

    .line 4303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4304
    sget-object v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    goto :goto_1

    .line 4308
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_5

    .line 4311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4313
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakingUpOrAwake()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 4318
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    .line 4319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    goto :goto_1

    .line 4326
    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    :goto_1
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .line 3990
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 3991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3994
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 1916
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3067
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 3068
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 3076
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3077
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 3078
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 3082
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 3083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    .line 3086
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3087
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->onConfigurationChanged()V

    :cond_1
    if-eqz p1, :cond_2

    .line 3093
    invoke-static {p1}, Lcom/color/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1

    .line 3094
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFlipFont:I

    if-eq p1, v0, :cond_2

    .line 3095
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFlipFont:I

    .line 3096
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationsOnFlipFontChanged()V

    :cond_2
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    .line 1408
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 1409
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    .line 1410
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_1

    .line 1412
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->onDensityOrFontScaleChanged()V

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onDensityOrFontScaleChanged()V

    .line 1418
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 1

    const-string v0, "StatusBar#updateDozing"

    .line 3930
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3931
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 3934
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 3935
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3936
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    .line 3938
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3939
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAodShowing(Z)V

    .line 3941
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 3942
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 3943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3944
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 3945
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onExpandAnimationFinished(Z)V
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1991
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_1
    return-void
.end method

.method public onExpandAnimationTimedOut()V
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isLaunchForActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2002
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel(Z)V

    :goto_0
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1811
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHeadsUpShowing(Z)V

    .line 1812
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 1813
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1818
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 1819
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceWindowCollapsed(Z)V

    .line 1820
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Qj9ts5qNgL9tKpQUFYjsLd9tYDs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Qj9ts5qNgL9tKpQUFYjsLd9tYDs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1825
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1832
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 1833
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1PwGueSv8bkjX5GxiVzM2PDffE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1PwGueSv8bkjX5GxiVzM2PDffE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1828
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setHeadsUpShowing(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 1855
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public onHintFinished()V
    .locals 2

    .line 4005
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .line 1798
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .line 3752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 3753
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOverlayChanged()V
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onThemeChanged()V

    .line 1440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onThemeChanged()V

    return-void
.end method

.method public onPanelLaidOut()V
    .locals 0

    .line 4871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardMaxNotifications()V

    return-void
.end method

.method public onPhoneHintStarted()V
    .locals 1

    .line 4019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4020
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v0, 0x7f110650

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 2526
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method public onSpacePressed()Z
    .locals 2

    .line 3796
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 3797
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChanged(I)V
    .locals 4

    .line 3874
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 3875
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 3876
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 3877
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 3880
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3881
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->updateLastGoKeyguardTime()V

    .line 3886
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3887
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-static {p1}, Lcom/coloros/systemui/common/helper/StatusBarStateHelper;->setBarState(I)V

    .line 3890
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    const-string p1, "StatusBar#updateKeyguardState"

    .line 3891
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3892
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 3893
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 3894
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p1, :cond_2

    .line 3895
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3896
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v2

    .line 3895
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 3898
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 3899
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 3900
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3903
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 3904
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p1, :cond_7

    .line 3905
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3906
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3908
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v1

    .line 3905
    :goto_1
    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 3910
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz p1, :cond_8

    const/4 v2, 0x4

    .line 3911
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3915
    :cond_8
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3916
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideNotificationIndication()V

    .line 3920
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 3921
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3922
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3923
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v2, v1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v0

    :goto_3
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3924
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 3925
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStatePreChange(II)V
    .locals 0

    .line 3861
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 3862
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3863
    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3864
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 3867
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    .line 3868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    :cond_2
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onThemeChanged()V

    .line 1427
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v0, p0, Lcom/android/systemui/AutoReinflateContainer;

    if-eqz v0, :cond_1

    .line 1428
    check-cast p0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    :cond_1
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .line 3986
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2

    .line 4024
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 4025
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4026
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1445
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onUiModeChanged()V

    :cond_0
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .line 3999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    .line 4000
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v0, 0x7f110443

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .line 1804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 1805
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onVoiceAssistHintStarted()V
    .locals 1

    .line 4014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4015
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v0, 0x7f110887

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public panelsEnabled()Z
    .locals 0

    .line 5081
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public postAnimateCollapsePanels()V
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .locals 2

    .line 2166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$xUmA145Uu72Ug6DMxH2RAtGeu-0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$xUmA145Uu72Ug6DMxH2RAtGeu-0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateOpenPanels()V
    .locals 1

    .line 2172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postOnShadeExpanded(Ljava/lang/Runnable;)V
    .locals 2

    .line 3837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2

    .line 3292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GjkAle6Yh2ihV-21EScdNFN2cPY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GjkAle6Yh2ihV-21EScdNFN2cPY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    .line 3301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 2

    .line 3306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method postStartTracing()V
    .locals 3

    .line 3264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .line 4822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4823
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 0

    .line 2895
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1580
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public requestFaceAuth()V
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1601
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public requestNotificationUpdate()V
    .locals 0

    .line 1593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 3

    .line 3024
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    .line 3025
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    .line 3026
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3028
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3029
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->resetUserExpansion()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2

    .line 4098
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    .line 4099
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 4100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 4101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4103
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_1

    .line 4104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_1
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 3

    .line 2593
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz p2, :cond_2

    .line 2594
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    .line 2597
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_3

    .line 2598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_3

    .line 2600
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    :goto_3
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 2604
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    .line 2605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 2607
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public setKeyguardFadingAway(JJJ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    .line 3686
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    add-long v5, p1, v1

    const-wide/16 v10, 0x78

    sub-long/2addr v5, v10

    const-wide/16 v7, 0x78

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3689
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 3690
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    sub-long v14, p1, v10

    const-wide/16 v16, 0x78

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3693
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-wide/from16 v3, p3

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardFadingAway(JJ)V

    return-void
.end method

.method public setLockscreenUser(I)V
    .locals 1

    .line 3104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;

    invoke-interface {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/ILockScreenWallpaper;->setCurrentUser(I)V

    .line 3105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    .line 3106
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 2

    .line 4795
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4796
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4797
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object p2

    .line 4796
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4799
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4800
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    .line 4799
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationListener;->snoozeNotification(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public setOccluded(Z)V
    .locals 1

    .line 1930
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardOccluded(Z)V

    const/4 p1, 0x0

    .line 1932
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 2

    .line 1874
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    const/4 v0, 0x0

    .line 1875
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 1876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setPanelExpanded(Z)V

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    if-eqz p1, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_0
    if-nez p1, :cond_1

    .line 1886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    .line 1890
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->notifyPanelExpandChanged(Z)V

    .line 1895
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1896
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    const-string v0, "panel_bar_expandable"

    invoke-static {p1, v0, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setQsExpanded(Z)V

    .line 1781
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusAccessibilityImportance(I)V

    return-void
.end method

.method setQsScrimEnabled(Z)V
    .locals 0

    .line 2573
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsScrimEnabled(Z)V

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 10

    move-object v0, p0

    move v3, p5

    .line 2443
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    move v2, p1

    if-eq v2, v1, :cond_0

    return-void

    .line 2446
    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    not-int v4, v3

    and-int/2addr v4, v1

    and-int v5, p2, v3

    or-int/2addr v4, v5

    xor-int v5, v4, v1

    .line 2457
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    .line 2458
    new-array v6, v6, [Ljava/lang/Object;

    .line 2460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    const/4 v2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    const/4 v2, 0x3

    .line 2461
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    const/4 v2, 0x5

    .line 2462
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    const-string v2, "setSystemUiVisibility displayId=%d vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    .line 2458
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Statusbar"

    const-string v9, "StatusBar"

    invoke-static {v6, v9, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_5

    .line 2474
    iput v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_2

    .line 2478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAreThereNotifications()V

    :cond_2
    const/high16 v2, 0x10000000

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    .line 2483
    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 2487
    :cond_3
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeStatusBarMode(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    move v7, v8

    :cond_4
    if-eqz v7, :cond_5

    .line 2490
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-eq v1, v2, :cond_5

    .line 2491
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 2492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 2493
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_5
    move v6, v7

    .line 2496
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    move-object v0, v1

    move v1, p3

    move v2, p4

    move v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZIZ)V

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 2

    .line 4849
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4850
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4853
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 4854
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4856
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method protected setUpDisableFlags(II)V
    .locals 3

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUpDisableFlags: \nstate1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nstate2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "StatusBar"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method public setWindowState(III)V
    .locals 5

    .line 2405
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2409
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v2, :cond_6

    if-ne p2, p1, :cond_6

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq p2, p3, :cond_6

    .line 2412
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 2416
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    .line 2418
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SkMMXE-StHRD8qFZiwSPjIotJcg;

    const-wide/16 v3, 0x96

    invoke-virtual {p2, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    if-ne p1, p3, :cond_3

    .line 2421
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p2

    const-class v2, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p2, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    .line 2422
    invoke-virtual {p2, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateCircleProgressAnimation(Z)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2428
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p2, :cond_4

    .line 2429
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 2432
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    if-ne p3, p2, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    .line 2433
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    .line 2434
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    :cond_6
    return-void
.end method

.method public shouldIgnoreTouch()Z
    .locals 1

    .line 4676
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .locals 1

    .line 3747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3748
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showAssistDisclosure()V
    .locals 0

    .line 5048
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz p0, :cond_0

    .line 5049
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    :cond_0
    return-void
.end method

.method public showBouncer(Z)V
    .locals 0

    .line 3813
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    return-void
.end method

.method public showKeyguard()V
    .locals 2

    .line 3388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    const/4 v0, 0x0

    .line 3390
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 3391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 3392
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    return-void
.end method

.method public showKeyguardImpl()V
    .locals 3

    const/4 v0, 0x1

    .line 3437
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    .line 3438
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isLaunchTransitionFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3439
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    .line 3442
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 3443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    goto :goto_0

    .line 3445
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    .line 3449
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpandImmediate(Z)V

    .line 3451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStackScrollerShouldShowShelfOnly(Z)V

    .line 3452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3457
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3462
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    .line 3463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_4

    .line 3464
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    .line 3465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyHeightChanged(Z)V

    const/4 v0, 0x0

    .line 3466
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_4
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 1

    .line 2109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEnterExitToast(Z)V

    .line 2113
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2114
    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getInstance()Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->setIsPinningEnter(Z)V

    :cond_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 1

    .line 2122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEscapeToast()V

    :cond_0
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 1

    .line 4248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4253
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .locals 0

    .line 4257
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 3

    .line 2503
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2519
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    .line 2520
    invoke-virtual {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show()V

    goto :goto_1

    .line 2505
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-static {v0, v1, p1, v2, p0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    .line 2516
    invoke-virtual {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show()V

    :goto_1
    return-void
.end method

.method public start()V
    .locals 12

    .line 693
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->onStart(Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 695
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 696
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    .line 697
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 698
    const-class v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 699
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 700
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    .line 702
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 703
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 704
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 706
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 708
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 709
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    .line 711
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 712
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 713
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 714
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 715
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 716
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 717
    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 718
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 719
    const-class v0, Lcom/android/systemui/appops/AppOpsController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appops/AppOpsController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 720
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 721
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 722
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 723
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 724
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 727
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setNavigationBarController(Lcom/android/systemui/statusbar/NavigationBarController;)V

    .line 730
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    .line 732
    new-instance v0, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 733
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getAttachedInstance()Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->initDependencies(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    goto :goto_0

    :cond_0
    const-string v0, "StatusBar"

    const-string v1, "Cannot init KeyguardSliceProvider dependencies"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v10, 0x0

    invoke-interface {v0, p0, v10}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "dreams"

    .line 746
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 745
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    .line 754
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 756
    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    .line 757
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 760
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 765
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "statusbar"

    .line 770
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 769
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 772
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 777
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const/4 v11, 0x0

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 784
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-object v0, v11

    .line 788
    :goto_1
    iget v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 789
    iget v2, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    .line 790
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->setDisabledLocked(III)V

    .line 793
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->registerEnvelopeFilter(Landroid/content/Context;)V

    .line 798
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 801
    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 802
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v11}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 807
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpPresenter()V

    .line 809
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mSystemUiVisibility:I

    iget v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mFullscreenStackSysUiVisibility:I

    iget v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDockedStackSysUiVisibility:I

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDockedStackBounds:Landroid/graphics/Rect;

    iget-boolean v9, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 814
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean v6, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 818
    iget-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v10

    :goto_2
    if-ge v2, v1, :cond_2

    .line 820
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 833
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.statusbar.banner_action_cancel"

    .line 834
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.banner_action_setup"

    .line 835
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.android.systemui.permission.SELF"

    invoke-virtual {v1, v2, v0, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "wallpaper"

    .line 840
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 839
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 842
    :try_start_1
    invoke-interface {v0, v10, v1, v2}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 854
    :catch_1
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 855
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    goto :goto_3

    .line 857
    :cond_3
    new-instance v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v1, v2}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 864
    :goto_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-nez v0, :cond_4

    .line 865
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 869
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 874
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 876
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 877
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 879
    const-class v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ActivityStarterDelegate;->setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 881
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 884
    const-class v0, Lcom/android/systemui/InitController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/InitController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$c2AOy3A7uAuedqvDvblQbirmzTM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$c2AOy3A7uAuedqvDvblQbirmzTM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 892
    const-class v0, Lcom/android/systemui/InitController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/InitController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$kwqC0LAeyxMNTGqLc2FtVYLNk4k;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$kwqC0LAeyxMNTGqLc2FtVYLNk4k;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 900
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 901
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "coloros.intent.action.personalassistant.PANEL_STATE_CHANGE"

    .line 902
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getBreenoPanelStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    .line 904
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v2, v1, v0, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 910
    :cond_5
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->onStartEnd()V

    .line 915
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPictorialStateObserver:Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1765
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1775
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0

    .line 1770
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 0

    .line 1760
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2825
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 2818
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V
    .locals 8

    if-eqz p2, :cond_0

    .line 2831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2833
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2834
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 2833
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v6

    .line 2835
    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cYI_U_ShQVlsmm6P5qEeF15rkKQ;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cYI_U_ShQVlsmm6P5qEeF15rkKQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 2885
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;

    invoke-direct {v2, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v7

    move v3, p3

    move v4, v6

    .line 2890
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    .line 5059
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz p0, :cond_0

    .line 5060
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected startKeyguard()V
    .locals 12

    const-string v0, "StatusBar#startKeyguard"

    .line 1463
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1464
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1465
    new-instance v11, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1467
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v7

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    .line 1468
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/tuner/TunerService;

    move-object v1, v11

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/tuner/TunerService;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 1470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a0363

    .line 1471
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    move-object v1, v0

    move-object v2, p0

    .line 1469
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1474
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1478
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1479
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1482
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1483
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1485
    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rvCsIQdHonxFrWe7zDPDF5dVrCc;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$rvCsIQdHonxFrWe7zDPDF5dVrCc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V

    .line 1489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initKeyguardSlideLayout(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 1492
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 3

    .line 3593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3eb

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 4908
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4914
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3

    .line 4921
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 4922
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4923
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    .line 4922
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4925
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$mKzh129ZNRMAmJIVxc67nbFDtvE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 0

    .line 4860
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 2

    .line 4843
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4844
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public togglePanel()V
    .locals 1

    .line 2177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    .line 2178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 2180
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    :goto_0
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    const/4 v0, -0x1

    .line 4806
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    return-void
.end method

.method protected toggleSplitScreenMode(II)Z
    .locals 4

    .line 1519
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 1520
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->toggleSplitScreenMode(I)V

    return v1

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/recents/Recents;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 1528
    :cond_1
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1530
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result p2

    if-ne p2, v2, :cond_2

    return v3

    :cond_2
    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    .line 1537
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/recents/Recents;

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/systemui/recents/Recents;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    move-result p0

    return p0

    .line 1539
    :cond_4
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p1, :cond_6

    .line 1541
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    .line 1545
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->onUndockingTask()V

    if-eq p2, v2, :cond_6

    .line 1547
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :cond_6
    return v1
.end method

.method public topAppWindowChanged(IZ)V
    .locals 1

    .line 1267
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->topAppWindowChanged()V

    .line 1268
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->topAppWindowChanged(IZ)V

    return-void
.end method

.method public updateAreThereNotifications()V
    .locals 6

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_6

    const v1, 0x7f0a0402

    .line 1615
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1616
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areLightsOn()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1617
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eq v1, v2, :cond_6

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1619
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1620
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1622
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_3

    move v2, v5

    .line 1623
    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_4

    const-wide/16 v3, 0x2ee

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0xfa

    .line 1624
    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 1625
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    move-object v0, v1

    .line 1626
    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1632
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1637
    :cond_6
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isCtsSupport()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 1640
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotificationsCustom()V

    goto :goto_5

    .line 1638
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotifications()V

    :goto_5
    return-void
.end method

.method updateDisplaySize()V
    .locals 2

    .line 2792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateKeyguardMaxNotifications()V
    .locals 3

    .line 4875
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v0

    .line 4879
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4881
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    :cond_0
    return-void
.end method

.method updateResources()V
    .locals 1

    .line 3118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 3119
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 3122
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->loadDimens()V

    .line 3124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    .line 3125
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 3127
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_2

    .line 3128
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 3130
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_3

    .line 3131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    :cond_3
    return-void
.end method

.method updateScrimController()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "StatusBar#updateScrimController"

    .line 4364
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    .line 4371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4372
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 4371
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    .line 4374
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4375
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchingAffordanceWithPreview()Z

    move-result v1

    .line 4376
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLaunchingAffordanceWithPreview(Z)V

    .line 4378
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v2, :cond_3

    .line 4382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 4386
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4387
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4388
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAnimateChange(Z)V

    .line 4396
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->unlockWithoutTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4397
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4398
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_2

    .line 4401
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_4

    goto :goto_1

    .line 4404
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    if-eqz v1, :cond_5

    .line 4405
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 4406
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 4408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object p0

    .line 4407
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_2

    .line 4409
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 4410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 4411
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    .line 4412
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 4413
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4414
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 4416
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_2

    .line 4403
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 4418
    :cond_b
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected updateTheme()V
    .locals 2

    .line 3711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1202ed

    goto :goto_0

    :cond_0
    const v0, 0x7f1202e8

    .line 3713
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3714
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 3715
    const-class p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->notifyThemeChanged()V

    :cond_1
    return-void
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .line 4975
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 4976
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 4978
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_1

    .line 4979
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    :cond_1
    return-void
.end method

.method public userActivity()V
    .locals 2

    .line 3736
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3737
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 3

    .line 3268
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 3270
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 8

    .line 4964
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 4965
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-nez p1, :cond_0

    .line 4967
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4971
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 1350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.systemui:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    const/4 p1, 0x1

    .line 1358
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 1359
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1360
    new-instance p2, Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v0, 0x0

    aget p4, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget p1, v0, p1

    .line 1361
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-direct {p2, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 1362
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    :cond_0
    return-void
.end method
