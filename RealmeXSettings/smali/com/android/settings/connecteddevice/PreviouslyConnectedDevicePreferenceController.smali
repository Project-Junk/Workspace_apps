.class public Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;
.super Lcom/android/settings/core/a;
.source "PreviouslyConnectedDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settings/connecteddevice/a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final MAX_DEVICE_NUM:I = 0x3


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceSize:I

.field private mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/overlay/a;->b()Lcom/android/settings/connecteddevice/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 65
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 87
    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 93
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 94
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceVisiblity()V

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 103
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceVisiblity()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/b;->d()V

    return-void
.end method

.method setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/b;

    return-void
.end method

.method setPreferenceGroup(Landroidx/preference/PreferenceGroup;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method setSavedDockUpdater(Lcom/android/settings/connecteddevice/a/a;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/a/a;

    return-void
.end method

.method updatePreferenceVisiblity()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget v1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    return-void
.end method
