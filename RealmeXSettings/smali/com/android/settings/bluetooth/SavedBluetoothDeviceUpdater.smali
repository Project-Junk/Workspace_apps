.class public Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/b;
.source "SavedBluetoothDeviceUpdater.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/d/g;)Z
    .locals 2

    .line 1396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 86
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/coloros/b/a;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 92
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 2120
    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/g;->a(Z)V

    return v0
.end method
