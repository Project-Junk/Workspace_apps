.class public Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;
.super Lcom/android/settings/notification/RingVolumePreferenceController;
.source "ColorRingVolumePreferenceController.java"


# static fields
.field public static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ring_volume"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "ring_volume"

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    invoke-static {}, Lcom/coloros/settings/custom/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public updatePreferenceIcon()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_4

    .line 46
    iget v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x1

    const v2, 0x7f0809d7

    if-ne v0, v1, :cond_0

    .line 47
    iput v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mMuteIcon:I

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    return-void

    .line 49
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mRingerMode:I

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "vibrate_when_silent"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 53
    iput v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mMuteIcon:I

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    return-void

    :cond_2
    const v0, 0x7f0809d6

    .line 56
    iput v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mMuteIcon:I

    .line 57
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorRingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v1, 0x7f0809d5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    :cond_4
    return-void
.end method
