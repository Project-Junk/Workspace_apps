.class public Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleNotifFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldHideAllVisualEffects()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    .line 42
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121b5d

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldHideAllVisualEffects()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f121b5a

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
