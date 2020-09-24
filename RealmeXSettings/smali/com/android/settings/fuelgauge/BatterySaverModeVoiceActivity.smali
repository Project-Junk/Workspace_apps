.class public Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;
.super Lcom/android/settings/utils/f;
.source "BatterySaverModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/utils/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "android.settings.extra.battery_saver_mode_enabled"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "BatterySaverModeVoiceActivity"

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 37
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;ZZ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "Unable to set power mode"

    .line 42
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p1

    new-instance v1, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    invoke-direct {v1, v0, v0}, Landroid/app/VoiceInteractor$AbortVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0

    :cond_1
    const-string p1, "Missing battery saver mode extra"

    .line 46
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method
