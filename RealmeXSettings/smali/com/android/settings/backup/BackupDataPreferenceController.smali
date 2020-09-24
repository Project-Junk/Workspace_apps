.class public Lcom/android/settings/backup/BackupDataPreferenceController;
.super Lcom/android/settings/core/a;
.source "BackupDataPreferenceController.java"


# instance fields
.field private mPSCD:Lcom/android/settings/backup/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/android/settings/backup/c;->a()Lcom/android/settings/backup/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mContext:Landroid/content/Context;

    .line 1046
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "backup_data"

    invoke-static {v0, v1}, Lcom/android/settings/backup/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 2057
    iget-boolean v0, v0, Lcom/android/settings/backup/c;->b:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 3049
    iget-boolean v0, v0, Lcom/android/settings/backup/c;->a:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120061

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120060

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/backup/BackupDataPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 1057
    iget-boolean v0, v0, Lcom/android/settings/backup/c;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
