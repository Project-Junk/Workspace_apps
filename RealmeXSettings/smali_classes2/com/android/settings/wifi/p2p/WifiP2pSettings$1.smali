.class final Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v0, "wifi_p2p_state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_0

    move v1, v3

    :cond_0
    invoke-static {p1, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 117
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void

    :cond_1
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v0, "wifiP2pDeviceList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 121
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void

    :cond_2
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "WifiP2pSettings"

    if-eqz v0, :cond_6

    .line 123
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "networkInfo"

    .line 124
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const-string v0, "wifiP2pInfo"

    .line 126
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 128
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 129
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Connected"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result p1

    if-eq p1, v3, :cond_5

    .line 133
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->e(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 135
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-boolean p2, p2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 136
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->f(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    return-void

    :cond_6
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "This device changed. Requesting device info."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_7
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    return-void

    :cond_8
    const-string v0, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "discoveryState"

    .line 145
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 147
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Discovery state changed: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-ne p1, v2, :cond_a

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    return-void

    .line 151
    :cond_a
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    return-void

    :cond_b
    const-string p2, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 154
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 155
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    :cond_c
    return-void
.end method
