.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/d/c;


# instance fields
.field d:Lcom/android/settingslib/d/d$e;

.field e:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Landroid/bluetooth/BluetoothDevice;

.field g:Landroid/bluetooth/BluetoothAdapter;

.field h:Lcom/android/settingslib/d/q;

.field i:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/d/g;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field k:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->j:Ljava/util/HashMap;

    .line 80
    sget-object p1, Lcom/android/settingslib/d/d;->a:Lcom/android/settingslib/d/d$e;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d:Lcom/android/settingslib/d/d$e;

    return-void
.end method

.method private n()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroidx/preference/Preference;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 211
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    const/4 v1, 0x1

    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    .line 215
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f1203b3

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroidx/preference/PreferenceGroup;Lcom/android/settingslib/d/d$e;Z)V
    .locals 1

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    const v0, 0x7f1203f9

    .line 259
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setTitle(I)V

    .line 260
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->i:Landroidx/preference/PreferenceGroup;

    if-eqz p3, :cond_0

    .line 263
    sget-object p3, Lcom/android/settingslib/d/d;->c:Lcom/android/settingslib/d/d$e;

    .line 9084
    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d:Lcom/android/settingslib/d/d$e;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g()V

    .line 10084
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d:Lcom/android/settingslib/d/d$e;

    const/4 p2, 0x1

    .line 267
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->setEnabled(Z)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 6

    .line 5208
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5209
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 5496
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    .line 5212
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    .line 5214
    iget-object v3, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v3}, Lcom/android/settingslib/d/g;->i()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/16 v1, 0x364

    .line 5215
    new-array v3, v5, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 6235
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6236
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v1

    .line 6237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f120380

    .line 6238
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f12039b

    .line 6240
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203a1

    .line 6241
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6243
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v3, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 6249
    iget-object v4, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b:Lcolor/support/v7/app/AlertDialog;

    .line 6250
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 6249
    invoke-static {v0, v4, v3, v2, v1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;Lcolor/support/v7/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b:Lcolor/support/v7/app/AlertDialog;

    return-void

    :cond_1
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    const/16 v1, 0x363

    .line 5219
    new-array v3, v5, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 5221
    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {p1, v4}, Lcom/android/settingslib/d/g;->a(Z)V

    return-void

    :cond_2
    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    const/16 v1, 0x362

    .line 5223
    new-array v3, v5, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 5225
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->g()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x448

    .line 5226
    new-array v3, v5, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 6254
    :cond_3
    iget-object v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6255
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 241
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->e:Z

    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->n()V

    :cond_0
    return-void
.end method

.method protected b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method abstract c()V
.end method

.method d()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->n()V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->e:Z

    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method final f()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method final g()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    .line 3154
    iget-object v0, v0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 140
    invoke-virtual {v0}, Lcom/android/settingslib/d/h;->a()Ljava/util/Collection;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final h()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 235
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->o()V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->e:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    .line 96
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    if-nez p1, :cond_0

    const-string p1, "DeviceListPreferenceFragment"

    const-string v0, "Bluetooth is not supported on this device"

    .line 97
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    const/4 p1, 0x0

    const-string v0, "persist.bluetooth.showdeviceswithoutnames"

    .line 101
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->k:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->c()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->i:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/d/g;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d:Lcom/android/settingslib/d/d$e;

    .line 6396
    iget-object v1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 177
    invoke-interface {v0, v1}, Lcom/android/settingslib/d/d$e;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7183
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->i:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_2

    const-string p1, "DeviceListPreferenceFragment"

    const-string v0, "Trying to create a device preference before the list group/category exists!"

    .line 7184
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7396
    :cond_2
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 7189
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7190
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v1, :cond_3

    .line 7193
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->k:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/g;Z)V

    .line 7195
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8124
    iput-boolean v0, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c:Z

    .line 7198
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->i:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 7201
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 7202
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 148
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_scan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->n()V

    return v1

    .line 153
    :cond_0
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 4106
    iget-object v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 4396
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 156
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->f:Landroid/bluetooth/BluetoothDevice;

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return v1

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    .line 1158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 118
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->f()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/android/settingslib/d/q;

    .line 2158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 130
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    :cond_1
    :goto_0
    return-void
.end method
