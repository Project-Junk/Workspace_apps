.class public Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SavedAccessPointsWifiSettings.java"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/android/settingslib/wifi/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "SavedAccessPoints"

    return-object v0
.end method

.method public final a(Lcom/android/settingslib/wifi/AccessPointPreference;)V
    .locals 2

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->removeDialog(I)V

    if-eqz p1, :cond_0

    .line 1141
    iget-object p1, p1, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a:Landroid/os/Bundle;

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    if-nez p1, :cond_1

    .line 102
    new-instance p1, Lcom/android/settingslib/wifi/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    .line 104
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 107
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    .line 108
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method final c()Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_mobile_network_v2"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6a

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150143

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    const-class p1, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->setHost(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;

    .line 74
    const-class p1, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->setHost(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "wifi_ap_state"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a:Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->b:Lcom/android/settingslib/wifi/a;

    iget-object v1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a:Landroid/os/Bundle;

    const-string v1, "wifi_ap_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
