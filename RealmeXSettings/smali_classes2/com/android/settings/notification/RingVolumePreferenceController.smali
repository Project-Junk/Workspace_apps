.class public Lcom/android/settings/notification/RingVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RingVolumePreferenceController$b;,
        Lcom/android/settings/notification/RingVolumePreferenceController$a;
    }
.end annotation


# static fields
.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "RingVolumeController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$a;

.field protected mMuteIcon:I

.field private final mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$b;

.field protected mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ring_volume"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    .line 43
    new-instance p1, Lcom/android/settings/notification/RingVolumePreferenceController$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/RingVolumePreferenceController$b;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;B)V

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$b;

    .line 44
    new-instance p1, Lcom/android/settings/notification/RingVolumePreferenceController$a;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/RingVolumePreferenceController$a;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;B)V

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$a;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/RingVolumePreferenceController;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateEffectsSuppressor()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$a;

    return-object p0
.end method

.method private updateEffectsSuppressor()Z
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 113
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v4, "com.android.internal.R.string.muted_by"

    .line 2034
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 2035
    invoke-static {v1, v0}, Lcom/android/settings/notification/s;->a(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 2034
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->a(Ljava/lang/String;)V

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return v3
.end method

.method private updateRingerMode()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHelper:Lcom/android/settings/notification/c;

    .line 1060
    iget-object v0, v0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 105
    iget v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 106
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHelper:Lcom/android/settings/notification/c;

    .line 1044
    iget-object v0, v0, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mMuteIcon:I

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ring_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ring_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$b;->a(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$b;->a(Z)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updateEffectsSuppressor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->updatePreferenceIcon()V

    :cond_0
    return-void
.end method

.method protected updatePreferenceIcon()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_2

    .line 124
    iget v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f080879

    .line 125
    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mMuteIcon:I

    .line 126
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x7f0807d7

    .line 128
    iput v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mMuteIcon:I

    .line 129
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v1, 0x7f0807d5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->b(I)V

    :cond_2
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
