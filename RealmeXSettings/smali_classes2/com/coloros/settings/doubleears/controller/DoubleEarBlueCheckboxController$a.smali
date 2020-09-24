.class final Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;
.super Ljava/lang/Object;
.source "DoubleEarBlueCheckboxController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/bluetooth/BluetoothA2dp;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->a:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;

    if-eqz p1, :cond_1

    .line 237
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->a:Landroid/bluetooth/BluetoothA2dp;

    .line 238
    iget-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->a:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p1, v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Z)V

    .line 241
    invoke-virtual {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 243
    invoke-virtual {p1, p2}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Z)V

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->a()V

    return-void
.end method
