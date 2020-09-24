.class public Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;
.super Lcom/android/settingslib/core/a;
.source "DoubleEarphoneController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/preference/PreferenceFragmentCompat;

.field private final b:Lcom/coloros/settings/doubleears/a/b;

.field private c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private d:Z

.field private e:Z

.field private f:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/b;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->g:I

    .line 61
    iput-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    .line 62
    iput-object p3, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)Lcom/coloros/settings/doubleears/a/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 274
    invoke-static {p1}, Lcom/coloros/settings/doubleears/b/a;->a(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/doubleears/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/doubleears/b/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 278
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/doubleears/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    .line 283
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-interface {p1, v1}, Lcom/coloros/settings/doubleears/a/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "state"

    .line 3297
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3298
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 3300
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->d:Z

    .line 3301
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/coloros/settings/doubleears/a/b;->c(Z)V

    return-void

    .line 3302
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3304
    iput-boolean v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->d:Z

    .line 3305
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/coloros/settings/doubleears/a/b;->c(Z)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 179
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v1

    .line 180
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBluetoothDevice connected = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bluetoothClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v4, "null"

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "double_earphone_switch"

    .line 183
    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 188
    invoke-static {v2}, Lcom/coloros/settings/doubleears/b/a;->a(Landroid/bluetooth/BluetoothClass;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->e:Z

    .line 190
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-interface {v1, v0}, Lcom/coloros/settings/doubleears/a/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 191
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)V
    .locals 3

    .line 4287
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 4289
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 4290
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_AUDIO_DEVICE_ROUTE_CHANGED newDevice = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "double_earphone_switch"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4291
    invoke-direct {p0, v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 2

    .line 315
    iget v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "double_earphone_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->f:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 67
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "dual_headphone_master_key"

    .line 68
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->g:I

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-static {v2, v1}, Lcom/coloros/settings/doubleears/b/a;->a(Landroidx/preference/PreferenceFragmentCompat;I)I

    move-result v1

    .line 1089
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualHeadPhone="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->updateState(Landroidx/preference/Preference;)V

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/coloros/settings/doubleears/a/b;->a(Z)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const-string v1, "double_earphone_switch"

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    .line 111
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x0

    .line 1146
    iput-boolean v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->d:Z

    .line 1147
    iput-boolean v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->e:Z

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetchEarphoneState wiredHeadSetOn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1149
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    iput-boolean v3, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->d:Z

    goto :goto_1

    .line 1152
    :cond_2
    iput-boolean v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->d:Z

    .line 1153
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-interface {v0, v2}, Lcom/coloros/settings/doubleears/a/b;->c(Z)V

    .line 1166
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    .line 1167
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkBluetoothIntent connectState  = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1169
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkBluetoothIntent devices = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 1172
    invoke-direct {p0, v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a(Ljava/util/Set;)V

    .line 1158
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->e:Z

    if-nez v0, :cond_5

    .line 1159
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/coloros/settings/doubleears/a/b;->b(Z)V

    .line 1161
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_headphone_master_key"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->g:I

    .line 1200
    iget v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->g:I

    if-ne v0, v3, :cond_6

    .line 1201
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 1203
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 1204
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->b:Lcom/coloros/settings/doubleears/a/b;

    invoke-interface {v0, v2}, Lcom/coloros/settings/doubleears/a/b;->a(Z)V

    .line 2119
    :cond_7
    :goto_3
    new-instance v0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;-><init>(Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;)V

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->f:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;

    .line 2120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 2121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 2122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 2123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 2124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 2125
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.ACTION_AUDIO_DEVICE_ROUTE_CHANGED"

    .line 2128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2130
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2132
    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->f:Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController$a;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_8
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
