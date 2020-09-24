.class public Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeRepeatCallersPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final a:Lcom/android/settings/notification/w;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string v0, "zen_mode_repeat_callers"

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 44
    iput p3, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->b:I

    .line 45
    invoke-static {p1}, Lcom/android/settings/notification/w;->a(Landroid/content/Context;)Lcom/android/settings/notification/w;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->a:Lcom/android/settings/notification/w;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_repeat_callers"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 1104
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->b:I

    .line 1105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f121b54

    .line 1104
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_repeat_callers"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 94
    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->j:Z

    if-eqz p2, :cond_0

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onPrefChange allowRepeatCallers="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PrefControllerMixin"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0xab

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 99
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->a:Lcom/android/settings/notification/w;

    const/16 v0, 0x10

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/w;->b(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->a:Lcom/android/settings/notification/w;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->a:Lcom/android/settings/notification/w;

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/notification/w;->c()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 82
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 84
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->a:Lcom/android/settings/notification/w;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 72
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 73
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
