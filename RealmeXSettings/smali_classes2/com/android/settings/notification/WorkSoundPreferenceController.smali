.class public Lcom/android/settings/notification/WorkSoundPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WorkSoundPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Landroid/os/UserManager;

.field protected final c:Lcom/android/settings/notification/c;

.field protected d:Landroidx/preference/PreferenceGroup;

.field protected e:I

.field protected final f:Landroid/content/BroadcastReceiver;

.field private final g:Lcom/android/settings/notification/SoundSettings;

.field private h:Landroidx/preference/TwoStatePreference;

.field private i:Landroidx/preference/Preference;

.field private j:Landroidx/preference/Preference;

.field private k:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/android/settings/notification/c;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/WorkSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->f:Landroid/content/BroadcastReceiver;

    .line 91
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->b:Landroid/os/UserManager;

    .line 92
    iget-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->a:Z

    .line 93
    iput-object p2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->g:Lcom/android/settings/notification/SoundSettings;

    .line 94
    iput-object p4, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->c:Lcom/android/settings/notification/c;

    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 0

    .line 197
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/settings/DefaultRingtonePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget p2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    invoke-virtual {p1, p2}, Lcom/android/settings/DefaultRingtonePreference;->a(I)V

    return-object p1
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->b:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 3052
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 184
    invoke-static {p1, p2, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f120d24

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 221
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->g:Lcom/android/settings/notification/SoundSettings;

    invoke-static {p1}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->a(Lcom/android/settings/notification/SoundSettings;)V

    const/4 p1, 0x0

    return p1

    .line 4272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/media/RingtoneManager;->disableSyncFromParent(Landroid/content/Context;)V

    .line 4273
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->e()V

    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->isAvailable()Z

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    if-nez v0, :cond_1

    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->h:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v1, "work_use_personal_sounds"

    .line 219
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->h:Landroidx/preference/TwoStatePreference;

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->h:Landroidx/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$V37evWUBPH366Da3sL7S2G2Gng4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$V37evWUBPH366Da3sL7S2G2Gng4;-><init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v1, "work_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    if-nez v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v1, "work_notification_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    if-nez v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v1, "work_alarm_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    .line 242
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    .line 243
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a()Landroid/content/Context;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    const-string v3, "sync_parent_sounds"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 250
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->d()V

    return-void

    .line 252
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->h:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    const v1, 0x7f121aa4

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a()Landroid/content/Context;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 291
    invoke-direct {p0, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    const/4 v2, 0x2

    .line 294
    invoke-direct {p0, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    const/4 v2, 0x4

    .line 296
    invoke-direct {p0, v0, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 295
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$V37evWUBPH366Da3sL7S2G2Gng4(Lcom/android/settings/notification/WorkSoundPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a()Landroid/content/Context;
    .locals 2

    .line 189
    iget v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->c:Lcom/android/settings/notification/c;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/c;->a(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 300
    iget v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 301
    iput p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    .line 302
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->enableSyncFromParent(Landroid/content/Context;)V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->d()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 307
    iget v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    if-ne v0, p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->b:Landroid/os/UserManager;

    .line 4048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    .line 308
    iput p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    .line 309
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->c()V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "sound_work_settings_section"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sound_work_settings_section"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->b:Landroid/os/UserManager;

    .line 2048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->c:Lcom/android/settings/notification/c;

    .line 3044
    iget-object v0, v0, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "work_ringtone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "work_notification_ringtone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "work_alarm_ringtone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->b:Landroid/os/UserManager;

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v0

    .line 113
    iput v0, p0, Lcom/android/settings/notification/WorkSoundPreferenceController;->e:I

    .line 114
    invoke-direct {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->c()V

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sound_work_settings_section"

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "work_use_personal_sounds"

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "work_notification_ringtone"

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "work_ringtone"

    .line 169
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "work_alarm_ringtone"

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
