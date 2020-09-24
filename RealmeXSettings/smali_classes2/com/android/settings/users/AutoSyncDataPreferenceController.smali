.class public Lcom/android/settings/users/AutoSyncDataPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
    }
.end annotation


# instance fields
.field protected final a:Landroid/os/UserManager;

.field protected b:Landroid/os/UserHandle;

.field private final c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string v0, "user"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->a:Landroid/os/UserManager;

    .line 59
    iput-object p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->c:Landroidx/fragment/app/Fragment;

    .line 60
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_sync_account_data"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 74
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 75
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "AutoSyncDataController"

    const-string v0, "ignoring monkey\'s attempt to flip sync state"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->b:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->a(Landroidx/fragment/app/Fragment;ZLandroid/os/UserHandle;Landroidx/preference/TwoStatePreference;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->a:Landroid/os/UserManager;

    .line 90
    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->a:Landroid/os/UserManager;

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 65
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->b:Landroid/os/UserHandle;

    .line 67
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 66
    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
