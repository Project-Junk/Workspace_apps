.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string v0, "Devicepicker"

    const-string v1, "sendDevicePickedIntent"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 192
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000000

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DevicePickerFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->h()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->f:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetooth_settings"

    const/4 v3, 0x0

    .line 2053
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_selected_device"

    .line 1136
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_selected_device_time"

    .line 1138
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2106
    iget-object v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 2496
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void

    .line 126
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->f:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return-void
.end method

.method public final a(Lcom/android/settingslib/d/g;I)V
    .locals 1

    .line 3396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->f:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return-void

    :cond_1
    const/16 p1, 0xa

    if-ne p2, p1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->d()V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Z)V

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->e:Z

    or-int/2addr p1, v0

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->a(Z)V

    return-void
.end method

.method protected final b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    const/4 v0, 0x1

    .line 4089
    iput-boolean v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->d:Z

    return-void
.end method

.method final c()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->b:Z

    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1088
    invoke-static {v1}, Lcom/android/settingslib/d/d;->a(I)Lcom/android/settingslib/d/d$e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d:Lcom/android/settingslib/d/d$e;

    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->c:Ljava/lang/String;

    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->p:Ljava/lang/String;

    const-string v0, "bt_device_list"

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "bt_device_list"

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15008f

    return v0
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->d()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12079c

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "user"

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v0, "no_config_bluetooth"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->q:Z

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->f:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->g()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->f:Landroid/bluetooth/BluetoothDevice;

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->q:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->d()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->h()V

    .line 105
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    return-void
.end method
