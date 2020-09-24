.class public Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VolumeSilentPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/b/c$a;


# static fields
.field private static final KEY_SILENT_MODE:Ljava/lang/String; = "volume_silent"

.field private static final VIBRATE_WHEN_SILENT:Ljava/lang/String; = "vibrate_when_silent"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "volume_silent"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private isNormalRingerMode()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSetRingerSilentMode(Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_silent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 90
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    return-void
.end method

.method private updateSilentMode()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->isNormalRingerMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "volume_silent"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->isNormalRingerMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/coloros/settings/feature/b/c;->b(Lcom/coloros/settings/feature/b/c$a;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/coloros/settings/feature/b/c;->a(Lcom/coloros/settings/feature/b/c$a;)V

    return-void
.end method

.method public onRingerModeChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->updateSilentMode()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/sound/controller/VolumeSilentPreferenceController;->onSetRingerSilentMode(Z)V

    const/4 p1, 0x1

    return p1
.end method
