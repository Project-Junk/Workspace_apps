.class final Lcom/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 854
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 855
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->c(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->a:Z

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v0, 0x4

    const-string v1, "wifi_state"

    .line 859
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 858
    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->a(Lcom/android/settingslib/wifi/WifiTracker;I)V

    return-void

    :cond_1
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 861
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->d(Lcom/android/settingslib/wifi/WifiTracker;)Z

    .line 863
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    const-string v0, "resultsUpdated"

    .line 864
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 863
    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->a(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    .line 866
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->e(Lcom/android/settingslib/wifi/WifiTracker;)V

    return-void

    :cond_2
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 867
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 868
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 870
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "networkInfo"

    .line 873
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 874
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->a(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 875
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->e(Lcom/android/settingslib/wifi/WifiTracker;)V

    return-void

    :cond_4
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 876
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 877
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    .line 878
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->f(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->c(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 879
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->a(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    :cond_5
    return-void

    .line 869
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->e(Lcom/android/settingslib/wifi/WifiTracker;)V

    return-void
.end method
