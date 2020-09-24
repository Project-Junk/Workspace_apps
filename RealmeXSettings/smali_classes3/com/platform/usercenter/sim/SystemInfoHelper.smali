.class Lcom/platform/usercenter/sim/SystemInfoHelper;
.super Ljava/lang/Object;
.source "SystemInfoHelper.java"


# static fields
.field private static final MTK_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_NAME:Ljava/lang/String; = "Android"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[MT]{2}[a-zA-Z0-9]{0,10}$"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/sim/SystemInfoHelper;->MTK_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    .line 85
    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1}, Lcom/platform/usercenter/sim/SystemInfoHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    .line 67
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/platform/usercenter/sim/SystemInfoHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getPlatForm(Landroid/content/Context;)I
    .locals 2

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getMobileFlatForm(Landroid/content/Context;)I

    move-result v0

    .line 47
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getPlatForm1(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static getPlatForm1(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getHardware()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QCOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    invoke-static {p0, v1}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->setMobileFlatForm(Landroid/content/Context;I)V

    .line 31
    sget p0, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    return p0

    .line 32
    :cond_0
    sget-object v1, Lcom/platform/usercenter/sim/SystemInfoHelper;->MTK_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I

    invoke-static {p0, v1}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->setMobileFlatForm(Landroid/content/Context;I)V

    .line 34
    sget p0, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "null"

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
