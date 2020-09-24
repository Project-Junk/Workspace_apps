.class public Lcom/android/settings/wifi/WifiInfoPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private final a:Landroid/content/IntentFilter;

.field private final b:Landroid/net/wifi/WifiManager;

.field private c:Landroidx/preference/Preference;

.field private d:Landroidx/preference/Preference;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance p1, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiInfoPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->e:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p3, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->b:Landroid/net/wifi/WifiManager;

    .line 61
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->a:Landroid/content/IntentFilter;

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->a:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->a:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->c:Landroidx/preference/Preference;

    const v1, 0x7f121555

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.bool.config_wifi_connected_mac_randomization_supported"

    .line 103
    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "02:00:00:00:00:00"

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->c:Landroidx/preference/Preference;

    const v2, 0x7f121a63

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 108
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->c:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->c:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 115
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->d:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->d:Landroidx/preference/Preference;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 119
    :cond_5
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_3
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "mac_address"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->c:Landroidx/preference/Preference;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->c:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    const-string v0, "current_ip_address"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->d:Landroidx/preference/Preference;

    .line 85
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->e:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;->a()V

    return-void
.end method
