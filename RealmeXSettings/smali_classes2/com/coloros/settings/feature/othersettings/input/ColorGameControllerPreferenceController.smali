.class public Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;
.super Lcom/android/settings/inputmethod/GameControllerPreferenceController;
.source "ColorGameControllerPreferenceController.java"


# static fields
.field private static final KEY_GAME_CONTROLLER_SETTINGS_CATEGORY:Ljava/lang/String; = "game_controller_settings_category"

.field private static final KEY_VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"


# instance fields
.field private mGameControllerCategory:Landroidx/preference/PreferenceCategory;

.field private mGameSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "vibrate_input_devices"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 5

    .line 87
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 88
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 89
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateGameControllers()V
    .locals 4

    .line 77
    invoke-static {}, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->haveInputDeviceWithVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mGameSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "vibrate_input_devices"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private updatePreferenceWhenRemoved()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mGameSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "game_controller_settings_category"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mGameControllerCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "vibrate_input_devices"

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->mGameSwitchPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->updatePreferenceWhenRemoved()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorGameControllerPreferenceController;->updateGameControllers()V

    return-void
.end method
