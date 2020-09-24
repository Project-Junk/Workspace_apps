.class public final Lcom/android/settings/search/f;
.super Lcom/android/settingslib/o/c;
.source "SearchIndexableResourcesImpl.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/f;->a:Ljava/util/Map;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/f;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/android/settingslib/o/c;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/f;->b:Ljava/util/Set;

    const/4 v0, 0x1

    .line 117
    iput v0, p0, Lcom/android/settings/search/f;->d:I

    .line 118
    sget-object v0, Lcom/android/settings/search/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    const-class v0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 121
    const-class v0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 123
    const-class v0, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 124
    const-class v0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 125
    const-class v0, Lcom/coloros/settings/feature/display/video/Iris5MotionFluencySettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 128
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-class v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderRealmeFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 131
    :cond_0
    const-class v0, Lcom/coloros/settings/feature/display/screenoffreminder/ScreenReminderFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 134
    :goto_0
    const-class v0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 135
    const-class v0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 136
    const-class v0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 137
    const-class v0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 139
    const-class v0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 140
    const-class v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 141
    const-class v0, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 143
    const-class v0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 144
    const-class v0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 145
    const-class v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 146
    const-class v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    const-class v1, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;

    invoke-static {v0, v1}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 147
    const-class v0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 148
    const-class v0, Lcom/coloros/settings/feature/fingerprint/FingerprintUsage;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 149
    const-class v0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 150
    const-class v0, Lcom/coloros/settings/feature/face/FaceUsage;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 154
    const-class v0, Lcom/android/settings/accessibility/VibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 157
    invoke-static {}, Lcom/coloros/settings/utils/h;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-class v0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 161
    :cond_1
    const-class v0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 162
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_2

    .line 163
    const-class v0, Lcom/coloros/settings/privacy/ColorMorePrivacySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 166
    :cond_2
    const-class v0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 167
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_3

    .line 168
    const-class v0, Lcom/coloros/settings/feature/language/LocaleSettingFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 171
    :cond_3
    const-class v0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 172
    const-class v0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 173
    const-class v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 179
    invoke-static {}, Lcom/coloros/settings/utils/bh;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const-class v0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 184
    :cond_4
    const-class v0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 187
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    const-class v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 191
    :cond_5
    const-class v0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerSettingFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 192
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_6

    const-class v0, Lcom/coloros/settings/feature/homepage/ColorTopSecuritySettings;

    goto :goto_1

    :cond_6
    const-class v0, Lcom/coloros/settings/feature/security/ColorSecuritySettings;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 193
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_7

    .line 194
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 195
    const-class v0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 197
    :cond_7
    const-class v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 198
    const-class v0, Lcom/coloros/settings/feature/security/location/ColorScanningSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 199
    const-class v0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 201
    const-class v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 202
    const-class v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 203
    const-class v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 204
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 205
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 207
    :cond_8
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_9

    .line 208
    const-class v0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 210
    :cond_9
    sget-boolean v0, Lcom/coloros/settings/a;->c:Z

    if-nez v0, :cond_a

    .line 211
    const-class v0, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 214
    :cond_a
    const-class v0, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 216
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 217
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 218
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorAndroidVersionInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 219
    const-class v0, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 220
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 221
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 224
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;

    const-class v1, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;

    invoke-static {v0, v1}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 226
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;

    const-class v1, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;

    invoke-static {v0, v1}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 228
    const-class v0, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 229
    const-class v0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 233
    sget-boolean v0, Lcom/coloros/settings/a;->p:Z

    if-eqz v0, :cond_b

    .line 234
    const-class v0, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 237
    :cond_b
    const-class v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 240
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 241
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-nez v0, :cond_c

    .line 242
    const-class v0, Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 243
    const-class v0, Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment;

    const-class v1, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_2

    .line 246
    :cond_c
    const-class v0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    .line 247
    const-class v0, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;

    const-class v1, Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 252
    :cond_d
    :goto_2
    const-class v0, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/search/f;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 113
    sget-object v0, Lcom/android/settings/search/f;->c:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/android/settings/search/f;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/settings/search/f;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/settings/search/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/settings/search/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/search/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/settings/search/f;->d:I

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
