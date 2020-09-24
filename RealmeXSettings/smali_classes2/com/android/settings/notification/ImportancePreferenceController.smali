.class public Lcom/android/settings/notification/ImportancePreferenceController;
.super Lcom/android/settings/notification/l;
.source "ImportancePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private j:Lcom/android/settings/notification/NotificationSettingsBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "importance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 76
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    .line 83
    invoke-static {p2}, Lcom/android/settings/notification/SoundPreferenceController;->a(Landroid/app/NotificationChannel;)Z

    move-result p2

    if-nez p2, :cond_0

    if-lt p1, v0, :cond_0

    .line 85
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    .line 86
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 87
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->a()V

    .line 93
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$a;->a()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->c:Lcom/android/settingslib/g$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 64
    check-cast p1, Lcom/android/settings/notification/ImportancePreference;

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 1092
    iput-boolean v0, p1, Lcom/android/settings/notification/ImportancePreference;->a:Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    .line 2088
    iput v0, p1, Lcom/android/settings/notification/ImportancePreference;->b:I

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/k;->b(Ljava/lang/String;)Z

    move-result v0

    .line 2096
    iput-boolean v0, p1, Lcom/android/settings/notification/ImportancePreference;->c:Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_show_silent_notifications"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 2100
    :cond_1
    iput-boolean v1, p1, Lcom/android/settings/notification/ImportancePreference;->d:Z

    :cond_2
    return-void
.end method
