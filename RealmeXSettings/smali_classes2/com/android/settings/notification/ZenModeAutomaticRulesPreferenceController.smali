.class public Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAutomaticRulesPreferenceController.java"


# instance fields
.field protected l:Landroidx/preference/PreferenceCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_automatic_rules"

    .line 43
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Lcom/android/settings/notification/ZenRulePreference;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)",
            "Lcom/android/settings/notification/ZenRulePreference;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRulePreference;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/d;)V

    return-object v0
.end method

.method private a([Ljava/util/Map$Entry;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 91
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->a(Ljava/util/Map$Entry;)Lcom/android/settings/notification/ZenRulePreference;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setPersistent(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_automatic_rules"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->a()[Ljava/util/Map$Entry;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 68
    array-length v1, p1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 69
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/ZenRulePreference;

    .line 74
    iget-object v2, v1, Lcom/android/settings/notification/ZenRulePreference;->a:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 1123
    iget-object v3, v1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1124
    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/notification/ZenRulePreference;->j:Ljava/lang/CharSequence;

    .line 1125
    iget-object v3, v1, Lcom/android/settings/notification/ZenRulePreference;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1128
    :cond_0
    iget-object v3, v1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1129
    iget-object v3, v1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenRulePreference;->a(Z)V

    .line 1130
    iget-object v3, v1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenRulePreference;->b(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1133
    :cond_1
    iput-object v2, v1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->a([Ljava/util/Map$Entry;)V

    :cond_3
    return-void

    .line 83
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->a([Ljava/util/Map$Entry;)V

    return-void
.end method
