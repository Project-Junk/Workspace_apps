.class public Lcom/color/compat/bluetooth/BluetoothHidHostNative;
.super Ljava/lang/Object;
.source "BluetoothHidHostNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPanNative"


# instance fields
.field private mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    .line 36
    new-instance v0, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;-><init>(Landroid/bluetooth/BluetoothProfile;)V

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPanNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPanNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->getConnectedDevices()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothPanNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPanNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultProfile()Landroid/bluetooth/BluetoothProfile;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 43
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->getDefaultProfile()Landroid/bluetooth/BluetoothProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothPanNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPanNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothHidHostNative;->mBluetoothHidHostWrapper:Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/color/inner/bluetooth/BluetoothHidHostWrapper;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothPanNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
