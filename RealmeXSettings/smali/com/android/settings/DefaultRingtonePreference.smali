.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2108
    iget v1, p0, Lcom/android/settings/RingtonePreference;->a:I

    .line 56
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->a(Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1108
    iget v1, p0, Lcom/android/settings/RingtonePreference;->a:I

    .line 48
    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method
