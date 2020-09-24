.class public Lcom/android/settings/backup/DataManagementPreferenceController;
.super Lcom/android/settings/core/a;
.source "DataManagementPreferenceController.java"


# instance fields
.field private mPSCD:Lcom/android/settings/backup/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/android/settings/backup/c;->a()Lcom/android/settings/backup/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/DataManagementPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/backup/DataManagementPreferenceController;->mContext:Landroid/content/Context;

    .line 1046
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/DataManagementPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 1081
    iget-object v0, v0, Lcom/android/settings/backup/c;->e:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/settings/backup/DataManagementPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 2049
    iget-boolean v0, v0, Lcom/android/settings/backup/c;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/backup/DataManagementPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/DataManagementPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 2081
    iget-object v0, v0, Lcom/android/settings/backup/c;->e:Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/backup/DataManagementPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 2089
    iget-object v0, v0, Lcom/android/settings/backup/c;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
