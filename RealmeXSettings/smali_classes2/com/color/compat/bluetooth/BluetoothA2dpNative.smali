.class public Lcom/color/compat/bluetooth/BluetoothA2dpNative;
.super Ljava/lang/Object;
.source "BluetoothA2dpNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 61
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothA2dpNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 31
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->getPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 71
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 41
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/bluetooth/BluetoothA2dpWrapper;->setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
