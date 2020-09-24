.class public Lcom/coloros/common/feature/RealmeFeatureOption;
.super Ljava/lang/Object;
.source "RealmeFeatureOption.java"


# static fields
.field private static final BRAND_REALME:Ljava/lang/String; = "realme"

.field private static final DOUBLE_EAR_FEATURE:Ljava/lang/String; = "realme.multimedia.dualheadphone"

.field private static final PROP_DEVICE_BRAND:Ljava/lang/String; = "ro.product.brand.sub"

.field private static final SHOULD_SHOW_VOOC_LOGO:Ljava/lang/String; = "realme.support.show.vooc.logo"

.field private static final SUPPORT_DECIMAL_FEATURE:Ljava/lang/String; = "realme.support.display.charge.decimal"

.field private static sIsDeviceBrandRealme:Z = false

.field private static sIsDoubleEarFeature:Z = false

.field private static sIsShowVoocLogo:Z = false

.field private static sIsSupportDartDecimal:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDoubleEarFeature()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsDoubleEarFeature:Z

    return v0
.end method

.method public static isRealme()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsDeviceBrandRealme:Z

    return v0
.end method

.method public static isShowVoocLogo()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsShowVoocLogo:Z

    return v0
.end method

.method public static isSupportDartDecimal()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsSupportDartDecimal:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ro.product.brand.sub"

    const-string v1, ""

    .line 36
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "realme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsDeviceBrandRealme:Z

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "realme.multimedia.dualheadphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsDoubleEarFeature:Z

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "realme.support.display.charge.decimal"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsSupportDartDecimal:Z

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "realme.support.show.vooc.logo"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/common/feature/RealmeFeatureOption;->sIsShowVoocLogo:Z

    return-void
.end method
