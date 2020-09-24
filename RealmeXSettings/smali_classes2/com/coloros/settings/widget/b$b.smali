.class public final Lcom/coloros/settings/widget/b$b;
.super Lcom/android/sdk/a$d;
.source "SettingsSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/settings/widget/b;


# direct methods
.method protected constructor <init>(Lcom/coloros/settings/widget/b;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-direct {p0, p1}, Lcom/android/sdk/a$d;-><init>(Lcom/android/sdk/a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/IntentFilter;
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/android/sdk/a$d;->a()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.soundsettings.window.foucuson"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(II)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->s(Lcom/coloros/settings/widget/b;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->c(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    .line 373
    invoke-static {v0}, Lcom/coloros/settings/widget/b;->t(Lcom/coloros/settings/widget/b;)I

    move-result v0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->i(Lcom/coloros/settings/widget/b;)Lcom/coloros/settings/widget/SettingsSeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    .line 375
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->v(Lcom/coloros/settings/widget/b;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->u(Lcom/coloros/settings/widget/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 377
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->w(Lcom/coloros/settings/widget/b;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 378
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->y(Lcom/coloros/settings/widget/b;)Lcom/android/sdk/a$b;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->x(Lcom/coloros/settings/widget/b;)I

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/sdk/a$b;->a(IIZ)V

    :cond_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 352
    invoke-super {p0, p1, p2}, Lcom/android/sdk/a$d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action.soundsettings.window.foucuson"

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 364
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 365
    iget-object p2, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p2}, Lcom/coloros/settings/widget/b;->r(Lcom/coloros/settings/widget/b;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/widget/b$b;->a(II)V

    goto :goto_1

    .line 357
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->o(Lcom/coloros/settings/widget/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 358
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->p(Lcom/coloros/settings/widget/b;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/b;->c(Lcom/coloros/settings/widget/b;I)I

    .line 360
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->q(Lcom/coloros/settings/widget/b;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 361
    iget-object p1, p0, Lcom/coloros/settings/widget/b$b;->b:Lcom/coloros/settings/widget/b;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/b;->i()V

    :cond_3
    :goto_1
    return-void
.end method
