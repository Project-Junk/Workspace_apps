.class final Lcom/android/settings/wifi/g$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/g;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/g;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/g$1;->a:Lcom/android/settings/wifi/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/settings/wifi/g$1;->a:Lcom/android/settings/wifi/g;

    .line 1045
    iget-object p2, p1, Lcom/android/settings/wifi/g;->a:Landroid/net/wifi/WifiManager;

    .line 64
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    .line 2045
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/g;->a(I)V

    return-void

    :cond_0
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/android/settings/wifi/g$1;->a:Lcom/android/settings/wifi/g;

    .line 3045
    iget-object p1, p1, Lcom/android/settings/wifi/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "newState"

    .line 68
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 67
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    return-void

    :cond_1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "networkInfo"

    .line 71
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 73
    iget-object p2, p0, Lcom/android/settings/wifi/g$1;->a:Lcom/android/settings/wifi/g;

    .line 4045
    iget-object p2, p2, Lcom/android/settings/wifi/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    :cond_2
    return-void
.end method