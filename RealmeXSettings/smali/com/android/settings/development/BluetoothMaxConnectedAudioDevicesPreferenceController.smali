.class public Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "BluetoothMaxConnectedAudioDevicesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.integer.config_bluetooth_max_connected_audio_devices"

    .line 47
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->a:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    .line 59
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_max_connected_audio_devices"

    return-object v0
.end method

.method public final l_()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/android/settingslib/development/b;->l_()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final m_()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const-string v0, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v1, ""

    .line 104
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 67
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 68
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "persist.bluetooth.maxconnectedaudiodevices"

    .line 72
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 79
    check-cast p1, Landroidx/preference/ListPreference;

    .line 80
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "persist.bluetooth.maxconnectedaudiodevices"

    .line 81
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 84
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, ""

    .line 87
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v4, v2

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 92
    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
