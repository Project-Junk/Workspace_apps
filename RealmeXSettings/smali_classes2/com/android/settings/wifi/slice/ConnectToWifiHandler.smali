.class public Lcom/android/settings/wifi/slice/ConnectToWifiHandler;
.super Landroid/content/BroadcastReceiver;
.source "ConnectToWifiHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.extra.NETWORK"

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    const-string v1, "access_point_state"

    .line 46
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->j()V

    .line 51
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    return-void

    :cond_1
    if-eqz p2, :cond_5

    .line 55
    new-instance v0, Lcom/android/settingslib/wifi/a;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1061
    invoke-static {}, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->g()V

    .line 1062
    invoke-static {v0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->a(Lcom/android/settingslib/wifi/a;)V

    .line 1064
    new-instance p2, Lcom/android/settings/wifi/e;

    invoke-direct {p2, p1}, Lcom/android/settings/wifi/e;-><init>(Landroid/content/Context;)V

    .line 1065
    invoke-static {v0}, Lcom/android/settings/wifi/i;->a(Lcom/android/settingslib/wifi/a;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    goto :goto_0

    .line 1067
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 1071
    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->q()V

    .line 1074
    :cond_4
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 1764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1075
    invoke-virtual {p1, v0, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_5
    :goto_0
    return-void
.end method
