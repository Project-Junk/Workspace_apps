.class public Lcom/color/compat/bluetooth/BluetoothPanNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPanNative"


# instance fields
.field private mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;-><init>(Landroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothPanNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothPanNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {p0}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothPanNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothPanNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultProfile()Landroid/bluetooth/BluetoothProfile;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {p0}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->getDefaultProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothPanNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isTetheringOn()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPanNative;->mBluetoothPanWrapper:Lcom/color/inner/bluetooth/BluetoothPanWrapper;

    invoke-virtual {p0}, Lcom/color/inner/bluetooth/BluetoothPanWrapper;->isTetheringOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothPanNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
