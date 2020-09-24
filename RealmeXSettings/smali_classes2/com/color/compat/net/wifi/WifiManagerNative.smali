.class public Lcom/color/compat/net/wifi/WifiManagerNative;
.super Ljava/lang/Object;
.source "WifiManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;
    }
.end annotation


# static fields
.field public static EXTRA_WIFI_AP_STATE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiManagerNative"

.field public static WIFI_AP_STATE_ENABLED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field

.field public static WIFI_AP_STATE_FAILED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xd

    const/16 v2, 0xe

    const-string v3, "wifi_state"

    if-eqz v0, :cond_0

    .line 50
    :try_start_1
    sput-object v3, Lcom/color/compat/net/wifi/WifiManagerNative;->EXTRA_WIFI_AP_STATE:Ljava/lang/String;

    .line 51
    sput v2, Lcom/color/compat/net/wifi/WifiManagerNative;->WIFI_AP_STATE_FAILED:I

    .line 52
    sput v1, Lcom/color/compat/net/wifi/WifiManagerNative;->WIFI_AP_STATE_ENABLED:I

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sput-object v3, Lcom/color/compat/net/wifi/WifiManagerNative;->EXTRA_WIFI_AP_STATE:Ljava/lang/String;

    .line 55
    sput v2, Lcom/color/compat/net/wifi/WifiManagerNative;->WIFI_AP_STATE_FAILED:I

    .line 56
    sput v1, Lcom/color/compat/net/wifi/WifiManagerNative;->WIFI_AP_STATE_ENABLED:I

    return-void

    .line 58
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 200
    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$2;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$2;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    .line 212
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->connect(Landroid/net/wifi/WifiManager;ILcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 166
    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$1;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$1;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    .line 178
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static forget(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 231
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p0, p1, p2}, Lcom/color/compat/net/wifi/WifiManagerNative;->forgetAfterQ(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    return-void

    .line 233
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-static {p0, p1, p2}, Lcom/color/compat/net/wifi/WifiManagerNative;->forgetBeforeQ(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    return-void

    .line 236
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static forgetAfterQ(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 246
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$3;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$3;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->forget(Landroid/net/wifi/WifiManager;ILcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;)V

    return-void
.end method

.method private static forgetBeforeQ(Landroid/net/wifi/WifiManager;ILcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/color/compat/net/wifi/WifiManagerNative$4;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/WifiManagerNative$4;-><init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V

    .line 277
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public static getAllSlaAcceleratedApps(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 388
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getAllSlaAcceleratedApps(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 390
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllSlaAppsAndStates(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 338
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getAllSlaAppsAndStates(Landroid/net/wifi/WifiManager;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 87
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiApState(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 71
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getWifiApState(Landroid/net/wifi/WifiManager;)I

    move-result p0

    return p0

    .line 73
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    return p0

    .line 76
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getWifiSharingConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 319
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->getWifiSharingConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDualBandSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 288
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->isDualBandSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0

    return p0

    .line 290
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result p0

    return p0

    .line 293
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSlaSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 309
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->isSlaSupported(Landroid/net/wifi/WifiManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setWifiApConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 109
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->setWifiApConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    .line 111
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    .line 114
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setWifiSharingConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 329
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/net/wifi/WifiManagerWrapper;->setWifiSharingConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
