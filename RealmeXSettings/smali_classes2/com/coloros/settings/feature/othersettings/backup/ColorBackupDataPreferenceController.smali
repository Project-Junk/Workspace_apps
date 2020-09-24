.class public Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorBackupDataPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;
    }
.end annotation


# static fields
.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final KEY_BACKUP_DATA:Ljava/lang/String; = "backup_data"


# instance fields
.field private mBackup:Landroidx/preference/TwoStatePreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mEnabled:Z

.field private mIsServiceActive:Z

.field private mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/backup/IBackupManager;ZLandroidx/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;)V
    .locals 1

    const-string v0, "backup_data"

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 60
    iput-boolean p3, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mIsServiceActive:Z

    .line 61
    iput-object p5, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;

    if-eqz p4, :cond_0

    .line 63
    invoke-virtual {p4, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isOwner()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mEnabled:Z

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackup:Landroidx/preference/TwoStatePreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;->b(Z)V

    :cond_0
    return-void

    .line 166
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackup:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;

    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;->b(Z)V

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;

    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;->a(Z)V

    :cond_2
    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 3

    const/4 v0, 0x2

    .line 121
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mDialogType:I

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202b9

    .line 125
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 126
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 127
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method private updateConfigureSummary()V
    .locals 2

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v0}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mRefreshListener:Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;

    invoke-interface {v1, v0}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "backup_data"

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackup:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mIsServiceActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 134
    iget p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mDialogType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 137
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->setBackupEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 140
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->setBackupEnabled(Z)V

    .line 142
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->updateConfigureSummary()V

    goto :goto_1

    :cond_2
    if-ne v2, p2, :cond_3

    .line 147
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mBackup:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    :cond_3
    :goto_1
    iput v1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mDialogType:I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mDialogType:I

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    if-nez p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->showEraseBackupDialog()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 110
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->setBackupEnabled(Z)V

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
