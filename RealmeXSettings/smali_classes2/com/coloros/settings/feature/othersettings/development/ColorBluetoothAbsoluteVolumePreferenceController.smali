.class public Lcom/coloros/settings/feature/othersettings/development/ColorBluetoothAbsoluteVolumePreferenceController;
.super Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;
.source "ColorBluetoothAbsoluteVolumePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;->m_()V

    const-string v0, "persist.bluetooth.disableabsvol"

    const-string v1, "true"

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorBluetoothAbsoluteVolumePreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "false"

    goto :goto_0

    :cond_0
    const-string p1, "true"

    :goto_0
    const-string p2, "persist.bluetooth.disableabsvol"

    .line 38
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const/4 p1, 0x1

    const-string v0, "persist.bluetooth.disableabsvol"

    .line 31
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr p1, v0

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorBluetoothAbsoluteVolumePreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
