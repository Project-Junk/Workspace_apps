.class public Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VibrateWhenSilentPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/b/c$a;


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field private static final KEY_VIBRATE_WHEN_SILENT:Ljava/lang/String; = "vibrate_when_silent"

.field private static final TAG:Ljava/lang/String; = "VibrateWhenSilent"

.field private static final VIBRATE_TIME:I = 0x50

.field public static final VIBRATE_WHEN_SILENT:Ljava/lang/String; = "vibrate_when_silent"

.field private static final VIBRATE_WHEN_SILENT_VALUE:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHasVibrator:Z

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "vibrate_when_silent"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/coloros/settings/utils/bo;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mHasVibrator:Z

    .line 55
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private setVibrateWhenSilentMode(ZI)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_1
    return-void
.end method

.method private setVibrateWhenSilentValue()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_silent"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 121
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 123
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private updateVibrateWhenSilentCheckState()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_silent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v2, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    .line 131
    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "vibrate_when_silent"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 67
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->setVibrateWhenSilentValue()V

    .line 71
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->updateVibrateWhenSilentCheckState()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mHasVibrator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_silent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onPause()V
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/coloros/settings/feature/b/c;->b(Lcom/coloros/settings/feature/b/c$a;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/coloros/settings/feature/b/c;->a(Lcom/coloros/settings/feature/b/c$a;)V

    return-void
.end method

.method public onRingerModeChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->setVibrateWhenSilentValue()V

    .line 113
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->updateVibrateWhenSilentCheckState()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/coloros/settings/utils/bo;->a()V

    .line 96
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/sound/controller/VibrateWhenSilentPreferenceController;->setVibrateWhenSilentMode(ZI)V

    const/4 p1, 0x1

    return p1
.end method
