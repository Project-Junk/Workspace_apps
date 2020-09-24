.class public Lcom/android/settings/notification/NotificationSoundPreference;
.super Lcom/android/settings/RingtonePreference;
.source "NotificationSoundPreference.java"


# instance fields
.field private i:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference;->i:Landroid/net/Uri;

    const-string p1, "\u00a0"

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference;->i:Landroid/net/Uri;

    .line 1062
    new-instance v0, Lcom/android/settings/notification/NotificationSoundPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference$1;-><init>(Lcom/android/settings/notification/NotificationSoundPreference;Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 1082
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference;->b(Landroid/net/Uri;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
