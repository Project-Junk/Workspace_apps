.class public Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiWakeupPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field a:Landroidx/preference/TwoStatePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/location/LocationManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Landroidx/fragment/app/Fragment;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->d:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->e:Landroid/content/IntentFilter;

    .line 74
    iput-object p2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->c:Landroidx/fragment/app/Fragment;

    const-string p2, "location"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->b:Landroid/location/LocationManager;

    .line 76
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wifi_wakeup_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private c()Z
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->b:Landroid/location/LocationManager;

    .line 182
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(Z)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_wakeup_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method final a()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "enable_wifi_wakeup"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    .line 83
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_wifi_wakeup"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable_wifi_wakeup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    instance-of p1, p1, Landroidx/preference/TwoStatePreference;

    if-nez p1, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a(Z)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->b:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    const/16 v1, 0x258

    if-nez p1, :cond_3

    .line 108
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1166
    invoke-static {}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->a()Lcom/android/settings/wifi/WifiScanningRequiredFragment;

    move-result-object p1

    .line 1167
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2, v1}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1168
    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "WifiWakeupPrefController"

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a(Z)V

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->e:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 129
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2144
    new-instance v0, Lcom/android/settings/utils/a$a;

    const/4 v1, 0x0

    const-string v2, "link"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 2145
    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121a7e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    .line 2146
    new-array v2, v2, [Lcom/android/settings/utils/a$a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/utils/a;->a(Ljava/lang/CharSequence;[Lcom/android/settings/utils/a$a;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const v0, 0x7f121a7d

    .line 138
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
