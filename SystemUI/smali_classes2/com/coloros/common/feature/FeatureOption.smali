.class public Lcom/coloros/common/feature/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field private static CA_SUPPORT:Ljava/lang/Boolean; = null

.field private static CHILDREN_MODE_SUPPORT:Z = false

.field private static DISABLE_APP_SUPPORT:Z = false

.field private static EAR_SCREEN:Z = false

.field private static EDGE_PANEL_SUPPORT:Z = false

.field private static final GESTURE_UP_RANGE_PINNING_SUPPORT:Ljava/lang/String; = "coloros.gesture.range.pinning.support"

.field private static HAS_MORE_GESTURE_UP:Z = false

.field private static final HETEROMORPHISM_SCREEN_STRING:Ljava/lang/String; = "com.oppo.feature.screen.heteromorphism"

.field private static IS_ATO_VERSION:Z = false

.field private static final IS_CA_SUPPORT_STRING:Ljava/lang/String; = "gsm.lte.ca.support"

.field private static final IS_CHILDRENMODE_SUPPORT_STRING:Ljava/lang/String; = "oppo.childspace.support"

.field private static IS_CTA_SUPPORT:Z = false

.field private static final IS_CTA_SUPPORT_STRING:Ljava/lang/String; = "oppo.cta.support"

.field private static IS_CTS_SUPPORT:Z = false

.field private static final IS_CTS_SUPPORT_STRING:Ljava/lang/String; = "persist.oppo.ctsversion"

.field private static final IS_DISABLE_APP_SUPPORT_STRING:Ljava/lang/String; = "oppo.appdisable.support"

.field private static final IS_EDGE_PANEL_DISABLE_STRING:Ljava/lang/String; = "oppo.systemui.disable.edgepanel"

.field private static final IS_LIGHT_OS_STRING:Ljava/lang/String; = "oppo.sys.light.func"

.field private static final IS_LINEAR_MOTOR_SUPPORT_STRING:Ljava/lang/String; = "oppo.hardware.linermotor.support"

.field private static final IS_LINEAR_VIBRATOR_SUPPORT_STRING:Ljava/lang/String; = "oppo.feature.vibrator.waveform.support"

.field private static final IS_MULTIAPP_SUPPORT_STRING:Ljava/lang/String; = "oppo.multiapp.support"

.field private static final IS_OPPO_ATO_STRING:Ljava/lang/String; = "ro.oppo.factory_mode"

.field private static IS_OPPO_BUSINESS_CUSTOM_SUPPORT:Z = false

.field private static final IS_OPPO_BUSINESS_CUSTOM_SUPPORT_STRING:Ljava/lang/String; = "oppo.business.custom"

.field private static final IS_OPPO_DEVICE_STRING:Ljava/lang/String; = "oppo.sw.solution.device"

.field private static final IS_PANIC_VERSION_STRING:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final IS_RELEASE_VERSION_STRING:Ljava/lang/String; = "ro.build.release_type"

.field private static IS_SUPPORT_GESTURE_UP_RANGE_PINNING:Z = false

.field private static IS_VERSION_SELL_MODE:Z = false

.field private static final IS_VERSION_SELL_MODE_STRING:Ljava/lang/String; = "oppo.specialversion.exp.sellmode"

.field private static KEEP_MORE_GESTURE_UP:Z = false

.field private static LIGHT_OS:Z = false

.field private static LINEAR_MOTOR_SUPPORT:Z = false

.field private static LINEAR_VIBRATOR_SUPPORT:Z = false

.field private static LOWRAM_SUPPORT:Z = false

.field private static final LOWRAM_SUPPORT_STRING:Ljava/lang/String; = "oppo.rom.lowram.support"

.field private static MULTIAPP_SUPPORT:Z = false

.field private static OPPO_DEVICE:Z = true

.field private static final OPPO_MORE_GESTURE_UP_STRING:Ljava/lang/String; = "coloros.public.systemui.support_moregestureup"

.field private static final OPPO_REGION_MARK:Ljava/lang/String; = "ro.oppo.regionmark"

.field private static OPPO_VERSION_EXP:Z = false

.field private static final OPPO_VERSION_EXP_STRING:Ljava/lang/String; = "oppo.version.exp"

.field private static PANIC_VERSION:Z = false

.field private static PLATFORM_MTK:Z = false

.field private static final PLATFORM_MTK_STRING:Ljava/lang/String; = "oppo.hw.manufacturer.mtk"

.field private static PLATFORM_QCOM:Z = false

.field private static final PLATFORM_QCOM_STRING:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field private static final REALME_MORE_GESTURE_UP_STRING:Ljava/lang/String; = "realme.moregestureup.support"

.field private static REGION_AUSTRALIA:Z = false

.field private static REGION_JAPAN:Z = false

.field private static REGION_TUNISIA:Z = false

.field private static REGION_WESTERN_EUROPE:Z = false

.field private static RELEASE_VERSION:Z = true

.field private static final TAG:Ljava/lang/String; = "FeatureOption"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p0, "Current FeatureOption state:"

    .line 169
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->getPrintableFeatureString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static getPrintableFeatureString()Ljava/lang/String;
    .locals 3

    const-string v0, " line.separator"

    const-string v1, "\n"

    .line 174
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  PLATFORM_QCOM: "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->PLATFORM_QCOM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  PLATFORM_MTK: "

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->PLATFORM_MTK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  OPPO_DEVICE: "

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->OPPO_DEVICE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_CTS_SUPPORT: "

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->IS_CTS_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_CTA_SUPPORT: "

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->IS_CTA_SUPPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  RELEASE_VERSION: "

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->RELEASE_VERSION:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  PANIC_VERSION: "

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/feature/FeatureOption;->PANIC_VERSION:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  CA_SUPPORT: "

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/common/feature/FeatureOption;->CA_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  TRACE: "

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/util/LogUtil;->TRACE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  INTERNAL_DEBUG: "

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  NORMAL_DEBUG: "

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegionMark()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.oppo.regionmark"

    const-string v1, ""

    .line 321
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAtoVersion()Z
    .locals 1

    .line 303
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_ATO_VERSION:Z

    return v0
.end method

.method public static isCaSupport()Z
    .locals 2

    .line 199
    sget-object v0, Lcom/coloros/common/feature/FeatureOption;->CA_SUPPORT:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const-string v0, "-1"

    const-string v1, "gsm.lte.ca.support"

    .line 200
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/common/feature/FeatureOption;->CA_SUPPORT:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_2
    :goto_1
    sget-object v0, Lcom/coloros/common/feature/FeatureOption;->CA_SUPPORT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isChildrenModeSupport()Z
    .locals 1

    .line 239
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->CHILDREN_MODE_SUPPORT:Z

    return v0
.end method

.method public static isCtaSupport()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_CTA_SUPPORT:Z

    return v0
.end method

.method public static isCtsSupport()Z
    .locals 1

    .line 215
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_CTS_SUPPORT:Z

    return v0
.end method

.method public static isDisableAppSupport()Z
    .locals 1

    .line 267
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->DISABLE_APP_SUPPORT:Z

    return v0
.end method

.method public static isEarScreen()Z
    .locals 1

    .line 251
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->EAR_SCREEN:Z

    return v0
.end method

.method public static isEdgePanelSupport()Z
    .locals 1

    .line 291
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->EDGE_PANEL_SUPPORT:Z

    return v0
.end method

.method public static isGestureUpFollowScreenRotation()Z
    .locals 1

    .line 333
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_SUPPORT_GESTURE_UP_RANGE_PINNING:Z

    return v0
.end method

.method public static isGestureUpMore()Z
    .locals 1

    .line 325
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->HAS_MORE_GESTURE_UP:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->KEEP_MORE_GESTURE_UP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLightOs()Z
    .locals 1

    .line 263
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->LIGHT_OS:Z

    return v0
.end method

.method public static isLinearMotorSupport()Z
    .locals 1

    .line 255
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->LINEAR_MOTOR_SUPPORT:Z

    return v0
.end method

.method public static isLinearVibratorSupport()Z
    .locals 1

    .line 259
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->LINEAR_VIBRATOR_SUPPORT:Z

    return v0
.end method

.method public static isLowramSupport()Z
    .locals 1

    .line 243
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->LOWRAM_SUPPORT:Z

    return v0
.end method

.method public static isMultiappSupport()Z
    .locals 1

    .line 271
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->MULTIAPP_SUPPORT:Z

    return v0
.end method

.method public static isOppoBusinessCustomSupport()Z
    .locals 1

    .line 299
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_OPPO_BUSINESS_CUSTOM_SUPPORT:Z

    return v0
.end method

.method public static isOppoDevice()Z
    .locals 1

    .line 227
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->OPPO_DEVICE:Z

    return v0
.end method

.method public static isOppoVersionExp()Z
    .locals 1

    .line 247
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->OPPO_VERSION_EXP:Z

    return v0
.end method

.method public static isPanicVersion()Z
    .locals 1

    .line 235
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->PANIC_VERSION:Z

    return v0
.end method

.method public static isPlatformMtk()Z
    .locals 1

    .line 223
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->PLATFORM_MTK:Z

    return v0
.end method

.method public static isPlatformQcom()Z
    .locals 1

    .line 219
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->PLATFORM_QCOM:Z

    return v0
.end method

.method public static isRegionAustralia()Z
    .locals 1

    .line 279
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->REGION_AUSTRALIA:Z

    return v0
.end method

.method public static isRegionJapan()Z
    .locals 1

    .line 283
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->REGION_JAPAN:Z

    return v0
.end method

.method public static isRegionTunisia()Z
    .locals 1

    .line 287
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->REGION_TUNISIA:Z

    return v0
.end method

.method public static isRegionWesternEurope()Z
    .locals 1

    .line 275
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->REGION_WESTERN_EUROPE:Z

    return v0
.end method

.method public static isReleaseVersion()Z
    .locals 1

    .line 231
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->RELEASE_VERSION:Z

    return v0
.end method

.method public static isVersionSellMode()Z
    .locals 1

    .line 295
    sget-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_VERSION_SELL_MODE:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 5

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.version.exp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->OPPO_VERSION_EXP:Z

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.hw.manufacturer.qualcomm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->PLATFORM_QCOM:Z

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->PLATFORM_MTK:Z

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.sw.solution.device"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->OPPO_DEVICE:Z

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.cta.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_CTA_SUPPORT:Z

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "persist.oppo.ctsversion"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_CTS_SUPPORT:Z

    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->RELEASE_VERSION:Z

    const/4 v0, 0x1

    const-string v1, "persist.sys.assert.panic"

    .line 145
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->PANIC_VERSION:Z

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.childspace.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->CHILDREN_MODE_SUPPORT:Z

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.rom.lowram.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->LOWRAM_SUPPORT:Z

    .line 148
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isCaSupport()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/coloros/common/feature/FeatureOption;->CA_SUPPORT:Ljava/lang/Boolean;

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->EAR_SCREEN:Z

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.hardware.linermotor.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->LINEAR_MOTOR_SUPPORT:Z

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->LINEAR_VIBRATOR_SUPPORT:Z

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.sys.light.func"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->LIGHT_OS:Z

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.appdisable.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->DISABLE_APP_SUPPORT:Z

    const-string v1, ""

    const-string v2, "ro.oppo.regionmark"

    .line 154
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EUEX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/common/feature/FeatureOption;->REGION_WESTERN_EUROPE:Z

    .line 155
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/coloros/common/feature/FeatureOption;->REGION_AUSTRALIA:Z

    .line 156
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->REGION_JAPAN:Z

    .line 157
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getCurRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->REGION_TUNISIA:Z

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.multiapp.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/common/feature/FeatureOption;->MULTIAPP_SUPPORT:Z

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.systemui.disable.edgepanel"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->EDGE_PANEL_SUPPORT:Z

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.specialversion.exp.sellmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_VERSION_SELL_MODE:Z

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.business.custom"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_OPPO_BUSINESS_CUSTOM_SUPPORT:Z

    const-string v0, "ro.oppo.factory_mode"

    const-string v1, "-1"

    .line 162
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->IS_ATO_VERSION:Z

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "realme.moregestureup.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->HAS_MORE_GESTURE_UP:Z

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "coloros.public.systemui.support_moregestureup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->KEEP_MORE_GESTURE_UP:Z

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "coloros.gesture.range.pinning.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/common/feature/FeatureOption;->IS_SUPPORT_GESTURE_UP_RANGE_PINNING:Z

    return-void
.end method

.method public static updateIsTunisia()V
    .locals 2

    .line 312
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getCurRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->REGION_TUNISIA:Z

    return-void
.end method

.method public static updateisPanicVersion()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x1

    .line 317
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/FeatureOption;->PANIC_VERSION:Z

    return-void
.end method
