.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/RingtoneSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    return-void
.end method
