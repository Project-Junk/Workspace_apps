.class public Lcom/android/settings/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field protected a:Lcom/android/settings/widget/SwitchBar;

.field protected b:Lcom/android/settings/widget/ToggleSwitch;

.field private c:Landroid/app/backup/IBackupManager;

.field private d:Landroidx/preference/Preference;

.field private e:Landroid/app/Dialog;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 3

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_full_data_backup_aware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a2b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 1184
    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->f:Z

    .line 1187
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202bc

    .line 1188
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 1189
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 1190
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1191
    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->e:Landroid/app/Dialog;

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->c:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ToggleBackupSettingFragment"

    const-string v1, "Error communicating with BackupManager"

    .line 210
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->b:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v0, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->a()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 152
    iput-boolean p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->f:Z

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a(Z)V

    .line 154
    iget-object p2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 157
    iput-boolean p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->f:Z

    const/4 p1, 0x1

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a(Z)V

    .line 159
    iget-object p2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "backup"

    .line 58
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->c:Landroid/app/backup/IBackupManager;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 63
    new-instance v0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->d:Landroidx/preference/Preference;

    .line 71
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->d:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->d:Landroidx/preference/Preference;

    const v1, 0x7f0d036b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->b:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 165
    iget-boolean p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->e:Landroid/app/Dialog;

    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 81
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    .line 82
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->b:Lcom/android/settings/widget/ToggleSwitch;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "user_full_data_backup_aware"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->d:Landroidx/preference/Preference;

    const v0, 0x7f120a2a

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->d:Landroidx/preference/Preference;

    const v0, 0x7f1202b8

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 94
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->c:Landroid/app/backup/IBackupManager;

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->c:Landroid/app/backup/IBackupManager;

    .line 95
    invoke-interface {p1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result p1

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 99
    :catch_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 101
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1202b9

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
