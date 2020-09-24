.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "BluetoothA2dpHwOffloadPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ro.bluetooth.a2dp_offload.supported"

    .line 82
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "persist.bluetooth.a2dp_offload.disabled"

    .line 84
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static b()V
    .locals 2

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_disable_a2dp_hw_offload"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    const-string v1, "ro.bluetooth.a2dp_offload.supported"

    .line 73
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const-string v1, "false"

    .line 76
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x0

    const-string v0, "ro.bluetooth.a2dp_offload.supported"

    .line 58
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    .line 61
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
