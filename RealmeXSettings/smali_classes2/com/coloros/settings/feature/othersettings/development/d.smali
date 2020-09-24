.class public final Lcom/coloros/settings/feature/othersettings/development/d;
.super Lcom/android/settings/development/r;
.source "ColorSelectDebugAppPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/r;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/Intent;
    .locals 3

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/d;->mContext:Landroid/content/Context;

    const-class v2, Lcom/coloros/settings/feature/othersettings/development/ColorAppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    instance-of v0, v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/d;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug_app"

    .line 64
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120725

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120724

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 73
    :cond_1
    invoke-super {p0}, Lcom/android/settings/development/r;->c()V

    return-void
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "debug_app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/d;->b()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/d;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final m_()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    instance-of v0, v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120724

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/d;->d:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/android/settings/development/r;->m_()V

    return-void
.end method
