.class public Lcom/android/settings/notification/ZenCustomRuleCallsSettings;
.super Lcom/android/settings/notification/t;
.source "ZenCustomRuleCallsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->c:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleCallsPreferenceController;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_mode_calls"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/notification/ZenRuleCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleRepeatCallersPreferenceController;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.android.internal.R.integer.config_zen_repeat_callers_threshold"

    .line 63
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v4, "zen_mode_repeat_callers"

    invoke-direct {v1, p1, v4, v2, v3}, Lcom/android/settings/notification/ZenRuleRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "zen_mode_starred_contacts_callers"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->c:Ljava/util/List;

    return-object p1
.end method

.method final c()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_settings_category_calls"

    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 76
    invoke-super {p0}, Lcom/android/settings/notification/t;->d()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    .line 78
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/notification/ZenCustomRuleCallsSettings;->b:Landroid/app/AutomaticZenRule;

    .line 80
    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f121b0d

    .line 79
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/android/settings/notification/t;->e()V

    return-void
.end method

.method public bridge synthetic getHelpResource()I
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/android/settings/notification/t;->getHelpResource()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64b

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150151

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/android/settings/notification/t;->onResume()V

    return-void
.end method
