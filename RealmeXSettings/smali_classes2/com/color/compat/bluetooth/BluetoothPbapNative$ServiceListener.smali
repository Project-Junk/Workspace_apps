.class public interface abstract Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;
.super Ljava/lang/Object;
.source "BluetoothPbapNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/bluetooth/BluetoothPbapNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceListener"
.end annotation


# virtual methods
.method public abstract onServiceConnected(Lcom/color/compat/bluetooth/BluetoothPbapNative;)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public abstract onServiceDisconnected()V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method
