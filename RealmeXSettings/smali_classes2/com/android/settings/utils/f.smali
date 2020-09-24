.class public abstract Lcom/android/settings/utils/f;
.super Landroid/app/Activity;
.source "VoiceSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/f$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/utils/f$1;-><init>(Lcom/android/settings/utils/f;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/content/Intent;)Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/f;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->finish()V

    return-void

    :cond_0
    const-string p1, "VoiceSettingsActivity"

    const-string v0, "Cannot modify settings without voice interaction"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/utils/f;->finish()V

    :cond_1
    return-void
.end method
