.class final Lcom/android/settings/notification/NotificationSoundPreference$1;
.super Landroid/os/AsyncTask;
.source "NotificationSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSoundPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/android/settings/notification/NotificationSoundPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSoundPreference;Landroid/net/Uri;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->b:Lcom/android/settings/notification/NotificationSoundPreference;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2065
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->a:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 2066
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->b:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.android.internal.R.string.ringtone_silent"

    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2067
    :cond_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2068
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->b:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120ef2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2069
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2070
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->b:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120efe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2072
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->b:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 62
    check-cast p1, Ljava/lang/CharSequence;

    .line 1079
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->b:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/NotificationSoundPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
