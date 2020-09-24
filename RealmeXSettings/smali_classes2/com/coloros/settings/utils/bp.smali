.class public final Lcom/coloros/settings/utils/bp;
.super Ljava/lang/Object;
.source "VibratorUtils.java"


# direct methods
.method public static a(Landroid/content/Context;II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "linearmotor"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/LinearmotorVibrator;

    .line 32
    new-instance v0, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/oppo/os/WaveformEffect$Builder;->setStrengthSettingEnabled(Z)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectStrength(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Lcom/oppo/os/WaveformEffect$Builder;->setAsynchronous(Z)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/oppo/os/LinearmotorVibrator;->vibrate(Lcom/oppo/os/WaveformEffect;)V

    return-void
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "linearmotor"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/LinearmotorVibrator;

    .line 47
    new-instance v0, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/oppo/os/WaveformEffect$Builder;->setStrengthSettingEnabled(Z)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectStrength(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p1, p2}, Lcom/oppo/os/WaveformEffect$Builder;->setAsynchronous(Z)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/oppo/os/LinearmotorVibrator;->cancelVibrate(Lcom/oppo/os/WaveformEffect;)V

    return-void
.end method
