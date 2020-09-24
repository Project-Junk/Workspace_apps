.class public Lcom/android/settings/accounts/ContactSearchPreferenceController;
.super Lcom/android/settings/core/a;
.source "ContactSearchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mManagedUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isChecked()Z
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    .line 68
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "managed_profile_contact_remote_search"

    .line 67
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private setChecked(Z)Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    .line 75
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "managed_profile_contact_remote_search"

    .line 74
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public getSliceType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ContactSearchPreferenceController;->setChecked(Z)Z

    move-result p1

    return p1
.end method

.method public setManagedUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 51
    instance-of v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/accounts/ContactSearchPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    .line 57
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 56
    invoke-static {v0, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_0
    return-void
.end method
