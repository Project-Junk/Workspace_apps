.class public Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;
.super Ljava/lang/Object;
.source "AodFeatureOptions.java"


# static fields
.field private static final AOD_FEATURE:Ljava/lang/String; = "oppo.aod.support"

.field private static final AOD_PREVENT_SCREEN_BURN:Ljava/lang/String; = "oppo.aod.prevent.burn.support"

.field private static final AOD_RAMLESS_FEATURE:Ljava/lang/String; = "oppo.aod.ramless.support"

.field private static final AOD_TRANSPARENT:Ljava/lang/String; = "oppo.aod.transparent"

.field private static final IS_DEVICE_17107:Ljava/lang/String; = "oppo.feature.17107"

.field private static final IS_DEVICE_17108:Ljava/lang/String; = "oppo.feature.17108"

.field private static final IS_DEVICE_17109:Ljava/lang/String; = "oppo.feature.17109"

.field private static final IS_DEVICE_17127:Ljava/lang/String; = "oppo.feature.17127"

.field private static final IS_DEVICE_17128:Ljava/lang/String; = "oppo.feature.17128"

.field private static final IS_DEVICE_17129:Ljava/lang/String; = "oppo.feature.17129"

.field private static final PLATFORM_MTK_STRING:Ljava/lang/String; = "oppo.hw.manufacturer.mtk"

.field private static final SUPPORT_CURVED_DISPLAY_STRING:Ljava/lang/String; = "oppo.common.support.curved.display"

.field private static final SUPPORT_EXPORT:Ljava/lang/String; = "oppo.version.exp"

.field private static final SUPPORT_UNDER_SCREEN_PROXIMITY:Ljava/lang/String; = "oppo.proximity.under.lcd"

.field private static final TP_PROXIMITY_SENSOR_DEVICE:Ljava/lang/String; = "oppo.proximity.need.delay"

.field private static sIsAodTransparent:Z = false

.field private static sIsExpRegion:Z = false

.field private static sIsFindModel:Z = false

.field private static sIsMtkPlatform:Z = false

.field private static sIsPreventedScreenBurn:Z = false

.field private static sIsPreventedScreenBurnDevices:Z = false

.field private static sIsSupportAod:Z = false

.field private static sIsSupportCurvedDisplay:Z = false

.field private static sIsSupportRamlessAod:Z = false

.field private static sIsSupportUnderScreeNpSensor:Z = false

.field private static sIsTpProximitySensorDevice:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAodTransparent()Z
    .locals 1

    .line 90
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsAodTransparent:Z

    return v0
.end method

.method public static isExpRegion()Z
    .locals 1

    .line 118
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsExpRegion:Z

    return v0
.end method

.method public static isFindModel()Z
    .locals 1

    .line 130
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsFindModel:Z

    return v0
.end method

.method public static isIsPreventedScreenBurn()Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsPreventedScreenBurn:Z

    return v0
.end method

.method public static isMtkPlatform()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsMtkPlatform:Z

    return v0
.end method

.method public static isPreventedScreenBurnDevices()Z
    .locals 1

    .line 126
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsPreventedScreenBurnDevices:Z

    return v0
.end method

.method public static isSupportAod()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportAod:Z

    return v0
.end method

.method public static isSupportCurvedDisplay()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportCurvedDisplay:Z

    return v0
.end method

.method public static isSupportRamLessAod()Z
    .locals 1

    .line 114
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportRamlessAod:Z

    return v0
.end method

.method public static isSupportUnderScreeNpSensor()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportUnderScreeNpSensor:Z

    return v0
.end method

.method public static isTpProximitySensorDevice()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsTpProximitySensorDevice:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 4

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.aod.transparent"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsAodTransparent:Z

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.common.support.curved.display"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportCurvedDisplay:Z

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.proximity.need.delay"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsTpProximitySensorDevice:Z

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsMtkPlatform:Z

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.proximity.under.lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportUnderScreeNpSensor:Z

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.aod.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportAod:Z

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.aod.ramless.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsSupportRamlessAod:Z

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.version.exp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsExpRegion:Z

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.aod.prevent.burn.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsPreventedScreenBurn:Z

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.feature.17107"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "oppo.feature.17108"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "oppo.feature.17109"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "oppo.feature.17127"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "oppo.feature.17128"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.feature.17129"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    sput-boolean p0, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsFindModel:Z

    const-string p0, "ro.separate.soft"

    const-string v0, ""

    .line 84
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "19063"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "19065"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "19066"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "19067"

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "19361"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "19362"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->sIsPreventedScreenBurnDevices:Z

    return-void
.end method
