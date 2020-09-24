.class final Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;
.super Ljava/lang/Object;
.source "VibrateSettingFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;->a:Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;->a:Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 359
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;->a:Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;->a:Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment$1;->a:Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;->a(Lcom/coloros/settings/ringtone/vibrate/VibrateSettingFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_2
    :goto_0
    return-void
.end method
