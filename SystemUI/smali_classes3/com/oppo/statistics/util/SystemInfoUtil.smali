.class public Lcom/oppo/statistics/util/SystemInfoUtil;
.super Ljava/lang/Object;
.source "SystemInfoUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final MTK_PATTERN:Ljava/util/regex/Pattern;

.field private static STATISTICS_PLATFORM_MTK:I = 0x0

.field private static STATISTICS_PLATFORM_QUALCOMM:I = 0x0

.field public static final SYSTEM_NAME:Ljava/lang/String; = "Android"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[MT]{2}[a-zA-Z0-9]{0,10}$"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oppo/statistics/util/SystemInfoUtil;->MTK_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 34
    sput v0, Lcom/oppo/statistics/util/SystemInfoUtil;->STATISTICS_PLATFORM_MTK:I

    const/4 v0, 0x2

    .line 35
    sput v0, Lcom/oppo/statistics/util/SystemInfoUtil;->STATISTICS_PLATFORM_QUALCOMM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/statistics/util/SystemInfoUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "NearMeStatistics"

    const-string v1, "No HARDWARE INFO."

    .line 78
    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    return-object v0
.end method

.method public static getLocalPhoneNO(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    :try_start_0
    const-string v1, "phone"

    .line 140
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 141
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/statistics/util/SystemInfoUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "NearMeStatistics"

    .line 144
    invoke-static {v1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "NearMeStatistics"

    const-string v1, "0"

    :try_start_0
    const-string v2, "wifi"

    .line 196
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 197
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/statistics/util/SystemInfoUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "NO MAC ADDRESS."

    .line 202
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public static getMobile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 222
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getModel()Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/statistics/util/SystemInfoUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NearMeStatistics"

    const-string v1, "No MODEL."

    .line 48
    invoke-static {v0, v1}, Lcom/oppo/statistics/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 161
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NearMeStatistics"

    .line 163
    invoke-static {v0, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getOperatorId(Landroid/content/Context;)I
    .locals 1

    .line 170
    invoke-static {p0}, Lcom/oppo/statistics/util/SystemInfoUtil;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "china mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "chinamobile"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "china unicom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "chinaunicom"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "china net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "chinanet"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x63

    goto :goto_3

    :cond_3
    :goto_0
    const/4 p0, 0x2

    goto :goto_3

    :cond_4
    :goto_1
    const/4 p0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static getPlatForm()I
    .locals 2

    .line 60
    invoke-static {}, Lcom/oppo/statistics/util/SystemInfoUtil;->getHardware()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget v0, Lcom/oppo/statistics/util/SystemInfoUtil;->STATISTICS_PLATFORM_QUALCOMM:I

    return v0

    .line 62
    :cond_0
    sget-object v0, Lcom/oppo/statistics/util/SystemInfoUtil;->MTK_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/oppo/statistics/util/SystemInfoUtil;->getHardware()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget v0, Lcom/oppo/statistics/util/SystemInfoUtil;->STATISTICS_PLATFORM_MTK:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/color/os/ColorBuild;->getColorOSVERSION()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1

    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

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
