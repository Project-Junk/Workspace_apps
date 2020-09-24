.class public final Lcom/android/settings/wifi/h;
.super Lcom/android/settings/widget/e;
.source "WifiSummaryUpdater.java"


# static fields
.field private static final f:Landroid/content/IntentFilter;


# instance fields
.field public b:Z

.field private final c:Lcom/android/settingslib/wifi/d;

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private g:Landroid/net/wifi/WifiManager;

.field private h:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    sput-object v0, Lcom/android/settings/wifi/h;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/android/settings/wifi/h;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/android/settings/wifi/h;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/settings/wifi/h;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_TO_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/h;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;B)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/e;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;)V

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/wifi/h;->e:Z

    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lcom/android/settings/wifi/h;->b:Z

    .line 72
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/h;->g:Landroid/net/wifi/WifiManager;

    .line 73
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/wifi/h;->h:Landroid/net/ConnectivityManager;

    .line 74
    new-instance p2, Lcom/android/settingslib/wifi/d;

    iget-object v2, p0, Lcom/android/settings/wifi/h;->g:Landroid/net/wifi/WifiManager;

    const-class p3, Landroid/net/NetworkScoreManager;

    .line 76
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/net/NetworkScoreManager;

    iget-object v4, p0, Lcom/android/settings/wifi/h;->h:Landroid/net/ConnectivityManager;

    new-instance v5, Lcom/android/settings/wifi/-$$Lambda$v2NULdzcnOUFC3TArnHVaiLk_zM;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/-$$Lambda$v2NULdzcnOUFC3TArnHVaiLk_zM;-><init>(Lcom/android/settings/wifi/h;)V

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/d;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    .line 79
    new-instance p1, Lcom/android/settings/wifi/h$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/h$1;-><init>(Lcom/android/settings/wifi/h;)V

    iput-object p1, p0, Lcom/android/settings/wifi/h;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/h;)Lcom/android/settingslib/wifi/d;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/h;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/wifi/h;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/h;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/wifi/h;->b()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/h;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    const v1, 0x7f12163c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/d;->k:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/h;->e:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    iget-object v0, v0, Lcom/android/settingslib/wifi/d;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/h;->h:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/h;->g:Landroid/net/wifi/WifiManager;

    .line 126
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v2, 0x11

    .line 128
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    const v1, 0x7f121a65

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v2, 0x18

    .line 130
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    const v1, 0x7f1219da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v2, 0x10

    .line 132
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    const v1, 0x7f121a64

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    iget-object v1, v1, Lcom/android/settingslib/wifi/d;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/wifi/h;->b:Z

    if-nez v1, :cond_5

    goto :goto_0

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121071

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    iget-object v4, v4, Lcom/android/settingslib/wifi/d;->o:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_0
    return-object v0

    .line 120
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    const v1, 0x7f1207fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/wifi/h;->b()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/h;->d:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/h;->f:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/h;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/h;->c:Lcom/android/settingslib/wifi/d;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1100
    iget-object p1, v0, Lcom/android/settingslib/wifi/d;->b:Landroid/net/NetworkScoreManager;

    iget-object v2, v0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v1, v2, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 1102
    iget-object p1, v0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, v0, Lcom/android/settingslib/wifi/d;->e:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 1103
    iget-object p1, v0, Lcom/android/settingslib/wifi/d;->c:Landroid/net/ConnectivityManager;

    iget-object v1, v0, Lcom/android/settingslib/wifi/d;->f:Landroid/net/NetworkRequest;

    iget-object v2, v0, Lcom/android/settingslib/wifi/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v0, v0, Lcom/android/settingslib/wifi/d;->d:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void

    .line 1106
    :cond_1
    iget-object p1, v0, Lcom/android/settingslib/wifi/d;->b:Landroid/net/NetworkScoreManager;

    iget-object v2, v0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v1, v2}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 1108
    iget-object p1, v0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkScoreCache;->unregisterListener()V

    .line 1109
    iget-object p1, v0, Lcom/android/settingslib/wifi/d;->c:Landroid/net/ConnectivityManager;

    iget-object v0, v0, Lcom/android/settingslib/wifi/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
