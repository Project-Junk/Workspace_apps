.class public final Lcom/android/settings/development/l;
.super Lcom/android/settingslib/development/b;
.source "LocalBackupPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/os/UserManager;

.field private final b:Landroid/app/backup/IBackupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/l;->a:Landroid/os/UserManager;

    const-string p1, "backup"

    .line 45
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/l;->b:Landroid/app/backup/IBackupManager;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "local_backup_password"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/android/settings/development/l;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/settings/development/l;->b:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1060
    iget-object v0, p0, Lcom/android/settings/development/l;->b:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2

    .line 1064
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120c00

    .line 1065
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_1
    const v0, 0x7f120c01

    .line 1067
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
