.class public Lcom/color/compat/bluetooth/BluetoothPbapNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;,
        Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapNative"


# instance fields
.field private mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

.field private mContext:Landroid/content/Context;

.field private mServiceListener:Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mServiceListener:Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    iput-object p1, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mServiceListener:Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    new-instance p2, Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    new-instance v1, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;

    invoke-direct {v1, p0, v0}, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;-><init>(Lcom/color/compat/bluetooth/BluetoothPbapNative;Lcom/color/compat/bluetooth/BluetoothPbapNative$1;)V

    invoke-direct {p2, p1, v1}, Lcom/color/inner/bluetooth/BluetoothPbapWrapper;-><init>(Landroid/content/Context;Lcom/color/inner/bluetooth/BluetoothPbapWrapper$ServiceListener;)V

    iput-object p2, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    return-void
.end method

.method static synthetic access$100(Lcom/color/compat/bluetooth/BluetoothPbapNative;)Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mServiceListener:Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    invoke-virtual {p0}, Lcom/color/inner/bluetooth/BluetoothPbapWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothPbapNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothPbapWrapper;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothPbapNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative;->mBluetoothPbapWrapper:Lcom/color/inner/bluetooth/BluetoothPbapWrapper;

    invoke-virtual {p0, p1}, Lcom/color/inner/bluetooth/BluetoothPbapWrapper;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothPbapNative"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
