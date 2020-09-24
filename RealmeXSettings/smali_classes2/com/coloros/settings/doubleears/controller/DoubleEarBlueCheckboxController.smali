.class public Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;
.super Lcom/android/settingslib/core/a;
.source "DoubleEarBlueCheckboxController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;,
        Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/coloros/settings/doubleears/a/a;

.field private final b:Landroidx/preference/PreferenceFragmentCompat;

.field private c:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;

.field private d:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/coloros/settings/doubleears/a/a;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p3, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a:Lcom/coloros/settings/doubleears/a/a;

    .line 61
    iput-object p2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 128
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 90
    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    instance-of v3, v2, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;

    if-eqz v3, :cond_0

    .line 91
    check-cast v2, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;

    const-class v3, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/doubleears/DoubleEarphoneSettingFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;

    invoke-virtual {v2}, Lcom/coloros/settings/doubleears/controller/DoubleEarphoneController;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "dual_headphone_master_key"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 106
    :cond_2
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->c(Z)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 167
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/MediaEarphoneChannelPreference;->a(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "double_earphone_media_bluetooth"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

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

    .line 1184
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->c:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->d:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;

    invoke-virtual {v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;->a()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 66
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->a:Lcom/coloros/settings/doubleears/a/a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/coloros/settings/doubleears/a/a;->a(IZ)V

    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 4

    .line 147
    new-instance v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;-><init>(Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;)V

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->d:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;

    .line 148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->d:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$a;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 153
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 154
    invoke-static {v0}, Lcom/coloros/settings/doubleears/b/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 160
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->c(Z)V

    .line 2173
    new-instance v0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;

    invoke-direct {v0, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;-><init>(Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;)V

    iput-object v0, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->c:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;

    .line 2174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 2175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 2176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2177
    iget-object v1, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2179
    iget-object v2, p0, Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController;->c:Lcom/coloros/settings/doubleears/controller/DoubleEarBlueCheckboxController$b;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method
