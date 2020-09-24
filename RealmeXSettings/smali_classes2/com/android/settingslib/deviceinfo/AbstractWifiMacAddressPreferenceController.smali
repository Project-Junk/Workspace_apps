.class public abstract Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractWifiMacAddressPreferenceController.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroidx/preference/Preference;

.field private final c:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 56
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->c:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method protected final a()[Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected final b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 87
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->b:Landroidx/preference/Preference;

    sget v1, Lcom/android/settingslib/e$h;->status_unavailable:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_mac_address"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->b:Landroidx/preference/Preference;

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->b()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_mac_address"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
