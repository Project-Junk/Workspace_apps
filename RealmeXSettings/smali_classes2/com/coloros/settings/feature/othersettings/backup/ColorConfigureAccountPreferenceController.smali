.class public Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorConfigureAccountPreferenceController.java"


# static fields
.field private static final KEY_CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final TAG:Ljava/lang/String; = "ColorConfigureAccountPreferenceController"


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroidx/preference/PreferenceScreen;

.field private mEnabled:Z

.field private mIsServiceActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/backup/IBackupManager;Z)V
    .locals 1

    const-string v0, "configure_account"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 45
    iput-boolean p3, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mIsServiceActive:Z

    .line 46
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isOwner()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mEnabled:Z

    return-void
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "validatedActivityIntent Backup "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " intent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " fails to resolve; ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorConfigureAccountPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "configure_account"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mConfigure:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mIsServiceActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public setConfigureEnable(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mConfigure:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method public setConfigureSummary(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mConfigure:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mConfigure:Landroidx/preference/PreferenceScreen;

    const v0, 0x7f1202b5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setSummary(I)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 62
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 72
    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "config"

    .line 71
    invoke-direct {p0, v3, v4}, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :try_start_2
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, v2}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-object v3, p1

    goto :goto_0

    :catch_1
    move-object v3, p1

    move v1, v0

    :catch_2
    :goto_0
    if-nez v3, :cond_1

    .line 78
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.backuptransport"

    const-string v4, "com.google.android.backup.SetBackupAccountActivity"

    .line 79
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mConfigure:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->mConfigure:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->setConfigureSummary(Ljava/lang/String;)V

    return-void
.end method
