.class public Lcom/android/settings/notification/DefaultNotificationTonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "DefaultNotificationTonePreference.java"


# instance fields
.field private i:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->a(Landroid/content/Intent;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->i:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method
