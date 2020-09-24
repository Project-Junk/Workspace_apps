.class public Lcom/android/settings/connecteddevice/SavedDeviceGroupController;
.super Lcom/android/settings/core/a;
.source "SavedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/a;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final KEY:Ljava/lang/String; = "saved_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "saved_device_list"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/a;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/android/settings/overlay/a;->b()Lcom/android/settings/connecteddevice/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "saved_device_list"

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 77
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/b;->a(Landroid/content/Context;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/b;->e()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "saved_device_list"

    return-object v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 118
    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 112
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->d()V

    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method public setSavedDockUpdater(Lcom/android/settings/connecteddevice/a/a;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method
