.class final Lcom/android/settings/wifi/tether/WifiTetherSettings$a;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSettings.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updating display config due to receiving broadcast action "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTetherSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_0

    .line 297
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->b(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 298
    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->c(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->d(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    return-void

    :cond_0
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "wifi_state"

    .line 302
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 304
    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->c(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->d(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    :cond_1
    return-void
.end method
