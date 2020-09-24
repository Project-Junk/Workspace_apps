.class public Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settings/core/a;
.source "WifiMeteredPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/wifi/WifiDialog$a;


# static fields
.field private static final KEY_WIFI_METERED:Ljava/lang/String; = "metered"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const-string v0, "metered"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string p2, "wifi"

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 1

    .line 85
    invoke-virtual {p1}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getMeteredOverride()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 79
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 66
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string p2, "com.android.providers.settings"

    .line 70
    invoke-static {p2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 71
    check-cast p1, Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 1092
    iget-object v0, p1, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    if-eqz v0, :cond_1

    .line 2092
    iget-object p1, p1, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    .line 97
    invoke-virtual {p1}, Lcom/android/settings/wifi/c;->b()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eq v0, v1, :cond_1

    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 52
    check-cast p1, Landroidx/preference/DropDownPreference;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    return-void
.end method
