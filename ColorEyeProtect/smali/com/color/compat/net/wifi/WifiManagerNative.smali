.class public Lcom/color/compat/net/wifi/WifiManagerNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;
    }
.end annotation


# static fields
.field public static EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final TAG:Ljava/lang/String; = "WifiManagerNative"

.field public static WIFI_AP_STATE_ENABLED:I = 0xd

.field public static WIFI_AP_STATE_FAILED:I = 0xe


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

.method public static blockClient(Landroid/net/wifi/WifiManager;Loppo/net/wifi/HotspotClient;)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->blockClient(Landroid/net/wifi/WifiManager;Loppo/net/wifi/HotspotClient;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static connect(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$2;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$2;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->connect(Landroid/net/wifi/WifiManager;ILcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$1;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$1;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static forget(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$3;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$3;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->forget(Landroid/net/wifi/WifiManager;ILcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static getAllSlaAcceleratedApps(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getAllSlaAcceleratedApps(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllSlaAppsAndStates(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getAllSlaAppsAndStates(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBlockedHotspotClients(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Loppo/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getBlockedHotspotClients(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHotspotClients(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Loppo/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getHotspotClients(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiApState(Landroid/net/wifi/WifiManager;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getWifiApState(Landroid/net/wifi/WifiManager;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getWifiSharingConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getWifiSharingConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDualBandSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->isDualBandSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSlaSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->isSlaSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setWifiApConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->setWifiApConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setWifiSharingConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->setWifiSharingConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static unblockClient(Landroid/net/wifi/WifiManager;Loppo/net/wifi/HotspotClient;)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->unblockClient(Landroid/net/wifi/WifiManager;Loppo/net/wifi/HotspotClient;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WifiManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
