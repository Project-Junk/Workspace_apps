.class public Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSSIDPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$b;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/android/settings/wifi/tether/b;

.field private final h:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    .line 54
    new-instance p2, Lcom/android/settings/wifi/tether/b;

    invoke-direct {p2}, Lcom/android/settings/wifi/tether/b;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->b:Lcom/android/settings/wifi/tether/b;

    .line 55
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->h:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method private synthetic a(Landroid/content/Intent;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->h:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v1, 0x0

    const/16 v2, 0x6b0

    const/16 v3, 0x63b

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 4115
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$ybjZ0n3001fAM5Au75rRaFNc2UQ;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$ybjZ0n3001fAM5Au75rRaFNc2UQ;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    invoke-static {p2, v0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroidx/preference/EditTextPreference;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$QsHtA_irpsHxUVbQFDsfY7fgOHM(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ybjZ0n3001fAM5Au75rRaFNc2UQ(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "AndroidAP"

    .line 69
    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a:Ljava/lang/String;

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1115
    iput-object p0, v1, Lcom/android/settings/widget/ValidatedEditTextPreference;->a:Lcom/android/settings/widget/ValidatedEditTextPreference$b;

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "WifiTetherSsidPref"

    const-string v1, "Invalid security to share hotspot"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    new-instance v2, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$QsHtA_irpsHxUVbQFDsfY7fgOHM;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$QsHtA_irpsHxUVbQFDsfY7fgOHM;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    .line 3100
    iput-object v2, v1, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->d:Landroid/view/View$OnClickListener;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    const/4 v1, 0x1

    .line 3104
    iput-boolean v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->e:Z

    goto :goto_2

    .line 86
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    const/4 v1, 0x0

    .line 4104
    iput-boolean v1, v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->e:Z

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether_network_name"

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->b:Lcom/android/settings/wifi/tether/b;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/b;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a:Ljava/lang/String;

    .line 95
    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a(Landroidx/preference/EditTextPreference;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->f:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;->onTetherConfigUpdated()V

    const/4 p1, 0x1

    return p1
.end method
