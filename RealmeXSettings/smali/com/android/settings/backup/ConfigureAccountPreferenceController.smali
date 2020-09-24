.class public Lcom/android/settings/backup/ConfigureAccountPreferenceController;
.super Lcom/android/settings/core/a;
.source "ConfigureAccountPreferenceController.java"


# instance fields
.field private mPSCD:Lcom/android/settings/backup/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/android/settings/backup/c;->a()Lcom/android/settings/backup/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mContext:Landroid/content/Context;

    .line 1046
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "configure_account"

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

    .line 57
    iget-object v0, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 2073
    iget-object v0, v0, Lcom/android/settings/backup/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1202b5

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 1065
    iget-object v0, v0, Lcom/android/settings/backup/c;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/settings/backup/ConfigureAccountPreferenceController;->mPSCD:Lcom/android/settings/backup/c;

    .line 2049
    iget-boolean v1, v1, Lcom/android/settings/backup/c;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
