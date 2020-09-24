.class public Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "AllowBackgroundActivityStartsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "allow_background_activity_starts"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 2079
    iget-object v0, p0, Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_activity_starts_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1074
    iget-object p2, p0, Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "background_activity_starts_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "background_activity_starts_enabled"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string p1, "activity_manager"

    const-string v1, "default_background_activity_starts_enabled"

    .line 1086
    invoke-static {p1, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/AllowBackgroundActivityStartsPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
