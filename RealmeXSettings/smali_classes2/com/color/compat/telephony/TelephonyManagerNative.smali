.class public Lcom/color/compat/telephony/TelephonyManagerNative;
.super Ljava/lang/Object;
.source "TelephonyManagerNative.java"


# static fields
.field public static NETWORK_CLASS_2_G:I = 0x1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static NETWORK_CLASS_3_G:I = 0x2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static NETWORK_CLASS_4_G:I = 0x3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static NETWORK_CLASS_UNKNOWN:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    sput v1, Lcom/color/compat/telephony/TelephonyManagerNative;->NETWORK_CLASS_UNKNOWN:I

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sput v1, Lcom/color/compat/telephony/TelephonyManagerNative;->NETWORK_CLASS_UNKNOWN:I

    return-void

    .line 52
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccAuthentication(Landroid/telephony/TelephonyManager;IIILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 105
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getIccAuthentication(Landroid/telephony/TelephonyManager;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getNetworkClass(Landroid/telephony/TelephonyManager;I)I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 64
    sget v0, Lcom/color/compat/telephony/TelephonyManagerNative;->NETWORK_CLASS_UNKNOWN:I

    .line 66
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p0, p1}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getNetworkClass(Landroid/telephony/TelephonyManager;I)I

    move-result v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static getPreferredNetworkType(Landroid/telephony/TelephonyManager;I)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 129
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getPreferredNetworkType(Landroid/telephony/TelephonyManager;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getTelephonyProperty(Landroid/telephony/TelephonyManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 83
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->getTelephonyProperty(Landroid/telephony/TelephonyManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isMultiSimEnabled(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->isMultiSimEnabled(Landroid/telephony/TelephonyManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TelephonyManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setRoamingOverride(Landroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

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

    .line 117
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/color/inner/telephony/TelephonyManagerWrapper;->setRoamingOverride(Landroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
