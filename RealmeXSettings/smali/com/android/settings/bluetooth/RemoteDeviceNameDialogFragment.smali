.class public Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/g;
.source "RemoteDeviceNameDialogFragment.java"


# instance fields
.field private f:Lcom/android/settingslib/d/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/bluetooth/g;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settingslib/d/g;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1396
    iget-object p0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 39
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cached_device"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f12038f

    return v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->f:Lcom/android/settingslib/d/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2425
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2426
    iget-object v1, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 2427
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->m()V

    :cond_0
    return-void
.end method

.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->f:Lcom/android/settingslib/d/g;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/g;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f7

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->onAttach(Landroid/content/Context;)V

    .line 2047
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2048
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p1

    .line 2124
    iget-object v1, p1, Lcom/android/settingslib/d/q;->b:Lcom/android/settingslib/d/p;

    .line 2049
    invoke-virtual {v1, v0}, Lcom/android/settingslib/d/p;->a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2154
    iget-object p1, p1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 2050
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->f:Lcom/android/settingslib/d/g;

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/android/settings/bluetooth/g;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/g;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/android/settings/bluetooth/g;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/g;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
