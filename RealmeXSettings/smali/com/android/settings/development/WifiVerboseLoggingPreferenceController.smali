.class public Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "WifiVerboseLoggingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_verbose_logging"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 55
    iget-object p2, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
