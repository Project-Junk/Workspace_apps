.class final Lcom/android/settings/network/TetherPreferenceController$1;
.super Ljava/lang/Object;
.source "TetherPreferenceController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->a:Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->a:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->a(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->a:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/TetherPreferenceController;->a()V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->a:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/TetherPreferenceController;->a(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method
