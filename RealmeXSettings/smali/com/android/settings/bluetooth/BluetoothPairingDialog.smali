.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Landroidx/fragment/app/FragmentActivity;
.source "BluetoothPairingDialog.java"


# instance fields
.field private a:Lcom/android/settings/bluetooth/h;

.field private b:Z

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->b:Z

    .line 44
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/h;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a:Lcom/android/settings/bluetooth/h;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/android/settings/bluetooth/h;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/bluetooth/h;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a:Lcom/android/settings/bluetooth/h;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "bluetooth.pairing.fragment"

    .line 74
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->dismiss()V

    const/4 p1, 0x0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 84
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;-><init>()V

    move-object v5, v2

    move v2, p1

    move-object p1, v5

    goto :goto_0

    :cond_2
    move v2, v1

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a:Lcom/android/settings/bluetooth/h;

    .line 1135
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1139
    iput-object v3, p1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 1155
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1158
    iput-object p0, p1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->b:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-nez v2, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->b:Z

    return-void

    .line 1156
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The pairing dialog activity can only be set once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1136
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->b:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
