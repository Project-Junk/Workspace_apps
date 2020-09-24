.class public Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherApBandPreferenceController.java"


# instance fields
.field a:I

.field b:Z

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    .line 47
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDualModeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->k:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.bool.config_wifi_dual_sap_mode_enabled"

    .line 51
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->b:Z

    .line 52
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDualModeSupported()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, p1, :cond_0

    return v2

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->e()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz v0, :cond_2

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 91
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12192b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->i:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private d()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->k:Z

    if-eqz v1, :cond_0

    const v1, 0x7f030101

    const v2, 0x7f030102

    goto :goto_0

    .line 156
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->j:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const v1, 0x7f030104

    const v2, 0x7f030105

    goto :goto_0

    :cond_1
    const v1, 0x7f030100

    const v2, 0x7f030103

    .line 161
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->h:[Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->i:[Ljava/lang/String;

    return-void
.end method

.method private e()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 58
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    const-string v2, "WifiTetherApBandPref"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 60
    iput v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    const-string v4, "Updating band index to 0 because no config"

    .line 61
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1112
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1113
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 1114
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1115
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Dual band not supported for OWE security, updating band index to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_1
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a(I)I

    move-result v4

    .line 63
    iput v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating band index to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_2
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 67
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 68
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "5Ghz not supported, updating band index to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/ListPreference;

    .line 73
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->i:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->h:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 76
    iget v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->h:[Ljava/lang/String;

    array-length v6, v5

    if-lt v4, v6, :cond_4

    .line 77
    array-length v4, v5

    if-ge v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    .line 80
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->e()Z

    move-result v1

    if-nez v1, :cond_5

    .line 81
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    const v0, 0x7f121927

    .line 82
    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 84
    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 85
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->j:I

    const-string p1, "WifiTetherApBandPref"

    const-string v0, "updating band preferences."

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->d()V

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->h:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 186
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether_network_ap_band"

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 104
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Band preference changed, updating band index to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiTetherApBandPref"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->f:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;->onTetherConfigUpdated()V

    const/4 p1, 0x1

    return p1
.end method
