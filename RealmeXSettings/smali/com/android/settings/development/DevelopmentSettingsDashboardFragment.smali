.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$a;
.implements Lcom/android/settings/development/a;
.implements Lcom/android/settings/development/b;
.implements Lcom/android/settings/development/m;
.implements Lcom/android/settings/development/p;
.implements Lcom/android/settings/widget/SwitchBar$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected a:Z

.field protected b:Lcom/android/settings/widget/SwitchBar;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/android/settings/development/f;

.field private e:Lcom/android/settings/development/DevelopmentSwitchBarController;

.field private f:Landroid/bluetooth/BluetoothA2dp;

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Landroid/content/BroadcastReceiver;

.field private final i:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 528
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;-><init>()V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_debugging_features"

    .line 142
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/android/settings/development/f;

    invoke-direct {v0}, Lcom/android/settings/development/f;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->d:Lcom/android/settings/development/f;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->g:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->h:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->f:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/f;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->d:Lcom/android/settings/development/f;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v1, Lcom/android/settings/development/n;

    invoke-direct {v1, p0}, Lcom/android/settings/development/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lcom/android/settings/development/h;

    invoke-direct {v1, p0}, Lcom/android/settings/development/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lcom/android/settings/development/t;

    invoke-direct {v1, p0}, Lcom/android/settings/development/t;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v1, Lcom/android/settings/development/l;

    invoke-direct {v1, p0}, Lcom/android/settings/development/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Lcom/android/settings/development/k;

    invoke-direct {v1, p0}, Lcom/android/settings/development/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Lcom/android/settings/development/PictureColorModePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/PictureColorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/android/settings/development/u;

    invoke-direct {v1, p0}, Lcom/android/settings/development/u;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/android/settings/development/d;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/d;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/android/settings/development/i;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/i;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/android/settings/development/o;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/o;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Lcom/android/settings/development/r;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/r;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Lcom/android/settings/development/ArtVerifierPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ArtVerifierPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v1, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance p3, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;

    invoke-direct {p3, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance p3, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;

    invoke-direct {p3, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance p3, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;

    invoke-direct {p3, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance p3, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;

    invoke-direct {p3, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance p3, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;

    invoke-direct {p3, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance p3, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance p3, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance p3, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance p3, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance p3, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance p3, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance p1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance p1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance p1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance p1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance p1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance p1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance p1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance p1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance p1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance p1, Lcom/android/settings/development/ForceDarkPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceDarkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance p1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance p1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance p1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance p1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance p1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance p1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance p1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance p1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance p1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance p1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance p1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance p1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance p1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance p1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance p1, Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DesktopModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance p1, Lcom/android/settings/development/s;

    invoke-direct {p1, p0}, Lcom/android/settings/development/s;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance p1, Lcom/android/settings/development/BubbleGlobalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BubbleGlobalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance p1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "running_apps"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "demo_mode"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "quick_settings_tiles"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "feature_flags_dashboard"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "default_usb_configuration"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "density"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "background_check"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "inactive_apps"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance p1, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance p1, Lcom/android/settings/development/autofill/c;

    invoke-direct {p1, p0}, Lcom/android/settings/development/autofill/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance p1, Lcom/android/settings/development/OverlayCategoryPreferenceController;

    const-string p2, "android.theme.customization.accent_color"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/OverlayCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance p1, Lcom/android/settings/development/OverlayCategoryPreferenceController;

    const-string p2, "android.theme.customization.font"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/OverlayCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance p1, Lcom/android/settings/development/OverlayCategoryPreferenceController;

    const-string p2, "android.theme.customization.adaptive_icon_shape"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/OverlayCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance p1, Lcom/android/settings/development/TrustAgentsExtendUnlockPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TrustAgentsExtendUnlockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance p1, Lcom/android/settings/development/TrustLostLocksScreenPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TrustLostLocksScreenPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->f:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0, v0, v0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DevSettingsDashboard"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    const/4 p1, 0x0

    return-object p1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/f;

    invoke-direct {v2}, Lcom/android/settings/development/f;-><init>()V

    .line 341
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    .line 344
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 277
    const-class v0, Lcom/android/settings/development/i;

    .line 7522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 277
    check-cast v0, Lcom/android/settings/development/i;

    .line 279
    invoke-virtual {v0}, Lcom/android/settings/development/i;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 262
    const-class v0, Lcom/android/settings/development/d;

    .line 5522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 262
    check-cast v0, Lcom/android/settings/development/d;

    .line 264
    invoke-virtual {v0}, Lcom/android/settings/development/d;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 270
    const-class v0, Lcom/android/settings/development/d;

    .line 6522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 270
    check-cast v0, Lcom/android/settings/development/d;

    .line 272
    invoke-virtual {v0}, Lcom/android/settings/development/d;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 298
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 10522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    .line 300
    invoke-static {}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->b()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 248
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 3522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 248
    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 250
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->b()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 255
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 4522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 255
    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 257
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->c()V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    .line 332
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1500f0

    return v0

    :cond_0
    const v0, 0x7f150087

    return v0
.end method

.method public final h()V
    .locals 1

    .line 284
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 8522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 284
    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 286
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->b()V

    return-void
.end method

.method public final n()V
    .locals 1

    .line 291
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 9522
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    .line 291
    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 10080
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->e()V

    return-void
.end method

.method public o()V
    .locals 3

    .line 363
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 368
    instance-of v2, v1, Lcom/android/settingslib/development/b;

    if-eqz v2, :cond_1

    .line 369
    check-cast v1, Lcom/android/settingslib/development/b;

    invoke-virtual {v1}, Lcom/android/settingslib/development/b;->g()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1248
    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->o:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->l()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->u()Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    new-instance p1, Lcom/android/settings/development/DevelopmentSwitchBarController;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->e:Lcom/android/settings/development/DevelopmentSwitchBarController;

    .line 180
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->p()V

    return-void

    .line 185
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->o()V

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->m()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2226
    iget-object p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->n:Landroid/widget/TextView;

    const v0, 0x7f120768

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 170
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 307
    instance-of v3, v2, Lcom/android/settings/development/q;

    if-eqz v3, :cond_0

    .line 310
    check-cast v2, Lcom/android/settings/development/q;

    .line 311
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/q;->a(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 2348
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 2353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 201
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 206
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroyView()V

    .line 2358
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2359
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 211
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->f:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->f:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_1

    .line 230
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    return-void

    .line 232
    :cond_1
    const-class p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 2522
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    .line 233
    check-cast p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    if-eqz p1, :cond_3

    .line 237
    invoke-static {}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 238
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->p()V

    :cond_4
    :goto_1
    return-void
.end method

.method public p()V
    .locals 5

    .line 375
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;Z)V

    .line 379
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object v0

    const/4 v2, 0x1

    .line 11044
    iput-boolean v2, v0, Lcom/android/settingslib/development/d;->a:Z

    .line 381
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/a;

    .line 382
    instance-of v4, v3, Lcom/android/settingslib/development/b;

    if-eqz v4, :cond_1

    .line 383
    check-cast v3, Lcom/android/settingslib/development/b;

    .line 384
    invoke-virtual {v3}, Lcom/android/settingslib/development/b;->k_()V

    goto :goto_0

    .line 11048
    :cond_2
    iput-boolean v1, v0, Lcom/android/settingslib/development/d;->a:Z

    .line 388
    invoke-virtual {v0}, Lcom/android/settingslib/development/d;->b()V

    return-void
.end method

.method protected q()V
    .locals 0

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->o()V

    return-void
.end method

.method protected r()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method final s()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
