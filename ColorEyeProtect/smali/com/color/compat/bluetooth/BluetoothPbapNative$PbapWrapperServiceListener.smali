.class final Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/bluetooth/BluetoothPbapWrapper$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/bluetooth/BluetoothPbapNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapWrapperServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;


# direct methods
.method private constructor <init>(Lcom/color/compat/bluetooth/BluetoothPbapNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;->this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/compat/bluetooth/BluetoothPbapNative;Lcom/color/compat/bluetooth/BluetoothPbapNative$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;-><init>(Lcom/color/compat/bluetooth/BluetoothPbapNative;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/color/inner/bluetooth/BluetoothPbapWrapper;)V
    .locals 0

    iget-object p1, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;->this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;

    invoke-static {p1}, Lcom/color/compat/bluetooth/BluetoothPbapNative;->access$100(Lcom/color/compat/bluetooth/BluetoothPbapNative;)Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;->this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;

    invoke-static {p1}, Lcom/color/compat/bluetooth/BluetoothPbapNative;->access$100(Lcom/color/compat/bluetooth/BluetoothPbapNative;)Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    move-result-object p1

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;->this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;

    invoke-interface {p1, p0}, Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;->onServiceConnected(Lcom/color/compat/bluetooth/BluetoothPbapNative;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;->this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;

    invoke-static {v0}, Lcom/color/compat/bluetooth/BluetoothPbapNative;->access$100(Lcom/color/compat/bluetooth/BluetoothPbapNative;)Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/compat/bluetooth/BluetoothPbapNative$PbapWrapperServiceListener;->this$0:Lcom/color/compat/bluetooth/BluetoothPbapNative;

    invoke-static {p0}, Lcom/color/compat/bluetooth/BluetoothPbapNative;->access$100(Lcom/color/compat/bluetooth/BluetoothPbapNative;)Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/color/compat/bluetooth/BluetoothPbapNative$ServiceListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
