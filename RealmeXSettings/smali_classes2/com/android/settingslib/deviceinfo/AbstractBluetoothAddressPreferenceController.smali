.class public abstract Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractBluetoothAddressPreferenceController.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method protected final a()[Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected final b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 75
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->b:Landroidx/preference/Preference;

    sget v1, Lcom/android/settingslib/e$h;->status_unavailable:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bt_address"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->b:Landroidx/preference/Preference;

    .line 64
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->b()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bt_address"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 52
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
