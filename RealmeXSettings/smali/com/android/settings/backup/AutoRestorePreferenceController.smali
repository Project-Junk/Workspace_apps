.class public Lcom/android/settings/backup/AutoRestorePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoRestorePreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoRestorePrefCtrler"


# instance fields
.field private mPSCD:Lcom/android/settings/backup/c;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/android/settings/backup/c;->a()Lcom/android/settings/backup/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mContext:Landroid/content/Context;

    .line 1046
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "auto_restore"

    invoke-static {v0, v1}, Lcom/android/settings/backup/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "backup_auto_restore"

    .line 66
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 3

    const-string v0, "backup"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 79
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    iget-object v2, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/TwoStatePreference;

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "AutoRestorePrefCtrler"

    const-string v1, "Error can\'t set setAutoRestore"

    .line 83
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 58
    iput-object p1, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 59
    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 1049
    iget-boolean v0, v0, Lcom/android/settings/backup/c;->a:Z

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
