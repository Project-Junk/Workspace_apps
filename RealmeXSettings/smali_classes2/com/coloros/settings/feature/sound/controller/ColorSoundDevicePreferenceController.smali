.class public Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorSoundDevicePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_SOUND_INPUT_DEVICE:Ljava/lang/String; = "sound_settings_default_sound_device"


# instance fields
.field private mSoundInputDevicePreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sound_settings_default_sound_device"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "sound_settings_default_sound_device"

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mSoundInputDevicePreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mSoundInputDevicePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "coloros_sound_input_channel"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mSoundInputDevicePreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12151b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mSoundInputDevicePreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorSoundDevicePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12151d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
