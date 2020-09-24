.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;
.super Ljava/lang/Object;
.source "MusicFilePickerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 644
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    :goto_0
    return-void

    .line 635
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 636
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$4;->a:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->j(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPlayer stop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicFilePickerActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
