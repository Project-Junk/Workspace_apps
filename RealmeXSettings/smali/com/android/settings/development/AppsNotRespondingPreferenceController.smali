.class public Lcom/android/settings/development/AppsNotRespondingPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "AppsNotRespondingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "show_all_anrs"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .line 65
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/AppsNotRespondingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "anr_show_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/development/AppsNotRespondingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 49
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/android/settings/development/AppsNotRespondingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "anr_show_background"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/android/settings/development/AppsNotRespondingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "anr_show_background"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 60
    iget-object v1, p0, Lcom/android/settings/development/AppsNotRespondingPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method