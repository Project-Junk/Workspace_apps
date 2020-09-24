.class public Lcom/coloros/commons/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final CMCC_FEARURE:Ljava/lang/String; = "oppo.cmcc.test"

.field private static final MTK_FEATURE_GEMINI:Ljava/lang/String; = "mtk.gemini.support"

.field private static final QCOM_FEATURE:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field private static final QCOM_FEATURE_GEMINI:Ljava/lang/String; = "oppo.qualcomm.gemini.support"

.field private static final SUPPORT_OTG:Ljava/lang/String; = "android.hardware.usb.host"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p1}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBasedOnQcom(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oppo.hw.manufacturer.qualcomm"

    .line 22
    invoke-static {p0, v0}, Lcom/coloros/commons/utils/DeviceUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCmccVersion(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oppo.cmcc.test"

    .line 43
    invoke-static {p0, v0}, Lcom/coloros/commons/utils/DeviceUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGeminiSupport(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "mtk.gemini.support"

    .line 26
    invoke-static {p0, v0}, Lcom/coloros/commons/utils/DeviceUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oppo.qualcomm.gemini.support"

    invoke-static {p0, v0}, Lcom/coloros/commons/utils/DeviceUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOtgConnected(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.hardware.usb.host"

    .line 35
    invoke-static {p0, v0}, Lcom/coloros/commons/utils/DeviceUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->getOtgPath(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isOtgSupportted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.usb.host"

    .line 31
    invoke-static {p0, v0}, Lcom/coloros/commons/utils/DeviceUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOverseaVersion()Z
    .locals 2

    const-string v0, "CN"

    const-string v1, "persist.sys.oppo.region"

    .line 47
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
