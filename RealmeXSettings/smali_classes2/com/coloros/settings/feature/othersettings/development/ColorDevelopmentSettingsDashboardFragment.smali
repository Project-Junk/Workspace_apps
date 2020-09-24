.class public Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.source "ColorDevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroidx/preference/PreferenceCategory;

.field private f:Landroidx/preference/PreferenceCategory;

.field private g:Landroidx/preference/PreferenceCategory;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroidx/preference/PreferenceCategory;

.field private j:Landroidx/preference/PreferenceCategory;

.field private k:Landroidx/preference/PreferenceCategory;

.field private p:Landroidx/preference/PreferenceCategory;

.field private q:Landroidx/preference/PreferenceCategory;

.field private r:Landroidx/preference/PreferenceCategory;

.field private s:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 533
    new-instance v0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v1, Lcom/android/settings/development/l;

    invoke-direct {v1, p0}, Lcom/android/settings/development/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 240
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 243
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 248
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    new-instance v1, Lcom/android/settings/development/j;

    const-string v2, "running_apps"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Lcom/android/settings/development/k;

    invoke-direct {v1, p0}, Lcom/android/settings/development/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Lcom/android/settings/development/PictureColorModePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/PictureColorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lcom/android/settings/development/u;

    invoke-direct {v1, p0}, Lcom/android/settings/development/u;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Lcom/android/settings/development/j;

    const-string v2, "quick_settings_tiles"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_3

    .line 260
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/b;

    invoke-direct {v1, p0, p3}, Lcom/coloros/settings/feature/othersettings/development/b;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    new-instance v1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    .line 265
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/c;

    invoke-direct {v1, p0, p3}, Lcom/coloros/settings/feature/othersettings/development/c;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_4
    new-instance v1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_5

    .line 269
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/d;

    invoke-direct {v1, p0, p3}, Lcom/coloros/settings/feature/othersettings/development/d;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_5
    new-instance v1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/ColorLogdSizePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorLogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6

    .line 275
    new-instance v1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_6
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/e;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/development/e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 284
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/RealmeBluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/development/RealmeBluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_7
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/ColorBluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorBluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_0
    new-instance v1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_8

    .line 291
    new-instance v1, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v1, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance p4, Lcom/android/settings/development/NetworkMode5GPreferenceController;

    invoke-direct {p4, p0, p2}, Lcom/android/settings/development/NetworkMode5GPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_8
    new-instance p4, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {p4, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance p4, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {p4, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance p4, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {p4, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance p4, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {p4, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance p4, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance p1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance p1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance p1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance p1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$1;

    const-string p4, "density"

    invoke-direct {p1, p0, p4}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance p1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance p1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance p1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance p1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance p1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance p1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance p1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance p1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance p1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance p1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance p1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance p1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorAppsNotRespondingPreferenceController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance p1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance p1, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;

    const-string p4, "asst_capability_prioritizer"

    invoke-direct {p1, p0, p4}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance p1, Lcom/android/settings/development/j;

    const-string p4, "inactive_apps"

    invoke-direct {p1, p0, p4}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance p1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance p1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance p1, Lcom/android/settings/development/s;

    invoke-direct {p1, p0}, Lcom/android/settings/development/s;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance p1, Lcom/android/settings/development/BubbleGlobalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BubbleGlobalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance p1, Lcom/android/settings/development/ForceDarkPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceDarkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance p1, Lcom/android/settings/development/n;

    invoke-direct {p1, p0}, Lcom/android/settings/development/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance p1, Lcom/android/settings/development/t;

    invoke-direct {p1, p0}, Lcom/android/settings/development/t;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance p1, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance p1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance p1, Lcom/android/settings/development/ArtVerifierPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ArtVerifierPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance p1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance p1, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance p1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance p1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance p1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance p1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance p1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance p1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance p1, Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DesktopModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance p1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "feature_flags_dashboard"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "default_usb_configuration"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance p1, Lcom/android/settings/development/j;

    const-string p3, "background_check"

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance p1, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance p1, Lcom/android/settings/development/autofill/c;

    invoke-direct {p1, p0}, Lcom/android/settings/development/autofill/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance p1, Lcom/android/settings/development/TrustAgentsExtendUnlockPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TrustAgentsExtendUnlockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance p1, Lcom/android/settings/development/TrustLostLocksScreenPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TrustLostLocksScreenPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance p1, Lcom/android/settings/development/CameraHal3PreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CameraHal3PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->d:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->e:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 463
    :cond_1
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/e;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/e;

    .line 3106
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/development/e;->a:Landroidx/preference/PreferenceCategory;

    .line 463
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->f:Landroidx/preference/PreferenceCategory;

    .line 464
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->f:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->g:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->h:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    .line 471
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->i:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    .line 474
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->j:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    .line 477
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->k:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    .line 480
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 482
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->p:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    .line 483
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->q:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    .line 486
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 488
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->r:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_a

    .line 489
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_a
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Landroidx/preference/PreferenceScreen;)V

    return-void

    .line 212
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->b(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    return-void
.end method

.method private b(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->d:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->e:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 500
    :cond_1
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/e;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/e;

    .line 4106
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/development/e;->a:Landroidx/preference/PreferenceCategory;

    .line 500
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->f:Landroidx/preference/PreferenceCategory;

    .line 501
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->f:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->g:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 505
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->h:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    .line 508
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->i:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    .line 511
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->j:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    .line 514
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 516
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->k:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    .line 517
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 519
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->p:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    .line 520
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 522
    :cond_8
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->q:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    .line 523
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 525
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->r:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_a

    .line 526
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
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

    .line 219
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    const/4 p1, 0x0

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/f;

    invoke-direct {v2}, Lcom/android/settings/development/f;-><init>()V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    .line 226
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->c:Ljava/util/List;

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 430
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/b;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/b;

    .line 431
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/development/b;->b()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 417
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    const/4 v1, 0x1

    .line 2172
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 424
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;

    .line 2176
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 405
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 406
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->b()V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 411
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 412
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->c()V

    return-void
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    .line 167
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1500f0

    return v0

    :cond_0
    const v0, 0x7f150045

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()V
    .locals 1

    .line 190
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->o()V

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a:Z

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->s:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "dev_top"

    .line 153
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->d:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_debugging_category"

    .line 154
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->e:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_networking_category"

    .line 155
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_input_category"

    .line 156
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->h:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_drawing_category"

    .line 157
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->i:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_hw_drawing_category"

    .line 158
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->j:Landroidx/preference/PreferenceCategory;

    const-string p1, "media_category"

    .line 159
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->k:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_monitoring_category"

    .line 160
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->p:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_applications_category"

    .line 161
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->q:Landroidx/preference/PreferenceCategory;

    const-string p1, "debug_autofill_category"

    .line 162
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->r:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 178
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;

    .line 1124
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_STATE"

    .line 1125
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1127
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->c()V

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onDestroyView()V

    .line 185
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;

    .line 1132
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/development/ColorUsbConfigurationPreferenceController;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 447
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 448
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "development_settings"

    invoke-static {p2, v0, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 449
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->onSwitchChanged(Landroid/widget/Switch;Z)V

    if-nez p1, :cond_0

    .line 451
    const-class p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    .line 2246
    invoke-static {}, Lcom/coloros/settings/utils/al;->b()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 2247
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2248
    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "oppo_key_guard_switch_value"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2250
    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 2251
    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 2254
    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz p2, :cond_0

    .line 2255
    iget-object p1, p1, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final p()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->p()V

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Z)V

    return-void
.end method

.method public final q()V
    .locals 3

    .line 393
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->q()V

    .line 394
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "development_settings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final r()V
    .locals 2

    .line 399
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->r()V

    .line 400
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->s:Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;

    .line 2084
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v1, :cond_0

    .line 2085
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/development/ColorEnableDevPreferenceController;->c:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 436
    invoke-static {}, Lcom/coloros/settings/utils/al;->c()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
