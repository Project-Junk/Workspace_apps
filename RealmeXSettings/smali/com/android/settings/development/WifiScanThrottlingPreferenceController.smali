.class public Lcom/android/settings/development/WifiScanThrottlingPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "WifiScanThrottlingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_scan_throttling"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "wifi_scan_throttle_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 48
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 49
    iget-object p2, p0, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wifi_scan_throttle_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string/jumbo v1, "wifi_scan_throttle_enabled"

    .line 59
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 62
    iget-object v1, p0, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
