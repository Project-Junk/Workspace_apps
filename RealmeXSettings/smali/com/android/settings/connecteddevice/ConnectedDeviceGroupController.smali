.class public Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;
.super Lcom/android/settings/core/a;
.source "ConnectedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/a;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final KEY:Ljava/lang/String; = "connected_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

.field private mConnectedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

.field private mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/a;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connected_device_list"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "connected_device_list"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/b;->a(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->e()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/a;

    invoke-virtual {v0, p1}, Lcom/android/settings/connecteddevice/usb/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.hardware.usb.accessory"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.hardware.usb.host"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "connected_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/bluetooth/b;Lcom/android/settings/connecteddevice/usb/a;Lcom/android/settings/connecteddevice/a/a;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    .line 128
    iput-object p2, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/a;

    .line 129
    iput-object p3, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 4

    .line 133
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/a;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Lcom/android/settings/overlay/a;->a()Lcom/android/settings/connecteddevice/a/a;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/android/settings/bluetooth/k;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/settings/bluetooth/k;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    new-instance v3, Lcom/android/settings/connecteddevice/usb/a;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/settings/connecteddevice/usb/a;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/bluetooth/b;Lcom/android/settings/connecteddevice/usb/a;Lcom/android/settings/connecteddevice/a/a;)V

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 117
    iget-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->a()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/a;

    .line 1074
    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/a;->b:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/a;

    .line 1078
    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/a;->b:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->b()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->d()V

    return-void
.end method
