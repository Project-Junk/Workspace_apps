.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

.field private b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ConfigureWifiSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 79
    new-instance v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    const-string v0, "wifi"

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v2, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v2, Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getInitialExpandedChildCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x152

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150142

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x258

    if-ne p1, v0, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_1

    .line 1153
    iget-object p1, v1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->b:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1154
    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a(Z)V

    .line 1156
    :cond_0
    iget-object p1, v1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x190

    if-ne p1, v0, :cond_4

    .line 100
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 1170
    iget-object p1, v1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a:Landroid/content/ContentResolver;

    iget-object p2, v1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b:Landroid/content/ComponentName;

    .line 1171
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "use_open_wifi_package"

    .line 1170
    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void

    .line 105
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
