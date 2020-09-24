.class public Lcom/platform/usercenter/app/UCRuntimeEnvironment;
.super Ljava/lang/Object;
.source "UCRuntimeEnvironment.java"


# static fields
.field public static isOrange:Z = false

.field public static isRed:Z = false

.field public static mRomVersionCode:I

.field public static sIsExp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXBusinessSystem()Ljava/lang/String;
    .locals 1

    .line 57
    sget-boolean v0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isOrange:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getBrandOrangeUppercase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    sget-boolean v0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isRed:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getBrandRed()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getBrandGreenUppercase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 35
    invoke-static {}, Lcom/platform/usercenter/app/UCOSVersionUtil;->getOSVersionCode()I

    move-result v0

    sput v0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->mRomVersionCode:I

    .line 36
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->isOrange()Z

    move-result v0

    sput-boolean v0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isOrange:Z

    .line 37
    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->isRed(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isRed:Z

    .line 38
    invoke-static {}, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isRedExpOS()Z

    move-result v0

    .line 40
    sget-boolean v1, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->isRed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 41
    sget v1, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->mRomVersionCode:I

    const/16 v4, 0x9

    if-le v1, v4, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->getExpSystemFeatureNameXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    move p0, v2

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->expPropertySystemNameXor8()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "US"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_1
    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 52
    :cond_4
    :goto_2
    sput-boolean v2, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->sIsExp:Z

    return-void
.end method

.method public static isRedExpOS()Z
    .locals 2

    const-string v0, "persist.sys.oem.region"

    const-string v1, ""

    .line 72
    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverSeas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
