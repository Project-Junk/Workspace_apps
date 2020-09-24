.class public Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "ColorWifiEntryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_WIFI_SETTINGS:Ljava/lang/String; = "wifi_settings"


# instance fields
.field private mWifiSettingsPref:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi_settings"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;->mWifiSettingsPref:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;->mWifiSettingsPref:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    .line 3068
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->i:Landroid/content/BroadcastReceiver;

    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b:Landroid/content/IntentFilter;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HM_APP_GAP"

    const-string v1, "settings.wlan begin"

    .line 4025
    :try_start_0
    const-class v2, Landroid/util/Log;

    const-string v3, "p"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    .line 4026
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4028
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logP: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoHMDcsUtils"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;->mWifiSettingsPref:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    .line 2072
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiEntryPreferenceController;->mWifiSettingsPref:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    .line 1076
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f1219f3

    .line 1077
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->setSummary(I)V

    :cond_0
    return-void
.end method
