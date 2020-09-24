.class public final Lcom/coloros/settings/ringtone/vibrate/a;
.super Ljava/lang/Object;
.source "VibrateHelper.java"


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Lcom/oppo/os/LinearmotorVibrator;

.field private e:Lcom/oppo/os/WaveformEffect;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/ringtone/vibrate/a;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->a:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->f:Z

    .line 42
    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->b:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->c:Landroid/content/ContentResolver;

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->b:Landroid/content/Context;

    const-string v0, "linearmotor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/os/LinearmotorVibrator;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->d:Lcom/oppo/os/LinearmotorVibrator;

    .line 46
    iput-boolean p2, p0, Lcom/coloros/settings/ringtone/vibrate/a;->f:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f120949

    goto :goto_0

    :pswitch_0
    const p0, 0x7f120948

    goto :goto_0

    :pswitch_1
    const p0, 0x7f120947

    goto :goto_0

    :pswitch_2
    const p0, 0x7f120946

    goto :goto_0

    :pswitch_3
    const p0, 0x7f120945

    goto :goto_0

    :pswitch_4
    const p0, 0x7f120944

    goto :goto_0

    :cond_0
    const p0, 0x7f120942

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_0
    new-instance v0, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    .line 68
    invoke-virtual {v0, p2}, Lcom/oppo/os/WaveformEffect$Builder;->setRingtoneVibrateType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p2

    .line 69
    invoke-virtual {p2, p3}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectLoop(Z)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 70
    invoke-virtual {p2, p3}, Lcom/oppo/os/WaveformEffect$Builder;->setIsRingtoneCustomized(Z)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p2

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 73
    invoke-virtual {p2, p1}, Lcom/oppo/os/WaveformEffect$Builder;->setRingtoneFilePath(Ljava/lang/String;)Lcom/oppo/os/WaveformEffect$Builder;

    .line 75
    :cond_1
    invoke-virtual {p2}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->e:Lcom/oppo/os/WaveformEffect;

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->d:Lcom/oppo/os/LinearmotorVibrator;

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->d:Lcom/oppo/os/LinearmotorVibrator;

    iget-object p2, p0, Lcom/coloros/settings/ringtone/vibrate/a;->e:Lcom/oppo/os/WaveformEffect;

    invoke-virtual {p1, p2}, Lcom/oppo/os/LinearmotorVibrator;->vibrate(Lcom/oppo/os/WaveformEffect;)V

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error occur, e = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibrateHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private c()Z
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->c:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/a;->d()Z

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/vibrate/a;->b()Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private d()Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->c:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/settings/ringtone/vibrate/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->d:Lcom/oppo/os/LinearmotorVibrator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->e:Lcom/oppo/os/WaveformEffect;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->d:Lcom/oppo/os/LinearmotorVibrator;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/vibrate/a;->e:Lcom/oppo/os/WaveformEffect;

    invoke-virtual {v0, v1}, Lcom/oppo/os/LinearmotorVibrator;->cancelVibrate(Lcom/oppo/os/WaveformEffect;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Landroid/net/Uri;IZ)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/ringtone/vibrate/a;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final b()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/ringtone/vibrate/a;->c:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "vibrate_when_silent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method
