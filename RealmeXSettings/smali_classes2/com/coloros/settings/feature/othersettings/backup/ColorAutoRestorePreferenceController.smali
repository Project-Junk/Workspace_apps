.class public Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorAutoRestorePreferenceController.java"


# static fields
.field private static final KEY_AUTO_RESTORE:Ljava/lang/String; = "auto_restore"


# instance fields
.field private mAutoRestore:Landroidx/preference/TwoStatePreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mEnabled:Z

.field private mIsServiceActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/backup/IBackupManager;Z)V
    .locals 1

    const-string v0, "auto_restore"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 41
    iput-boolean p3, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mIsServiceActive:Z

    .line 42
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isOwner()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "auto_restore"

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mAutoRestore:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mIsServiceActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v1

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mAutoRestore:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    const/4 v2, 0x1

    const-string v3, "backup_auto_restore"

    .line 67
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setAutoRestoreEnable(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mAutoRestore:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    const/4 v0, 0x1

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mAutoRestore:Landroidx/preference/TwoStatePreference;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
