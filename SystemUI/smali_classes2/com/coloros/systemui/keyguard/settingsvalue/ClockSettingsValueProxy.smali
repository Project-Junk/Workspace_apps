.class public Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "ClockSettingsValueProxy.java"


# static fields
.field public static final DUAL_CLOCK_SCREEN_LOCK_DEFAULT_STATE:I = 0x1

.field public static final DUAL_CLOCK_SWITCH_DEFAULT_STATE:I

.field public static final ENABLE_DUAL_CLOCK_SCREEN_CLOCK_SWITCH:Ljava/lang/String; = "enable_dual_clock_screen_clock_switch"

.field public static final ENABLE_DUAL_CLOCK_SWITCH:Ljava/lang/String; = "enable_dual_clock_switch"

.field public static final OPPO_WEATHER_INFO:Ljava/lang/String; = "oppo_weather_info"

.field public static final OPPO_WEATHER_INFO_RESIDENT:Ljava/lang/String; = "oppo_weather_info_resident"

.field public static final SWITCH_STATE_ON:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->DUAL_CLOCK_SWITCH_DEFAULT_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getDualClockEnable(Landroid/content/Context;)I
    .locals 2

    .line 28
    sget v0, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->DUAL_CLOCK_SWITCH_DEFAULT_STATE:I

    const-string v1, "enable_dual_clock_switch"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDualClockOnScreenLock(Landroid/content/Context;)I
    .locals 2

    const-string v0, "enable_dual_clock_screen_clock_switch"

    const/4 v1, 0x1

    .line 32
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLocatedWeatherInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "oppo_weather_info"

    .line 36
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResidentWeatherInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "oppo_weather_info_resident"

    .line 40
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCustomClockFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "lock_screen_custom_clock_face"

    .line 44
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/keyguard/settingsvalue/ClockSettingsValueProxy;->setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
