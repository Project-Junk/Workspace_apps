.class public Lcom/android/settings/notification/ZenCustomRuleSettings;
.super Lcom/android/settings/notification/t;
.source "ZenCustomRuleSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/notification/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettings;->c:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_custom_rule_setting_default"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_custom_rule_setting"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleSettings;->c:Ljava/util/List;

    return-object p1
.end method

.method final c()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_custom_rule_category"

    return-object v0
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/android/settings/notification/t;->d()V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/android/settings/notification/t;->e()V

    return-void
.end method

.method public bridge synthetic getHelpResource()I
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/android/settings/notification/t;->getHelpResource()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x644

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150153

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/android/settings/notification/t;->onResume()V

    return-void
.end method
