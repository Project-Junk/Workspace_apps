.class public Lcom/android/settings/users/AddUserWhenLockedPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AddUserWhenLockedPreferenceController.java"


# instance fields
.field private final mUserCaps:Lcom/android/settings/users/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/android/settings/users/f;->a(Landroid/content/Context;)Lcom/android/settings/users/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    const-string v0, "ADD_USER_WHEN_LOCKED"

    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lcom/coloros/settings/b/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    .line 2097
    iget-boolean v0, v0, Lcom/android/settings/users/f;->d:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1

    return v1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    .line 2101
    iget-boolean v0, v0, Lcom/android/settings/users/f;->h:Z

    if-nez v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    .line 2105
    iget-boolean v0, v0, Lcom/android/settings/users/f;->i:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "add_users_when_locked"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    iget-object v1, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/f;->b(Landroid/content/Context;)V

    .line 40
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 41
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setVisible(Z)V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    .line 1101
    iget-boolean v0, v0, Lcom/android/settings/users/f;->h:Z

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    .line 1109
    iget-object v0, v0, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->f:Z

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setVisible(Z)V

    :cond_2
    return-void
.end method
