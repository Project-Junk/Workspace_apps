.class public Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;
.super Lcom/android/settings/notification/t;
.source "ZenCustomRuleMessagesSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
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

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->c:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_mode_messages"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "zen_mode_starred_contacts_messages"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->c:Ljava/util/List;

    return-object p1
.end method

.method final c()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_settings_category_messages"

    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 66
    invoke-super {p0}, Lcom/android/settings/notification/t;->d()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    .line 68
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->b:Landroid/app/AutomaticZenRule;

    .line 70
    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f121b0e

    .line 69
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/android/settings/notification/t;->e()V

    return-void
.end method

.method public bridge synthetic getHelpResource()I
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/android/settings/notification/t;->getHelpResource()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64a

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150155

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/android/settings/notification/t;->onResume()V

    return-void
.end method
