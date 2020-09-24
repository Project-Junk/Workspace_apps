.class public final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$FragmentCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    }
.end annotation


# instance fields
.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private aliPayTileProvider:Lcom/coloros/systemui/qs/tiles/AliPayTile_Factory;

.field private aliScanTileProvider:Lcom/coloros/systemui/qs/tiles/AliScanTile_Factory;

.field private ambientPulseManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            ">;"
        }
    .end annotation
.end field

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

.field private autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

.field private batteryControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private calculatorTileProvider:Lcom/coloros/systemui/qs/tiles/CalculatorTile_Factory;

.field private cameraTileProvider:Lcom/coloros/systemui/qs/tiles/CameraTile_Factory;

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private childrenModeTileProvider:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile_Factory;

.field private cleanTileProvider:Lcom/coloros/systemui/qs/tiles/CleanTile_Factory;

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private clockTileProvider:Lcom/coloros/systemui/qs/tiles/ClockTile_Factory;

.field private colorAirplaneModeTileProvider:Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile_Factory;

.field private colorBatterySaverTileProvider:Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile_Factory;

.field private colorBluetoothTileProvider:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile_Factory;

.field private colorCastTileProvider:Lcom/coloros/systemui/qs/tiles/ColorCastTile_Factory;

.field private colorCellularTileProvider:Lcom/coloros/systemui/qs/tiles/ColorCellularTile_Factory;

.field private colorDndTileProvider:Lcom/coloros/systemui/qs/tiles/ColorDndTile_Factory;

.field private colorFlashlightTileProvider:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile_Factory;

.field private colorHotspotTileProvider:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;

.field private colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

.field private colorLocationTileProvider:Lcom/coloros/systemui/qs/tiles/ColorLocationTile_Factory;

.field private colorNfcTileProvider:Lcom/coloros/systemui/qs/tiles/ColorNfcTile_Factory;

.field private colorRotationLockTileProvider:Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile_Factory;

.field private colorVolumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private colorWifiTileProvider:Lcom/coloros/systemui/qs/tiles/ColorWifiTile_Factory;

.field private colorWorkModeTileProvider:Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;

.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMonitorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private locationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private lockTileProvider:Lcom/coloros/systemui/qs/tiles/LockTile_Factory;

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

.field private notificationAlertingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;

.field private notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideDockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideEnhancedEstimatesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardEnvironmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideQsBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideShadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private realmeRingerModeTileProvider:Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile_Factory;

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private ringerModeTileProvider:Lcom/coloros/systemui/qs/tiles/RingerModeTile_Factory;

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private smallScreenTileProvider:Lcom/coloros/systemui/qs/tiles/SmallScreenTile_Factory;

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIRootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

.field private uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wechatPayTileProvider:Lcom/coloros/systemui/qs/tiles/WechatPayTile_Factory;

.field private wechatScanTileProvider:Lcom/coloros/systemui/qs/tiles/WechatScanTile_Factory;

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V
    .locals 0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initialize(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initialize2(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAssistManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorVolumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideEnhancedEstimatesProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKeyguardEnvironmentProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideQsBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    .locals 2

    .line 550
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V
    .locals 11

    .line 556
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->create(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 559
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;

    move-result-object v0

    .line 558
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 562
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v0

    .line 561
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 565
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;

    move-result-object v0

    .line 564
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 566
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 568
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v0

    .line 567
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 574
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v0

    .line 573
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 580
    invoke-static {}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create()Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 584
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 583
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v0

    .line 582
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 587
    invoke-static {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/AsyncSensorManager_Factory;

    move-result-object v0

    .line 586
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 592
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 591
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;

    move-result-object v0

    .line 590
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 596
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 595
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;

    move-result-object v0

    .line 594
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 597
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 599
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v0

    .line 598
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 603
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 605
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v0

    .line 604
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 606
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 607
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 610
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;

    move-result-object v0

    .line 609
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 611
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 613
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v0

    .line 612
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 615
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 617
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v0

    .line 616
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 621
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 623
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v0

    .line 622
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 625
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 627
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v0

    .line 626
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 629
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 630
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 631
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 632
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 633
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 634
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 635
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 637
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v0

    .line 636
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 642
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 643
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 647
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 646
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideEnhancedEstimatesFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideEnhancedEstimatesFactory;

    move-result-object v0

    .line 645
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideEnhancedEstimatesProvider:Ljavax/inject/Provider;

    .line 648
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideEnhancedEstimatesProvider:Ljavax/inject/Provider;

    .line 650
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;

    move-result-object v0

    .line 649
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 655
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 654
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;

    move-result-object v0

    .line 653
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 656
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 657
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 658
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 659
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 663
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 662
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v0

    .line 661
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 664
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 665
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 669
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 668
    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;

    move-result-object v0

    .line 667
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAssistManagerProvider:Ljavax/inject/Provider;

    .line 672
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 674
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v0

    .line 673
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 676
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 678
    invoke-static {v0, v1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v0

    .line 677
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 680
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 681
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 682
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 683
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 687
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 686
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v0

    .line 685
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 689
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 690
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 691
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 693
    invoke-static {p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 695
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 696
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 698
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v0

    .line 697
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 705
    invoke-static {v0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 707
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 708
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 710
    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl_Factory;

    move-result-object v0

    .line 709
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorVolumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 713
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v0

    .line 712
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 714
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 715
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 716
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 718
    invoke-static {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v0

    .line 717
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 720
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 722
    invoke-static {v0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v0

    .line 721
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 725
    invoke-static {}, Lcom/android/systemui/ForegroundServiceController_Factory;->create()Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 726
    invoke-static {}, Lcom/android/systemui/UiOffloadThread_Factory;->create()Lcom/android/systemui/UiOffloadThread_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 727
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 729
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v0

    .line 728
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 731
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 733
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v0

    .line 732
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 739
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;

    move-result-object v0

    .line 738
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 743
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 742
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v0

    .line 741
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 744
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 746
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    move-result-object v0

    .line 745
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 750
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 752
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v0

    .line 751
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 758
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 759
    invoke-static {v0}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 762
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;

    move-result-object v0

    .line 761
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 765
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;

    move-result-object v0

    .line 764
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 767
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 771
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 770
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideKeyguardEnvironmentFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideKeyguardEnvironmentFactory;

    move-result-object v0

    .line 769
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKeyguardEnvironmentProvider:Ljavax/inject/Provider;

    .line 775
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 774
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;

    move-result-object v0

    .line 773
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    .line 777
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->create()Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 778
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 780
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object v0

    .line 779
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 782
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    .line 783
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 785
    invoke-static {v0, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object v0

    .line 784
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 787
    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 791
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 790
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;

    move-result-object v0

    .line 789
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 793
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;->create()Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 797
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 796
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationEntryManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationEntryManagerFactory;

    move-result-object v0

    .line 795
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 798
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 800
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;

    move-result-object v0

    .line 799
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 802
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 804
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;

    move-result-object v0

    .line 803
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 807
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 808
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 810
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;

    move-result-object v0

    .line 809
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 816
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 817
    invoke-static {v0}, Lcom/android/systemui/statusbar/AmbientPulseManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/AmbientPulseManager_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    .line 818
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 820
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;

    move-result-object v0

    .line 819
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    .line 821
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 823
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SmartReplyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SmartReplyController_Factory;

    move-result-object v0

    .line 822
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    .line 825
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 827
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;

    move-result-object v0

    .line 826
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 834
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 836
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object v0

    .line 835
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 840
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 839
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationListenerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationListenerFactory;

    move-result-object v0

    .line 838
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 841
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 842
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 843
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 845
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;

    move-result-object v0

    .line 844
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    .line 851
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 852
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleData_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleData_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 853
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 855
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v0

    .line 854
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 857
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 859
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;

    move-result-object v0

    .line 858
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 870
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create()Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 874
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 873
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;

    move-result-object v0

    .line 872
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    .line 875
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 876
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 878
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v0

    .line 877
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 880
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 882
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/bubbles/BubbleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleController_Factory;

    move-result-object v0

    .line 881
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    .line 889
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 891
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;

    move-result-object v0

    .line 890
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    .line 902
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 901
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;

    move-result-object v0

    .line 900
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 906
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 905
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v0

    .line 904
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 907
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 909
    invoke-static {v0, v1, v2}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v0

    .line 908
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 915
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideQsBgLooperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideQsBgLooperFactory;

    move-result-object v0

    .line 914
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideQsBgLooperProvider:Ljavax/inject/Provider;

    .line 918
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;

    move-result-object v0

    .line 917
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    .line 919
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 921
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v0

    .line 920
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 925
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 924
    invoke-static {p1, v0}, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;

    move-result-object p1

    .line 923
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDockManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V
    .locals 34

    move-object/from16 v0, p0

    .line 930
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDockManagerProvider:Ljavax/inject/Provider;

    .line 932
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v1

    .line 931
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    .line 941
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 940
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object v1

    .line 939
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 945
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 944
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    .line 943
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 949
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 948
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;

    move-result-object v1

    .line 947
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 950
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 951
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    .line 952
    invoke-static {}, Lcom/android/systemui/DumpController_Factory;->create()Lcom/android/systemui/DumpController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 956
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 955
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    .line 954
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 957
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 959
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    .line 958
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 961
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 963
    invoke-static {v1, v2, v3}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v1

    .line 962
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 965
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 967
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    .line 966
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 971
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 973
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    .line 972
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 975
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 976
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 977
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 978
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ColorWifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorWifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorWifiTileProvider:Lcom/coloros/systemui/qs/tiles/ColorWifiTile_Factory;

    .line 982
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 983
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorBluetoothTileProvider:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile_Factory;

    .line 987
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 988
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ColorCellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorCellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorCellularTileProvider:Lcom/coloros/systemui/qs/tiles/ColorCellularTile_Factory;

    .line 992
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 993
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ColorDndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorDndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorDndTileProvider:Lcom/coloros/systemui/qs/tiles/ColorDndTile_Factory;

    .line 997
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 998
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    .line 999
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1000
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorAirplaneModeTileProvider:Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile_Factory;

    .line 1002
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 1003
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorWorkModeTileProvider:Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;

    .line 1005
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 1006
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorRotationLockTileProvider:Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile_Factory;

    .line 1008
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 1009
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorFlashlightTileProvider:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile_Factory;

    .line 1011
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1012
    invoke-static {v1, v2, v3, v4}, Lcom/coloros/systemui/qs/tiles/ColorLocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorLocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorLocationTileProvider:Lcom/coloros/systemui/qs/tiles/ColorLocationTile_Factory;

    .line 1017
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1018
    invoke-static {v1, v2, v3, v4, v5}, Lcom/coloros/systemui/qs/tiles/ColorCastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorCastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorCastTileProvider:Lcom/coloros/systemui/qs/tiles/ColorCastTile_Factory;

    .line 1024
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 1025
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorHotspotTileProvider:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;

    .line 1029
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    .line 1034
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorBatterySaverTileProvider:Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile_Factory;

    .line 1037
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    .line 1040
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    .line 1041
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/coloros/systemui/qs/tiles/ColorNfcTile_Factory;->create(Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ColorNfcTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorNfcTileProvider:Lcom/coloros/systemui/qs/tiles/ColorNfcTile_Factory;

    .line 1042
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-static {v1}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    .line 1044
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ClockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ClockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->clockTileProvider:Lcom/coloros/systemui/qs/tiles/ClockTile_Factory;

    .line 1049
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/CameraTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/CameraTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->cameraTileProvider:Lcom/coloros/systemui/qs/tiles/CameraTile_Factory;

    .line 1054
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/coloros/systemui/qs/tiles/LockTile_Factory;->create(Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/LockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lockTileProvider:Lcom/coloros/systemui/qs/tiles/LockTile_Factory;

    .line 1055
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/AliPayTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/AliPayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->aliPayTileProvider:Lcom/coloros/systemui/qs/tiles/AliPayTile_Factory;

    .line 1058
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/AliScanTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/AliScanTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->aliScanTileProvider:Lcom/coloros/systemui/qs/tiles/AliScanTile_Factory;

    .line 1061
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/WechatPayTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/WechatPayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wechatPayTileProvider:Lcom/coloros/systemui/qs/tiles/WechatPayTile_Factory;

    .line 1064
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/WechatScanTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/WechatScanTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wechatScanTileProvider:Lcom/coloros/systemui/qs/tiles/WechatScanTile_Factory;

    .line 1067
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1068
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/CleanTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/CleanTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->cleanTileProvider:Lcom/coloros/systemui/qs/tiles/CleanTile_Factory;

    .line 1072
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 1073
    invoke-static {v1, v2}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/SmallScreenTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smallScreenTileProvider:Lcom/coloros/systemui/qs/tiles/SmallScreenTile_Factory;

    .line 1075
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1076
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/ChildrenModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->childrenModeTileProvider:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile_Factory;

    .line 1080
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/qs/tiles/CalculatorTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/CalculatorTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->calculatorTileProvider:Lcom/coloros/systemui/qs/tiles/CalculatorTile_Factory;

    .line 1085
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/coloros/systemui/qs/tiles/RingerModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/RingerModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ringerModeTileProvider:Lcom/coloros/systemui/qs/tiles/RingerModeTile_Factory;

    .line 1086
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1087
    invoke-static {v1}, Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->realmeRingerModeTileProvider:Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile_Factory;

    .line 1088
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1089
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    .line 1093
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorWifiTileProvider:Lcom/coloros/systemui/qs/tiles/ColorWifiTile_Factory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorBluetoothTileProvider:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorCellularTileProvider:Lcom/coloros/systemui/qs/tiles/ColorCellularTile_Factory;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorDndTileProvider:Lcom/coloros/systemui/qs/tiles/ColorDndTile_Factory;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorAirplaneModeTileProvider:Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile_Factory;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorWorkModeTileProvider:Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile_Factory;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorRotationLockTileProvider:Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorFlashlightTileProvider:Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile_Factory;

    iget-object v11, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorLocationTileProvider:Lcom/coloros/systemui/qs/tiles/ColorLocationTile_Factory;

    iget-object v12, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorCastTileProvider:Lcom/coloros/systemui/qs/tiles/ColorCastTile_Factory;

    iget-object v13, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorHotspotTileProvider:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile_Factory;

    iget-object v14, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    iget-object v15, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorBatterySaverTileProvider:Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile_Factory;

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->colorNfcTileProvider:Lcom/coloros/systemui/qs/tiles/ColorNfcTile_Factory;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->clockTileProvider:Lcom/coloros/systemui/qs/tiles/ClockTile_Factory;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->cameraTileProvider:Lcom/coloros/systemui/qs/tiles/CameraTile_Factory;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lockTileProvider:Lcom/coloros/systemui/qs/tiles/LockTile_Factory;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->aliPayTileProvider:Lcom/coloros/systemui/qs/tiles/AliPayTile_Factory;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->aliScanTileProvider:Lcom/coloros/systemui/qs/tiles/AliScanTile_Factory;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wechatPayTileProvider:Lcom/coloros/systemui/qs/tiles/WechatPayTile_Factory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wechatScanTileProvider:Lcom/coloros/systemui/qs/tiles/WechatScanTile_Factory;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->cleanTileProvider:Lcom/coloros/systemui/qs/tiles/CleanTile_Factory;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smallScreenTileProvider:Lcom/coloros/systemui/qs/tiles/SmallScreenTile_Factory;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->childrenModeTileProvider:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile_Factory;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->calculatorTileProvider:Lcom/coloros/systemui/qs/tiles/CalculatorTile_Factory;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ringerModeTileProvider:Lcom/coloros/systemui/qs/tiles/RingerModeTile_Factory;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->realmeRingerModeTileProvider:Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile_Factory;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-object/from16 v33, v1

    .line 1095
    invoke-static/range {v2 .. v33}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    .line 1094
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 1128
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    .line 1129
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 1130
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    .line 1140
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 1141
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 1143
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    .line 1142
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1153
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 1157
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    .line 1156
    invoke-static {v1}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;

    move-result-object v1

    .line 1155
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 1158
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    .line 1160
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    .line 1159
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .locals 2

    .line 1170
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .locals 2

    .line 1180
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$FragmentCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
    .locals 0

    .line 1165
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/leak/GarbageMonitor;

    return-object p0
.end method

.method public createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .locals 2

    .line 1185
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
    .locals 2

    .line 1175
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method
