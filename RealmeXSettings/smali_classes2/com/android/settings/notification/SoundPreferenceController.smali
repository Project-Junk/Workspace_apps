.class public Lcom/android/settings/notification/SoundPreferenceController;
.super Lcom/android/settings/notification/l;
.source "SoundPreferenceController.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final j:Lcom/android/settings/SettingsPreferenceFragment;

.field private final k:Lcom/android/settings/notification/NotificationSettingsBase$a;

.field private l:Lcom/android/settings/notification/NotificationSoundPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p4}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/notification/SoundPreferenceController;->j:Lcom/android/settings/SettingsPreferenceFragment;

    .line 51
    iput-object p3, p0, Lcom/android/settings/notification/SoundPreferenceController;->k:Lcom/android/settings/notification/NotificationSettingsBase$a;

    return-void
.end method

.method protected static a(Landroid/app/NotificationChannel;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/notification/l;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/NotificationSoundPreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundPreferenceController;->l:Lcom/android/settings/notification/NotificationSoundPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ringtone"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 96
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->j:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_3

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/NotificationSoundPreference;

    .line 98
    iget-object v1, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v3, 0x4

    if-ne v3, v1, :cond_0

    .line 1118
    iput v3, v0, Lcom/android/settings/RingtonePreference;->a:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 101
    iget-object v3, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    .line 102
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2118
    iput v2, v0, Lcom/android/settings/RingtonePreference;->a:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 3118
    iput v1, v0, Lcom/android/settings/RingtonePreference;->a:I

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSoundPreference;->a(Landroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->j:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0xc8

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundPreferenceController;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/16 p2, 0xc8

    if-ne p2, p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/SoundPreferenceController;->l:Lcom/android/settings/notification/NotificationSoundPreference;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, p3}, Lcom/android/settings/notification/NotificationSoundPreference;->b(Landroid/content/Intent;)Z

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/SoundPreferenceController;->k:Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$a;->a()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    check-cast p2, Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundPreferenceController;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Lcom/android/settings/notification/NotificationSoundPreference;

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->c:Lcom/android/settingslib/g$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/SoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationSoundPreference;->b(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
