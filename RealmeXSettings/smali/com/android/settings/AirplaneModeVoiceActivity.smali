.class public Lcom/android/settings/AirplaneModeVoiceActivity;
.super Lcom/android/settings/utils/f;
.source "AirplaneModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/utils/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "airplane_mode_enabled"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connectivity"

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/settings/AirplaneModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "AirplaneModeVoiceActivity"

    const-string v0, "Missing airplane mode extra"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
