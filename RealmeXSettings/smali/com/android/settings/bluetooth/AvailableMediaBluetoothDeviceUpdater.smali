.class public Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/b;
.source "AvailableMediaBluetoothDeviceUpdater.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final g:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/a;)V

    const-string p2, "audio"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->g:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/d/g;)Z
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->g:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    const/4 v0, 0x0

    .line 67
    invoke-static {p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->e(Lcom/android/settingslib/d/g;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eq v1, v2, :cond_3

    .line 84
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->n()Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->o()Z

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->e()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 100
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1120
    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 102
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->f()Z

    move-result p1

    return p1
.end method
