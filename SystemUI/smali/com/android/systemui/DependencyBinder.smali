.class public abstract Lcom/android/systemui/DependencyBinder;
.super Ljava/lang/Object;
.source "DependencyBinder.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract provideActivityStarter(Lcom/android/systemui/ActivityStarterDelegate;)Lcom/android/systemui/plugins/ActivityStarter;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideAppOpsController(Lcom/android/systemui/appops/AppOpsControllerImpl;)Lcom/android/systemui/appops/AppOpsController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideBatteryController(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideBluetoothController(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideCastController(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)Lcom/android/systemui/statusbar/policy/CastController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideColorVolumeDialogController(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideDarkIconDispatcher(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)Lcom/android/systemui/plugins/DarkIconDispatcher;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideDeviceProvisionedController(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideExtensionController(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Lcom/android/systemui/statusbar/policy/ExtensionController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideFalsingmanager(Lcom/android/systemui/classifier/FalsingManagerProxy;)Lcom/android/systemui/plugins/FalsingManager;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Lcom/android/systemui/statusbar/policy/FlashlightController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideHotspotController(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideKeyguardMonitor(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideLocationController(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Lcom/android/systemui/statusbar/policy/LocationController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideManagedProfileController(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;)Lcom/android/systemui/statusbar/policy/NextAlarmController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideNotificationRemoteInputManager(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideQsHost(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/qs/QSHost;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideRotationLockController(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideSecurityController(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideSensorPrivacyControllerImpl(Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;)Lcom/android/systemui/statusbar/policy/SensorPrivacyController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideStatusBarIconController(Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideStatusBarStateController(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideTunerService(Lcom/android/systemui/tuner/TunerServiceImpl;)Lcom/android/systemui/tuner/TunerService;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideUserInfoContrller(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideVolumeDialogController(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideWarningsUi(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideZenModeController(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
