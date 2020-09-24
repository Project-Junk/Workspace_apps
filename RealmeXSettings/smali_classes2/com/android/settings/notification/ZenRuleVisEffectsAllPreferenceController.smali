.class public Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsAllPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 4

    .line 47
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x643

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x574

    .line 47
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->b:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 50
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public static synthetic lambda$6QZUm5b2Rx1KbJ-8XC9e9LU3FzA(Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 46
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsAllPreferenceController$6QZUm5b2Rx1KbJ-8XC9e9LU3FzA;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsAllPreferenceController$6QZUm5b2Rx1KbJ-8XC9e9LU3FzA;-><init>(Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
