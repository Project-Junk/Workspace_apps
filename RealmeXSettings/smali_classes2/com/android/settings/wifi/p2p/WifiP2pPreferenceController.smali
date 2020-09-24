.class public Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiP2pPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field final a:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Landroid/net/wifi/WifiManager;

.field private final c:Landroid/content/IntentFilter;

.field private final d:Landroid/location/LocationManager;

.field private final e:Landroid/content/BroadcastReceiver;

.field private final f:Landroid/content/IntentFilter;

.field private g:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->a:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->c:Landroid/content/IntentFilter;

    .line 55
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->e:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->f:Landroid/content/IntentFilter;

    .line 71
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->b:Landroid/net/wifi/WifiManager;

    .line 72
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string p2, "location"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->d:Landroid/location/LocationManager;

    return-void
.end method

.method private a()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->g:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->b:Landroid/net/wifi/WifiManager;

    .line 114
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->d:Landroid/location/LocationManager;

    .line 115
    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 113
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->a()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->g:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_direct"

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->g:Landroidx/preference/Preference;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->a()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_direct"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->a:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->e:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->d:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
