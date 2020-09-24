.class public abstract Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiTetherBasePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;
    }
.end annotation


# instance fields
.field protected final c:Landroid/net/wifi/WifiManager;

.field protected final d:[Ljava/lang/String;

.field protected final e:Landroid/net/ConnectivityManager;

.field protected final f:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;

.field protected g:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->f:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;

    const-string p2, "wifi"

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->c:Landroid/net/wifi/WifiManager;

    const-string p2, "connectivity"

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->e:Landroid/net/ConnectivityManager;

    .line 49
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->g:Landroidx/preference/Preference;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->a()V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->c:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
