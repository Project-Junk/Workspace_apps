.class public Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;
.super Lcom/android/settings/core/a;
.source "AvailableMediaDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;
.implements Lcom/android/settingslib/d/c;


# static fields
.field private static final KEY:Ljava/lang/String; = "available_device_list"

.field private static final TAG:Ljava/lang/String; = "AvailableMediaDeviceGroupController"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

.field mLocalBluetoothManager:Lcom/android/settingslib/d/q;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "available_device_list"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    return-void
.end method

.method private updateTitle()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/l;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    const v2, 0x7f120615

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    const v2, 0x7f120616

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "available_device_list"

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 88
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/b;->a(Landroid/content/Context;)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/b;->e()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "available_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 120
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "AvailableMediaDeviceGroupController"

    const-string v1, "onStart() Bluetooth is not supported on this device"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->a()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 1158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    const-string v0, "AvailableMediaDeviceGroupController"

    const-string v1, "onStop() Bluetooth is not supported on this device"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->d()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/d/q;

    .line 2158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 80
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method
