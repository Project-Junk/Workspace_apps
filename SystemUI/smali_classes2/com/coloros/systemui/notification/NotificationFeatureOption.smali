.class public Lcom/coloros/systemui/notification/NotificationFeatureOption;
.super Ljava/lang/Object;
.source "NotificationFeatureOption.java"


# static fields
.field private static final ADB_NEED_SIM_AUTO_STR:Ljava/lang/String; = "oppo.adb.needsimcard.auto"

.field private static final ADB_NEED_SIM_MANUAL_STR:Ljava/lang/String; = "oppo.adb.needsimcard.manual"

.field private static BATT_WARNING_ALLOWED:Z = true

.field private static final CHARGING_ERROR_NO_ALERT_STR:Ljava/lang/String; = "oppo.systemui.chargingerror.noalert"

.field private static CMCC_CUSTOMIZED_VERSION:Z = false

.field private static final CMCC_CUSTOMIZED_VERSION_STRING:Ljava/lang/String; = "oppo.operationmanual.cmcc.support"

.field private static CMCC_STRATEGY_VERSION:Z = false

.field private static final CTA_VERSION:Ljava/lang/String; = "oppo.cta.support"

.field private static DISABLE_POWER_SAVE:Z = false

.field private static GAUSSIANBLUR_DISABLE:Z = false

.field private static IS_ADB_NEED_SIM_AUTO:Z = false

.field private static IS_ADB_NEED_SIM_MANUAL:Z = false

.field private static IS_CHARGING_ERROR_NO_ALERT:Z = false

.field private static IS_CTA_SUPPORT:Z = false

.field private static IS_CTS_SUPPORT:Z = false

.field private static final IS_CTS_SUPPORT_STRING:Ljava/lang/String; = "persist.oppo.ctsversion"

.field private static final IS_GAUSSIANBLUR_DISABLE_STRING:Ljava/lang/String; = "oppo.statusbar.gaussianblur.disable"

.field private static IS_LINEAR_VIBRATOR_SUPPORT:Z = false

.field private static final IS_LINEAR_VIBRATOR_SUPPORT_STRING:Ljava/lang/String; = "oppo.feature.vibrator.waveform.support"

.field private static IS_LOW_BATTERY_NO_SOUND:Z = false

.field private static IS_MTK_PLATFORM:Z = false

.field private static final IS_OPPO_AOD_SUPPORT_STRING:Ljava/lang/String; = "oppo.aod.support"

.field private static final IS_OPPO_BUSINESS_CUSTOM_SUPPORT_STRING:Ljava/lang/String; = "oppo.business.custom"

.field private static IS_OPPO_DEVICE:Z = false

.field private static final IS_OPPO_DEVICE_STRING:Ljava/lang/String; = "oppo.sw.solution.device"

.field private static final IS_SUPPORT_UNDER_SCREEN_PROXIMITY_STRING:Ljava/lang/String; = "oppo.proximity.under.lcd"

.field private static final LOW_BATTERY_NO_SOUND_STR:Ljava/lang/String; = "oppo.systemui.lowbattery.nosound"

.field private static MTK_GEMINI_SUPPORT:Z = false

.field private static final MTK_GEMINI_SUPPORT_STRING:Ljava/lang/String; = "mtk.gemini.support"

.field private static OPPO_AOD_SUPPORT:Z = false

.field private static OPPO_BUSINESS_CUSTOM_SUPPORT:Z = false

.field private static final OPPO_DISABLE_POWER_SAVE_STRING:Ljava/lang/String; = "oppo.disable.power.save"

.field private static final OPPO_SYSTEM_CMCC_POWERSAVE:Ljava/lang/String; = "oppo.system.cmcc.powersave"

.field private static final PLATFORM_MTK_STRING:Ljava/lang/String; = "oppo.hw.manufacturer.mtk"

.field private static PLATFORM_QCOM:Z = false

.field private static final PLATFORM_QCOM_STRING:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field public static final PROP_ALLOW_BATTERY_WARNING:Ljava/lang/String; = "oppo.battery.warning.allow"

.field private static QCOM_GEMINI_SUPPORT:Z = false

.field private static final QCOM_GEMINI_SUPPORT_STRING:Ljava/lang/String; = "oppo.qualcomm.gemini.support"

.field private static SUPPORT_UNDER_SCREEN_PROXIMITY:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbService_FeatureOp"

.field public static final isDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "persist.sys.assert.panic"

    .line 69
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isDebugMode:Z

    .line 84
    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->MTK_GEMINI_SUPPORT:Z

    .line 85
    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->QCOM_GEMINI_SUPPORT:Z

    const/4 v1, 0x0

    .line 86
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_ADB_NEED_SIM_AUTO:Z

    .line 87
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_ADB_NEED_SIM_MANUAL:Z

    .line 88
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_MTK_PLATFORM:Z

    .line 89
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CTA_SUPPORT:Z

    .line 92
    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_OPPO_DEVICE:Z

    .line 93
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->PLATFORM_QCOM:Z

    .line 94
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CTS_SUPPORT:Z

    .line 95
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_LOW_BATTERY_NO_SOUND:Z

    .line 96
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CHARGING_ERROR_NO_ALERT:Z

    .line 97
    sput-boolean v1, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_LINEAR_VIBRATOR_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMtkGeminiSupport()Z
    .locals 1

    .line 203
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->MTK_GEMINI_SUPPORT:Z

    return v0
.end method

.method public static getQcomGeminiSupport()Z
    .locals 1

    .line 207
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->QCOM_GEMINI_SUPPORT:Z

    return v0
.end method

.method public static isAdbNeedSimAuto()Z
    .locals 1

    .line 195
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_ADB_NEED_SIM_AUTO:Z

    return v0
.end method

.method public static isAdbNeedSimManual()Z
    .locals 1

    .line 199
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_ADB_NEED_SIM_MANUAL:Z

    return v0
.end method

.method public static isBattWarningAllowed()Z
    .locals 1

    .line 135
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->BATT_WARNING_ALLOWED:Z

    return v0
.end method

.method public static isChargingErrorNoAlert()Z
    .locals 1

    .line 187
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CHARGING_ERROR_NO_ALERT:Z

    return v0
.end method

.method public static isCmccCustomizedVersion()Z
    .locals 1

    .line 147
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->CMCC_CUSTOMIZED_VERSION:Z

    return v0
.end method

.method public static isCmccStrategyVersion()Z
    .locals 1

    .line 143
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->CMCC_STRATEGY_VERSION:Z

    return v0
.end method

.method public static isCtaSupport()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CTA_SUPPORT:Z

    return v0
.end method

.method public static isCtsSupport()Z
    .locals 1

    .line 183
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CTS_SUPPORT:Z

    return v0
.end method

.method public static isDisablePowerSave()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->DISABLE_POWER_SAVE:Z

    return v0
.end method

.method public static isGaussianblurDisable()Z
    .locals 1

    .line 159
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->GAUSSIANBLUR_DISABLE:Z

    return v0
.end method

.method public static isLinearVibratorSupport()Z
    .locals 1

    .line 191
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_LINEAR_VIBRATOR_SUPPORT:Z

    return v0
.end method

.method public static isLowBatteryNoSound()Z
    .locals 1

    .line 179
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_LOW_BATTERY_NO_SOUND:Z

    return v0
.end method

.method public static isMtkPlatform()Z
    .locals 1

    .line 229
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_MTK_PLATFORM:Z

    return v0
.end method

.method public static isOppoAodSupport()Z
    .locals 1

    .line 167
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->OPPO_AOD_SUPPORT:Z

    return v0
.end method

.method public static isOppoBusinessCustomSupport()Z
    .locals 1

    .line 155
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->OPPO_BUSINESS_CUSTOM_SUPPORT:Z

    return v0
.end method

.method public static isOppoDevice()Z
    .locals 1

    .line 175
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_OPPO_DEVICE:Z

    return v0
.end method

.method public static isPlatformQcom()Z
    .locals 1

    .line 171
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->PLATFORM_QCOM:Z

    return v0
.end method

.method public static isSpecificIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "UsbService_FeatureOp"

    const-string v1, "Common"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p0, "intent == null"

    .line 216
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 220
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 222
    sget-boolean v3, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, "not"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exist"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSupportUnderScreenProximity()Z
    .locals 1

    .line 163
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->SUPPORT_UNDER_SCREEN_PROXIMITY:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    const-string v0, "oppo.battery.warning.allow"

    const/4 v1, 0x1

    .line 101
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->BATT_WARNING_ALLOWED:Z

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.system.cmcc.powersave"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->CMCC_STRATEGY_VERSION:Z

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.operationmanual.cmcc.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->CMCC_CUSTOMIZED_VERSION:Z

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.disable.power.save"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->DISABLE_POWER_SAVE:Z

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.business.custom"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->OPPO_BUSINESS_CUSTOM_SUPPORT:Z

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.statusbar.gaussianblur.disable"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->GAUSSIANBLUR_DISABLE:Z

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.proximity.under.lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->SUPPORT_UNDER_SCREEN_PROXIMITY:Z

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.aod.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->OPPO_AOD_SUPPORT:Z

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_LINEAR_VIBRATOR_SUPPORT:Z

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->MTK_GEMINI_SUPPORT:Z

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.qualcomm.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->QCOM_GEMINI_SUPPORT:Z

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.adb.needsimcard.auto"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_ADB_NEED_SIM_AUTO:Z

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.adb.needsimcard.manual"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_ADB_NEED_SIM_MANUAL:Z

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_MTK_PLATFORM:Z

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.cta.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CTA_SUPPORT:Z

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.hw.manufacturer.qualcomm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->PLATFORM_QCOM:Z

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.sw.solution.device"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_OPPO_DEVICE:Z

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.lowbattery.nosound"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_LOW_BATTERY_NO_SOUND:Z

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "persist.oppo.ctsversion"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CTS_SUPPORT:Z

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.systemui.chargingerror.noalert"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->IS_CHARGING_ERROR_NO_ALERT:Z

    return-void
.end method

.method public static setBattWarningAllowed(Z)V
    .locals 0

    .line 139
    sput-boolean p0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->BATT_WARNING_ALLOWED:Z

    return-void
.end method
