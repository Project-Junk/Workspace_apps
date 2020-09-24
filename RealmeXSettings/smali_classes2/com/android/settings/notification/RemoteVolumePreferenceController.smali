.class public Lcom/android/settings/notification/RemoteVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RemoteVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;
    }
.end annotation


# static fields
.field private static final KEY_REMOTE_VOLUME:Ljava/lang/String; = "remote_volume"

.field static final REMOTE_VOLUME:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mActiveToken:Landroid/media/session/MediaSession$Token;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mCallbacks:Lcom/android/settingslib/q/b$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMediaController:Landroid/media/session/MediaController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mMediaSessions:Lcom/android/settingslib/q/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "remote_volume"

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;-><init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mCallbacks:Lcom/android/settingslib/q/b$a;

    .line 86
    new-instance v0, Lcom/android/settingslib/q/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mCallbacks:Lcom/android/settingslib/q/b$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settingslib/q/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/q/b$a;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/q/b;

    .line 87
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updateToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updateToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public static getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;
    .locals 3

    .line 101
    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 105
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    .line 106
    invoke-static {v2}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->d(I)V

    const/4 p2, 0x1

    .line 223
    invoke-virtual {p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setVisible(Z)V

    .line 224
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->setSliderPosition(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateToken(Landroid/media/session/MediaSession$Token;)V
    .locals 2

    .line 228
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-eqz p1, :cond_0

    .line 230
    new-instance p1, Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {p1, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setVisible(Z)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public getAudioStream()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/c;",
            ">;"
        }
    .end annotation

    .line 213
    const-class v0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;

    return-object v0
.end method

.method public getMax()I
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->i()I

    move-result v0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 168
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getMin()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 1211
    iget v0, v0, Lcom/android/settings/widget/SeekBarPreference;->k:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x7f080878

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "remote_volume"

    return-object v0
.end method

.method public getSliderPosition()I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->k()I

    move-result v0

    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 144
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public isSliceable()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/q/b;

    invoke-virtual {v0}, Lcom/android/settingslib/q/b;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/q/b;

    invoke-virtual {v0}, Lcom/android/settingslib/q/b;->a()V

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f(I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 156
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
