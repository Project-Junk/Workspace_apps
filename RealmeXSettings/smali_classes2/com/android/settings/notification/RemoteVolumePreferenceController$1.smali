.class final Lcom/android/settings/notification/RemoteVolumePreferenceController$1;
.super Ljava/lang/Object;
.source "RemoteVolumePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RemoteVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/RemoteVolumePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/session/MediaSession$Token;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v1, v1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p1, v0, v1, p2}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/media/session/MediaSession$Token;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->a:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->setSliderPosition(I)Z

    :cond_0
    return-void
.end method
