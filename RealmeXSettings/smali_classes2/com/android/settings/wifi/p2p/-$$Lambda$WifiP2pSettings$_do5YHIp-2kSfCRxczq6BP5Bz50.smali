.class public final synthetic Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

.field private final synthetic f$1:Landroid/net/NetworkInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;->f$1:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;->f$1:Landroid/net/NetworkInfo;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->lambda$_do5YHIp-2kSfCRxczq6BP5Bz50(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method
