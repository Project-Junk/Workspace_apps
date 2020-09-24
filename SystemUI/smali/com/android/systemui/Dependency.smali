.class public Lcom/android/systemui/Dependency;
.super Lcom/android/systemui/SystemUI;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyCreator;,
        Lcom/android/systemui/Dependency$DependencyInjector;,
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$LazyDependencyCreator;
    }
.end annotation


# static fields
.field public static final ALLOW_NOTIFICATION_LONG_PRESS_NAME:Ljava/lang/String; = "allow_notif_longpress"

.field public static final BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final BG_HANDLER_NAME:Ljava/lang/String; = "background_handler"

.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final BG_LOOPER_NAME:Ljava/lang/String; = "background_looper"

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL_NAME:Ljava/lang/String; = "leak_report_email"

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER_NAME:Ljava/lang/String; = "main_handler"

.field public static final QS_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final QS_BG_LOOPER_NAME:Ljava/lang/String; = "qs_background_looper"

.field private static final TAG:Ljava/lang/String; = "Dependency"

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER_NAME:Ljava/lang/String; = "time_tick_handler"

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field mAccessibilityController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAccessibilityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mActivityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mActivityStarter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mActivityStarterDelegate:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAmbientPulseManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAppOpsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAssistManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAsyncSensorManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAutoHideController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBatteryController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBgHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background_handler"
    .end annotation
.end field

.field mBgLooper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background_looper"
    .end annotation
.end field

.field mBluetoothController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBubbleController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mCastController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mChannelEditorDialogController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClockManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mColorVolumeDialogController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/ColorVolumeDialogController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mConfigurationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDarkIconDispatcher:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDataSaverController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDevicePolicyManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDeviceProvisionedController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDisplayMetrics:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDockManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDumpController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mEnhancedEstimates:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mExtensionController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFalsingManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFlashlightController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mForegroundServiceController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mForegroundServiceNotificationListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFragmentService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mGarbageMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mHotspotController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mINotificationManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mIStatusBarService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mIWindowManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mInitController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardDismissUtil:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardEnvironment:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mKeyguardMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLeakDetector:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLeakReportEmail:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "leak_report_email"
    .end annotation
.end field

.field mLeakReporter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLightBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLocalBluetoothManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLocationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLockscreenGestureLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMainHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main_handler"
    .end annotation
.end field

.field mManagedProfileController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mMetricsLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNavBarModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNavigationBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNetworkController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNextAlarmController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNightDisplayListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationAlertingManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationBlockingHelperManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationEntryManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationFilter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationGroupAlertTransferHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationGroupManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationGutsManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationInterruptionStateProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationLockscreenUserManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationMediaManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationRemoteInputManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationRemoteInputManagerCallback:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationViewHierarchyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOverviewProxyService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPackageManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPluginDependencyProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPluginManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$LazyDependencyCreator;",
            ">;"
        }
    .end annotation
.end field

.field mQsBgLooper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "qs_background_looper"
    .end annotation
.end field

.field mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRotationLockController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mScreenLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSecurityController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSensorPrivacyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSensorPrivacyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSmartReplyConstants:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSmartReplyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStatusBarIconController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStatusBarWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSysuiColorExtractor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTimeTickHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "time_tick_handler"
    .end annotation
.end field

.field mTunablePaddingService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTunerService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUiOffloadThread:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserInfoController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserSwitcherController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVibratorHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVisualStabilityManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVolumeDialogController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mWarningsUI:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mZenModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 184
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 188
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 194
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "qs_background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->QS_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 199
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 204
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 210
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 213
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 214
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static clearDependencies()V
    .locals 1

    const/4 v0, 0x0

    .line 624
    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 632
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 597
    iget-object p0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 599
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2

    .line 607
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    .line 609
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    move-result-object v1

    .line 610
    invoke-interface {v1}, Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;->createDependency()Lcom/android/systemui/Dependency$DependencyInjector;

    move-result-object v1

    .line 611
    invoke-interface {v1, v0}, Lcom/android/systemui/Dependency$DependencyInjector;->createSystemUI(Lcom/android/systemui/Dependency;)V

    .line 612
    iput-object p0, v0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    .line 613
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/Dependency;->mComponents:Ljava/util/Map;

    .line 614
    invoke-virtual {v0}, Lcom/android/systemui/Dependency;->start()V

    return-void
.end method

.method static synthetic lambda$dump$0(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 543
    instance-of v0, p1, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 544
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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

.method static synthetic lambda$dump$1(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 545
    check-cast p3, Lcom/android/systemui/Dumpable;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$2(Ljava/lang/Object;)Z
    .locals 0

    .line 551
    instance-of p0, p0, Lcom/android/systemui/ConfigurationChangedReceiver;

    return p0
.end method

.method static synthetic lambda$onConfigurationChanged$3(Landroid/content/res/Configuration;Ljava/lang/Object;)V
    .locals 0

    .line 552
    check-cast p1, Lcom/android/systemui/ConfigurationChangedReceiver;

    invoke-interface {p1, p0}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 575
    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$LazyDependencyCreator;

    if-eqz v0, :cond_2

    .line 583
    invoke-interface {v0}, Lcom/android/systemui/Dependency$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 580
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 581
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 527
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 531
    const-class v0, Lcom/android/systemui/DumpController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 534
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p3, v1

    .line 535
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "Dumping existing controllers:"

    .line 540
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$nA5ayadwqBW4bgzyvl5eaXT_aUY;

    invoke-direct {v2, v0}, Lcom/android/systemui/-$$Lambda$Dependency$nA5ayadwqBW4bgzyvl5eaXT_aUY;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$txwQ8DNTPzffiYtSV5jsVTL0RAU;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$Dependency$txwQ8DNTPzffiYtSV5jsVTL0RAU;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 545
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 556
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    monitor-enter p0

    .line 550
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$G0eGYzBRIeN-1O3Awe1MBmBXPiQ;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$_u0Sc-UAjkiveEBWvXdf73QkCm8;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$$Lambda$Dependency$_u0Sc-UAjkiveEBWvXdf73QkCm8;-><init>(Landroid/content/res/Configuration;)V

    .line 552
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->QS_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mQsBgLooper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityStarterDelegate:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBatteryController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/hardware/display/NightDisplayListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarWindowController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ColorVolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mColorVolumeDialogController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardEnvironment:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/InitController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mInitController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/appops/AppOpsController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVisualStabilityManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGroupManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGroupAlertTransferHelper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAmbientPulseManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationBlockingHelperManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationViewHierarchyManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationFilter:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationInterruptionStateProvider:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/bubbles/BubbleController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBubbleController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationEntryManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationAlertingManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceNotificationListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mForegroundServiceNotificationListener:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/keyguard/clock/ClockManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/DumpController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDumpController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/dock/DockManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mChannelEditorDialogController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFalsingManager:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method
