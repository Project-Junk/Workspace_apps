.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothPairingDetail.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settingslib/widget/FooterPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/bluetooth/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 59
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->j:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 151
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 153
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    sget-object v0, Lcom/android/settingslib/d/d;->a:Lcom/android/settingslib/d/d$e;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->p:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a(Landroidx/preference/PreferenceGroup;Lcom/android/settingslib/d/d$e;Z)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->b:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a(Landroidx/preference/Preference;)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->c:Lcom/android/settings/bluetooth/a;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/a;->a()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->d()V

    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothPairingDetail"

    return-object v0
.end method

.method final a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->h()V

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public final a(Lcom/android/settingslib/d/g;I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->f:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->f:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    if-ne p2, p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->d()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Z)V

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->e:Z

    or-int/2addr p1, v0

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->a(Z)V

    return-void
.end method

.method final c()V
    .locals 2

    const-string v0, "available_devices"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const-string v0, "footer_preference"

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->b:Lcom/android/settingslib/widget/FooterPreference;

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->b:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    return-void
.end method

.method public final c(Lcom/android/settingslib/d/g;I)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->f:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 2396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->f:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->p:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->f()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->h:Lcom/android/settingslib/d/q;

    .line 1154
    iget-object v0, v0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 127
    invoke-virtual {v0}, Lcom/android/settingslib/d/h;->c()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->p:Z

    .line 130
    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d()V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "available_devices"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa6

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3fa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15002a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->p:Z

    .line 66
    new-instance p1, Lcom/android/settings/bluetooth/a;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/bluetooth/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->c:Lcom/android/settings/bluetooth/a;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    const-class p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120617

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1227
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->h:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPairingDetail"

    const-string v1, "Bluetooth is not supported on this device"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a(I)V

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->a:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->a(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->h:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPairingDetail"

    const-string v1, "Bluetooth is not supported on this device"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->c:Lcom/android/settings/bluetooth/a;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/a;->b()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->h()V

    return-void
.end method
