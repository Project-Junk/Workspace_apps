.class public Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsCustomPreferenceController.java"

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
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->d()V

    return-void
.end method

.method private synthetic b(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x643

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x576

    .line 68
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 70
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v1, 0x649

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public static synthetic lambda$MlmAUUey9hCtTchUvDvO3shaEQY(Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->b(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public static synthetic lambda$i25uh30r0DbhM9OtqLvTnmtWF_Q(Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

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
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 46
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$MlmAUUey9hCtTchUvDvO3shaEQY;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$MlmAUUey9hCtTchUvDvO3shaEQY;-><init>(Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$i25uh30r0DbhM9OtqLvTnmtWF_Q;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$i25uh30r0DbhM9OtqLvTnmtWF_Q;-><init>(Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;)V

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
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldHideAllVisualEffects()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;->b:Landroid/app/AutomaticZenRule;

    .line 64
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method
