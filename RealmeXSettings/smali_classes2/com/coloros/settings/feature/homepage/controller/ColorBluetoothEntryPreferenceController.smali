.class public Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothEntryPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "ColorBluetoothEntryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_BLUETOOTH_SETTINGS:Ljava/lang/String; = "bluetooth_settings"


# instance fields
.field private mBluetoothSettingsPref:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "bluetooth_settings"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 39
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothEntryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothEntryPreferenceController;->mBluetoothSettingsPref:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothEntryPreferenceController;->mBluetoothSettingsPref:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;

    .line 1067
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothEntryPreferenceController;->mBluetoothSettingsPref:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;

    .line 1060
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->i:Landroid/content/BroadcastReceiver;

    iget-object v3, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->b:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1061
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(I)V

    :cond_0
    return-void
.end method
