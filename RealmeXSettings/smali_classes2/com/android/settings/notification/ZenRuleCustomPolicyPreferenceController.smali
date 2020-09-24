.class public Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleCustomPolicyPreferenceController.java"


# instance fields
.field private c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->d()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->e()V

    return-void
.end method

.method private synthetic b(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->d()V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->j:Lcom/android/settings/notification/w;

    new-instance v2, Landroid/service/notification/ZenPolicy;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/w;->c(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 74
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v1, 0x645

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public static synthetic lambda$3g4VTuHX9yppgwPibqnh56nHmLM(Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public static synthetic lambda$x1fO3FxCRTZySn0xSZv7w4KV6jI(Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->b(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 44
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$x1fO3FxCRTZySn0xSZv7w4KV6jI;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$x1fO3FxCRTZySn0xSZv7w4KV6jI;-><init>(Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$3g4VTuHX9yppgwPibqnh56nHmLM;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$3g4VTuHX9yppgwPibqnh56nHmLM;-><init>(Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-nez p1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->c:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method
