.class public Lcom/color/compat/bluetooth/BluetoothDeviceNative;
.super Ljava/lang/Object;
.source "BluetoothDeviceNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 104
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 86
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 95
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 149
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 131
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothDeviceWrapper;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
