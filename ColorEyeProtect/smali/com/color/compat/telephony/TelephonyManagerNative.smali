.class public Lcom/color/compat/telephony/TelephonyManagerNative;
.super Ljava/lang/Object;


# static fields
.field public static NETWORK_CLASS_2_G:I = 0x1

.field public static NETWORK_CLASS_3_G:I = 0x2

.field public static NETWORK_CLASS_4_G:I = 0x3

.field public static NETWORK_CLASS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccAuthentication(Landroid/telephony/TelephonyManager;IIILjava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getIccAuthentication(Landroid/telephony/TelephonyManager;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getNetworkClass(Landroid/telephony/TelephonyManager;I)I
    .locals 1

    sget v0, Lcom/color/compat/telephony/TelephonyManagerNative;->NETWORK_CLASS_UNKNOWN:I

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getNetworkClass(Landroid/telephony/TelephonyManager;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    return p0
.end method

.method public static getPreferredNetworkType(Landroid/telephony/TelephonyManager;I)I
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getPreferredNetworkType(Landroid/telephony/TelephonyManager;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getSimCountryIso(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getSimCountryIso(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getTelephonyProperty(Landroid/telephony/TelephonyManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getTelephonyProperty(Landroid/telephony/TelephonyManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isMultiSimEnabled(Landroid/telephony/TelephonyManager;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->isMultiSimEnabled(Landroid/telephony/TelephonyManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setRoamingOverride(Landroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->setRoamingOverride(Landroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TelephonyManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
