.class public final Lcom/android/settings/bluetooth/m;
.super Lcom/android/settings/bluetooth/b;
.source "SavedBluetoothTwsDeviceUpdater.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/d/g;)Z
    .locals 2

    .line 2396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 98
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/coloros/b/a;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/d/g;II)V
    .locals 1

    .line 1396
    iget-object p3, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/m;->d(Lcom/android/settingslib/d/g;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 86
    invoke-static {p3}, Lcom/coloros/b/a;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/m;->c(Lcom/android/settingslib/d/g;)V

    :cond_1
    return-void
.end method
