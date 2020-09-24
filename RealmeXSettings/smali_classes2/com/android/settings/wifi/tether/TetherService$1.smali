.class final Lcom/android/settings/wifi/tether/TetherService$1;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic b:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->b:Lcom/android/settings/wifi/tether/TetherService;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/TetherService$1;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 256
    move-object p1, p2

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
