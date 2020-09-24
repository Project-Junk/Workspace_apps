.class public Lcom/android/settings/development/WifiCoverageExtendPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "WifiCoverageExtendPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_coverage_extend"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiManager;Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->a:Landroid/net/wifi/WifiManager;

    invoke-static {p2, p1}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiManager;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 75
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->a:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiManager;)Z

    move-result p1

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateState: e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
