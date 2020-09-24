.class public Lcom/android/settings/wifi/slice/ContextualWifiSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ContextualWifiSlice.java"


# static fields
.field static a:J = -0x3e8L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static b:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/slices/j;->b()J

    move-result-wide v0

    .line 59
    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->a:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 60
    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->a:J

    .line 61
    sput-boolean v3, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->b:Z

    .line 63
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    const-string v4, "<unknown ssid>"

    if-eq v0, v2, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_0
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->e:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->d:Landroid/net/wifi/WifiManager;

    .line 1087
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 1086
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x11

    .line 1089
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x18

    .line 1090
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x10

    .line 1091
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    move v3, v1

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "ContextualWifiSlice"

    const-string v1, "Wifi is connected, no point showing any suggestion."

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    sput-boolean v1, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->b:Z

    .line 71
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->a()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/settings/slices/a;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    .line 96
    const-class v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;

    return-object v0
.end method
