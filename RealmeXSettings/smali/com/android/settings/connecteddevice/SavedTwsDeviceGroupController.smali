.class public Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;
.super Lcom/android/settings/core/a;
.source "SavedTwsDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/a;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final KEY:Ljava/lang/String; = "saved_tws_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "saved_tws_device_list"

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/a;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Lcom/android/settings/overlay/a;->b()Lcom/android/settings/connecteddevice/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "saved_tws_device_list"

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 110
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/b;->a(Landroid/content/Context;)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/b;->e()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "saved_tws_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 146
    new-instance v0, Lcom/android/settings/bluetooth/m;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/m;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 140
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->d()V

    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/b;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method public setSavedDockUpdater(Lcom/android/settings/connecteddevice/a/a;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method
