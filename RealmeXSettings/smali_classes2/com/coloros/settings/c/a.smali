.class public final Lcom/coloros/settings/c/a;
.super Ljava/lang/Object;
.source "ColorSettingsGateway.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x33

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoFragment;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/language/LocaleSettingFragment;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/input/ColorAvailableVirtualKeyboardFragment;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/development/ColorWebViewAppPicker;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/homepage/ColorTopSecuritySettings;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionarySettings;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-class v1, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/c/a;->a:[Ljava/lang/String;

    return-void
.end method
