.class public abstract Lcom/android/settings/bluetooth/b;
.super Ljava/lang/Object;
.source "BluetoothDeviceUpdater.java"

# interfaces
.implements Lcom/android/settingslib/d/c;
.implements Lcom/android/settingslib/d/s$c;


# instance fields
.field protected final a:Lcom/android/settings/connecteddevice/a;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/content/Context;

.field protected d:Lcom/android/settings/dashboard/DashboardFragment;

.field protected e:Lcom/android/settingslib/d/q;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final f:Lcom/android/settings/widget/GearPreference$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/settings/bluetooth/b;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;Lcom/android/settingslib/d/q;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;Lcom/android/settingslib/d/q;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$b$69n7WmZ8Yr5oRt2nluAjioSV7cM;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$b$69n7WmZ8Yr5oRt2nluAjioSV7cM;-><init>(Lcom/android/settings/bluetooth/b;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/b;->f:Lcom/android/settings/widget/GearPreference$a;

    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/b;->d:Lcom/android/settings/dashboard/DashboardFragment;

    .line 76
    iput-object p2, p0, Lcom/android/settings/bluetooth/b;->a:Lcom/android/settings/connecteddevice/a;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    .line 78
    iput-object p3, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    return-void
.end method

.method private synthetic a(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/b;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static e(Lcom/android/settingslib/d/g;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 9396
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 297
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private f()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothDeviceUpdater"

    const-string v1, "removeAllDevicesFromPreference() BT is not supported on this device"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5154
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 133
    invoke-virtual {v0}, Lcom/android/settingslib/d/h;->a()Ljava/util/Collection;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/b;->d(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(Lcom/android/settingslib/d/g;)V
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/b;->a(Lcom/android/settingslib/d/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/b;->c(Lcom/android/settingslib/d/g;)V

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/b;->d(Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method public static synthetic lambda$69n7WmZ8Yr5oRt2nluAjioSV7cM(Lcom/android/settings/bluetooth/b;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/b;->a(Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothDeviceUpdater"

    const-string v1, "registerCallback() Bluetooth is not supported on this device"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/b;->d:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    .line 2158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 90
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    .line 2162
    iget-object v0, v0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 91
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/s$c;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/b;->e()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/bluetooth/b;->c:Landroid/content/Context;

    return-void
.end method

.method protected final a(Landroidx/preference/Preference;)V
    .locals 2

    .line 266
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 8120
    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 273
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_address"

    .line 272
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/bluetooth/b;->d:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 277
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12077a

    .line 9063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->d:Lcom/android/settings/dashboard/DashboardFragment;

    .line 279
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public final a(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/b;->f(Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method public abstract a(Lcom/android/settingslib/d/g;)Z
.end method

.method public final b()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/b;->e()V

    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/b;->d(Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/b;->f(Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method protected c(Lcom/android/settingslib/d/g;)V
    .locals 4

    .line 5396
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/b;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/g;Z)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/bluetooth/b;->f:Lcom/android/settings/widget/GearPreference$a;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    .line 231
    instance-of p1, p0, Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz p1, :cond_0

    .line 232
    move-object p1, p0

    check-cast p1, Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lcom/android/settings/bluetooth/b;->a:Lcom/android/settings/connecteddevice/a;

    invoke-interface {p1, v1}, Lcom/android/settings/connecteddevice/a;->onDeviceAdded(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothDeviceUpdater"

    const-string/jumbo v1, "unregisterCallback() Bluetooth is not supported on this device"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    .line 3158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 104
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    .line 3162
    iget-object v0, v0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/s;->b(Lcom/android/settingslib/d/s$c;)V

    return-void
.end method

.method protected final d(Lcom/android/settingslib/d/g;)V
    .locals 2

    .line 6396
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 7187
    iget-object p1, p1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    .line 246
    iget-object v1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/settings/bluetooth/b;->a:Lcom/android/settings/connecteddevice/a;

    iget-object v1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {p1, v1}, Lcom/android/settings/connecteddevice/a;->onDeviceRemoved(Landroidx/preference/Preference;)V

    .line 248
    iget-object p1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7396
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->a:Lcom/android/settings/connecteddevice/a;

    iget-object v1, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings/connecteddevice/a;->onDeviceRemoved(Landroidx/preference/Preference;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "BluetoothDeviceUpdater"

    const-string v1, "forceUpdate() Bluetooth is not supported on this device"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/b;->e:Lcom/android/settingslib/d/q;

    .line 4154
    iget-object v0, v0, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 118
    invoke-virtual {v0}, Lcom/android/settingslib/d/h;->a()Ljava/util/Collection;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 120
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/b;->f(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    :cond_1
    return-void

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/b;->f()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/b;->e()V

    return-void

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/settings/bluetooth/b;->f()V

    :cond_1
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/d/g;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/b;->f(Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/d/g;II)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/b;->f(Lcom/android/settingslib/d/g;)V

    return-void
.end method
