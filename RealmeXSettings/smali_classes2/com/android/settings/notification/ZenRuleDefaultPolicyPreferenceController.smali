.class public Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleDefaultPolicyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public static synthetic lambda$ayh-nEqWcPFXuUWxH3QSot21XoU(Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 45
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleDefaultPolicyPreferenceController$ayh-nEqWcPFXuUWxH3QSot21XoU;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleDefaultPolicyPreferenceController$ayh-nEqWcPFXuUWxH3QSot21XoU;-><init>(Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-nez p1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x646

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x643

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 57
    invoke-virtual {p1, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method
