.class public final Lcom/android/settingslib/wifi/d;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# instance fields
.field public final a:Landroid/net/wifi/WifiNetworkScoreCache;

.field public final b:Landroid/net/NetworkScoreManager;

.field public final c:Landroid/net/ConnectivityManager;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field public final f:Landroid/net/NetworkRequest;

.field public final g:Landroid/net/ConnectivityManager$NetworkCallback;

.field final h:Ljava/lang/Runnable;

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Z

.field public r:Z

.field private final s:Landroid/content/Context;

.field private final t:Landroid/net/wifi/WifiManager;

.field private u:Landroid/net/wifi/WifiInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->d:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/android/settingslib/wifi/d$1;

    iget-object v1, p0, Lcom/android/settingslib/wifi/d;->d:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/wifi/d$1;-><init>(Lcom/android/settingslib/wifi/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->e:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 60
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->f:Landroid/net/NetworkRequest;

    .line 64
    new-instance v0, Lcom/android/settingslib/wifi/d$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/d$2;-><init>(Lcom/android/settingslib/wifi/d;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 90
    iput-object p1, p0, Lcom/android/settingslib/wifi/d;->s:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/settingslib/wifi/d;->t:Landroid/net/wifi/WifiManager;

    .line 92
    new-instance p2, Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-direct {p2, p1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 93
    iput-object p3, p0, Lcom/android/settingslib/wifi/d;->b:Landroid/net/NetworkScoreManager;

    .line 94
    iput-object p4, p0, Lcom/android/settingslib/wifi/d;->c:Landroid/net/ConnectivityManager;

    .line 95
    iput-object p5, p0, Lcom/android/settingslib/wifi/d;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 5

    .line 251
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "<unknown ssid>"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->t:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 260
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 211
    iput p1, p0, Lcom/android/settingslib/wifi/d;->m:I

    .line 212
    iget p1, p0, Lcom/android/settingslib/wifi/d;->m:I

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/d;->n:I

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/wifi/d;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/android/settingslib/wifi/d;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/wifi/d;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->t:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/d;->j:I

    .line 207
    iget v0, p0, Lcom/android/settingslib/wifi/d;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/d;->i:Z

    return-void
.end method

.method private c()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/settingslib/wifi/d;->b:Landroid/net/NetworkScoreManager;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/NetworkKey;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->c:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/d;->t:Landroid/net/wifi/WifiManager;

    .line 224
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x11

    .line 226
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->s:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/e$h;->wifi_status_sign_in_required:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->o:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v1, 0x18

    .line 229
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->s:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/e$h;->wifi_limited_connection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->o:Ljava/lang/String;

    return-void

    :cond_1
    const/16 v1, 0x10

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->s:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/e$h;->wifi_status_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->o:Ljava/lang/String;

    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->a:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    .line 239
    invoke-static {v1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/d;->s:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/wifi/d;->m:I

    .line 241
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/wifi/a;->a(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/d;->o:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/Intent;Z)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/wifi/d;->t:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/settingslib/wifi/d;->b()V

    return-void

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    invoke-direct {p0}, Lcom/android/settingslib/wifi/d;->b()V

    const-string v0, "networkInfo"

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/d;->k:Z

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    .line 174
    iput-object p1, p0, Lcom/android/settingslib/wifi/d;->l:Ljava/lang/String;

    .line 175
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/d;->k:Z

    if-eqz p1, :cond_5

    .line 176
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->t:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    .line 177
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/d;->a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/d;->l:Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/d;->l:Ljava/lang/String;

    .line 183
    :goto_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/d;->a(I)V

    .line 184
    invoke-direct {p0}, Lcom/android/settingslib/wifi/d;->c()V

    if-eqz p2, :cond_5

    .line 186
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiGeneration()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/d;->p:I

    .line 187
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isVhtMax8SpatialStreamsSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/d;->q:Z

    .line 188
    iget-object p1, p0, Lcom/android/settingslib/wifi/d;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isTwtSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/d;->r:Z

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/d;->a()V

    return-void

    :cond_6
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, -0xc8

    const-string v0, "newRssi"

    .line 195
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/d;->a(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/d;->a()V

    return-void

    :cond_7
    const-string p1, "android.net.wifi.WIFI_NETWORK_INVALID"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 200
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/d;->a()V

    :cond_8
    return-void
.end method
