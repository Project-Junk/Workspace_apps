.class public final Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;
.super Ljava/lang/Object;
.source "WifiDualUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;",
        "",
        "()V",
        "DUAL_STA_SETTINGS_ENABLED",
        "",
        "DUAL_STA_STATE_ENABLED",
        "",
        "TAG",
        "sWifiManager",
        "Landroid/net/wifi/WifiManager;",
        "getOppoSta2ConnectionInfo",
        "Landroid/net/wifi/WifiInfo;",
        "context",
        "Landroid/content/Context;",
        "getWifiManagerInstance",
        "isDualStaEnabled",
        "",
        "isDualStaSupport",
        "isDualWifiConnected",
        "isWifiStateConnected",
        "tag",
        "info",
        "Landroid/net/NetworkInfo;",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final DUAL_STA_SETTINGS_ENABLED:Ljava/lang/String; = "dual_sta_switch_on"

.field private static final DUAL_STA_STATE_ENABLED:I = 0x1

.field public static final INSTANCE:Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;

.field private static final TAG:Ljava/lang/String; = "WifiDualUtils"

.field private static sWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getOppoSta2ConnectionInfo(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 7

    .line 117
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->getWifiManagerInstance(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "WifiDualUtils"

    const-string v1, "Statusbar"

    if-nez p0, :cond_0

    const-string p0, "getOppoSta2ConnectionInfo, wifimanager = null."

    .line 119
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 124
    :cond_0
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/WifiInfo;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOppoSta2ConnectionInfo"

    const/4 v5, 0x0

    .line 126
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 128
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.net.wifi.WifiInfo"

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "getOppoSta2ConnectionInfo, not found method"

    .line 130
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOppoSta2ConnectionInfo, info = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 137
    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "getOppoSta2ConnectionInfo. error = "

    invoke-static {v1, v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 135
    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "getOppoSta2ConnectionInfo, exception = "

    invoke-static {v1, v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method private final getWifiManagerInstance(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    .line 34
    sget-object p0, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    return-object p0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "wifi"

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroid/net/wifi/WifiManager;

    sput-object p0, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->sWifiManager:Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "Statusbar"

    const-string p1, "WifiDualUtils"

    const-string v0, "getWifiManagerInstance, application = null."

    .line 42
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    sget-object p0, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->sWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private final isDualStaEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dual_sta_switch_on"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_0

    move p0, v1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    .line 61
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Statusbar"

    const-string v1, "WifiDualUtils"

    const-string v2, "isDualStaEnabled, exception= "

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method

.method private final isDualStaSupport(Landroid/content/Context;)Z
    .locals 5

    .line 68
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->getWifiManagerInstance(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    const-string p1, "WifiDualUtils"

    const-string v0, "Statusbar"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isDualStaSupport, wifimanager = null."

    .line 70
    invoke-static {v0, p1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isDualStaSupported"

    .line 77
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 79
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "isDualStaSupport\uff0cnot found method"

    .line 81
    invoke-static {v0, p1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    .line 83
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualStaSupport, supported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 88
    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "isDualStaSupport, error= "

    invoke-static {v0, p1, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 86
    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "isDualStaSupport, exception= "

    invoke-static {v0, p1, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v1
.end method


# virtual methods
.method public final isDualWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "WifiDualUtils"

    const-string v1, "Statusbar"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->getWifiManagerInstance(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->isDualStaSupport(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->isDualStaEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 102
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->getOppoSta2ConnectionInfo(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    const-string p1, "<unknown ssid>"

    .line 104
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_1

    const-string p0, "isDualWifiConnected = true"

    .line 105
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 110
    check-cast p0, Ljava/lang/Throwable;

    const-string p1, "isDualWifiConnected, exception= "

    invoke-static {v1, v0, p1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v2
.end method

.method public final isWifiStateConnected(Ljava/lang/String;Landroid/net/NetworkInfo;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiStateConnected, info= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method
