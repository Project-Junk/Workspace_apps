.class public abstract Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.super Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.source "VolumeSeekBarPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeSeekBarPreferenceController"


# instance fields
.field protected mHelper:Lcom/android/settings/notification/c;

.field protected mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field protected mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    new-instance p2, Lcom/android/settings/notification/c;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setAudioHelper(Lcom/android/settings/notification/c;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    .line 1094
    iput-object v0, p1, Lcom/android/settings/notification/VolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->a(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getMuteIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->c(I)V

    :cond_0
    return-void
.end method

.method protected abstract getAudioStream()I
.end method

.method public getMax()I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->i()I

    move-result v0

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/c;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    .line 2077
    iget-object v0, v0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 2211
    iget v0, v0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/c;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/c;->b(I)I

    move-result v0

    return v0
.end method

.method protected abstract getMuteIcon()I
.end method

.method public getSliderPosition()I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->k()I

    move-result v0

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/c;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    .line 2068
    iget-object v0, v0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->e()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->d()V

    :cond_0
    return-void
.end method

.method setAudioHelper(Lcom/android/settings/notification/c;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/c;

    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$a;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/c;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v1

    .line 2072
    iget-object v0, v0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p1, 0x1

    return p1
.end method
