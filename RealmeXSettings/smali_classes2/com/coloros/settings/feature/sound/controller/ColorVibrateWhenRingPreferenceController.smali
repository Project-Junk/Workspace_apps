.class public Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;
.super Lcom/android/settings/notification/VibrateWhenRingPreferenceController;
.source "ColorVibrateWhenRingPreferenceController.java"


# static fields
.field public static final KEY_VIBRATE_RING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final VIBRATE_TIME:I = 0x50


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHasVibrator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "vibrate_when_ringing"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/coloros/settings/utils/bo;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;->mHasVibrator:Z

    .line 35
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;->mHasVibrator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :cond_1
    :goto_0
    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorVibrateWhenRingPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {}, Lcom/coloros/settings/utils/bo;->a()V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->setChecked(Z)Z

    move-result p1

    return p1
.end method
