.class public Lcom/color/compat/bluetooth/BluetoothAdapterNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterWrapper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionState(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothAdapterWrapper;->getConnectionState(Landroid/bluetooth/BluetoothAdapter;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothAdapterWrapper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getMaxConnectedAudioDevices(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothAdapterWrapper;->getMaxConnectedAudioDevices(Landroid/bluetooth/BluetoothAdapter;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothAdapterWrapper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static getSupportedProfiles(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothAdapterWrapper;->getSupportedProfiles(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothAdapterWrapper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getUuids(Landroid/bluetooth/BluetoothAdapter;)[Landroid/os/ParcelUuid;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothAdapterWrapper;->getUuids(Landroid/bluetooth/BluetoothAdapter;)[Landroid/os/ParcelUuid;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothAdapterWrapper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothAdapterWrapper;->setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothAdapterWrapper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
