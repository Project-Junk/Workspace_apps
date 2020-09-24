.class public Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "DisableAutomaticUpdatesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ota_disable_automatic_update"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ota_disable_automatic_update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 55
    iget-object p2, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const-string v1, "ota_disable_automatic_update"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 63
    iget-object p1, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ota_disable_automatic_update"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 66
    iget-object v1, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
