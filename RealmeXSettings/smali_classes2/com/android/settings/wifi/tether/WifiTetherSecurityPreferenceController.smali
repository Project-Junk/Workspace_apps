.class public Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSecurityPreferenceController.java"


# instance fields
.field a:I

.field b:Z

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V
    .locals 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.android.internal.R.bool.config_wifi_dual_sap_mode_enabled"

    .line 31
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->j:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.android.internal.R.bool.config_wifi_wap3_sap_mode_enabled"

    .line 33
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->b:Z

    .line 36
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "8"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f121a29

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "4"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f121a3f

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "9"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f121a25

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "0"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f121a24

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->h:[Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->i:[Ljava/lang/String;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->h:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    goto :goto_0

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->j:Z

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 70
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 72
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 74
    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 78
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->h:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->i:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 80
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether_security"

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 86
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    .line 87
    iget p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->f:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;->onTetherConfigUpdated()V

    const/4 p1, 0x1

    return p1
.end method
