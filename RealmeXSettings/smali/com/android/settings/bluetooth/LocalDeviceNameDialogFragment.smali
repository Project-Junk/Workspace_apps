.class public Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/g;
.source "LocalDeviceNameDialogFragment.java"


# instance fields
.field private f:Landroid/bluetooth/BluetoothAdapter;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/bluetooth/g;-><init>()V

    .line 34
    new-instance v0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f120413

    return v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    return-void
.end method

.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->f:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/g;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->f:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/android/settings/bluetooth/g;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/g;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/android/settings/bluetooth/g;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 55
    invoke-super {p0}, Lcom/android/settings/bluetooth/g;->onResume()V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/g;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
