.class public Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;
.super Lcom/android/settings/notification/WorkSoundPreferenceController;
.source "ColorWorkSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController$UnifyWorkDialogFragment;
    }
.end annotation


# instance fields
.field private g:Landroidx/preference/TwoStatePreference;

.field private h:Landroidx/preference/Preference;

.field private i:Landroidx/preference/Preference;

.field private j:Landroidx/preference/Preference;

.field private k:Landroidx/preference/Preference;

.field private l:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

.field private m:Landroid/content/Context;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    check-cast p2, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->l:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 128
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->l:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController$UnifyWorkDialogFragment;->a(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)V

    return p2

    .line 2154
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->disableSyncFromParent(Landroid/content/Context;)V

    .line 2155
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    const-string v1, "sync_parent_sounds"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2156
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d()V

    .line 2158
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->l:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->onResume()V

    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->g:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->h:Landroidx/preference/Preference;

    const v1, 0x7f121aa4

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->g:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->h:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$G_9pSF1T7odRbBzpnxetyg6NqVQ(Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/RingtoneManager;->enableSyncFromParent(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    const-string v2, "sync_parent_sounds"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 203
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->c()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v0, "work_ringtone_sim1"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->h:Landroidx/preference/Preference;

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v0, "work_ringtone_sim2"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v0, "work_notification_ringtone"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->j:Landroidx/preference/Preference;

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v0, "work_alarm_ringtone"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->k:Landroidx/preference/Preference;

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1193
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->b:Landroid/os/UserManager;

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result v0

    .line 70
    iput v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    const/4 v1, 0x0

    .line 1077
    iput-boolean v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    .line 1079
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    const-string v4, "work_ringtone"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1080
    iput-boolean v3, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    .line 1081
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "ringtone"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1082
    iget-object v5, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1083
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    invoke-static {v5, v4, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1085
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    const-string v5, "work_ringtone_sim2"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1086
    iput-boolean v3, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    .line 1087
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ringtone_sim2"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1088
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1089
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v6, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1091
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    const-string v5, "work_notification_sound"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1092
    iput-boolean v3, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    .line 1093
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "notification_sound"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1095
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v6, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1097
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    const-string v5, "work_alarm_alert"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1098
    iput-boolean v3, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    .line 1099
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "alarm_alert"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1100
    iget-object v4, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1101
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v6, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1103
    :cond_3
    iget-boolean v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    const-string v4, "sync_parent_sounds"

    if-eqz v2, :cond_4

    .line 1105
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1106
    iput-boolean v1, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    .line 1125
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->g:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_5

    .line 1126
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d:Landroidx/preference/PreferenceGroup;

    const-string v2, "work_use_personal_sounds"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->g:Landroidx/preference/TwoStatePreference;

    .line 1127
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->g:Landroidx/preference/TwoStatePreference;

    new-instance v2, Lcom/coloros/settings/feature/sound/controller/-$$Lambda$ColorWorkSoundPreferenceController$G_9pSF1T7odRbBzpnxetyg6NqVQ;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/sound/controller/-$$Lambda$ColorWorkSoundPreferenceController$G_9pSF1T7odRbBzpnxetyg6NqVQ;-><init>(Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;)V

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1138
    :cond_5
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->a:Z

    if-nez v0, :cond_6

    .line 1139
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->h:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, 0x0

    .line 1140
    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->h:Landroidx/preference/Preference;

    .line 1141
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1142
    iput-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->i:Landroidx/preference/Preference;

    .line 1145
    :cond_6
    iget-boolean v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->n:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->e:I

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1147
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->c()V

    return-void

    .line 1149
    :cond_7
    invoke-direct {p0}, Lcom/coloros/settings/feature/sound/controller/ColorWorkSoundPreferenceController;->d()V

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

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    const-string v0, "work_ringtone_sim1"

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "work_ringtone_sim2"

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
