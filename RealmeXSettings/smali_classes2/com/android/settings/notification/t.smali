.class abstract Lcom/android/settings/notification/t;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenCustomRuleSettingsBase.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/AutomaticZenRule;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/t;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method abstract c()Ljava/lang/String;
.end method

.method public d()V
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/t;->q:Lcom/android/settings/notification/w;

    iget-object v1, p0, Lcom/android/settings/notification/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/w;->d(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/t;->b:Landroid/app/AutomaticZenRule;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/t;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/t;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/settings/notification/t;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121b09

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/t;->b:Landroid/app/AutomaticZenRule;

    .line 74
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/t;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 79
    check-cast v2, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;

    .line 81
    iget-object v3, p0, Lcom/android/settings/notification/t;->b:Landroid/app/AutomaticZenRule;

    iget-object v4, p0, Lcom/android/settings/notification/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/t;->a(Lcom/android/settingslib/core/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/t;->d()V

    return-void
.end method

.method final f()Landroid/os/Bundle;
    .locals 3

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/settings/notification/t;->a:Ljava/lang/String;

    const-string v2, "RULE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a8c

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onAttach(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/notification/t;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "RULE_ID"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/t;->a:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/t;->q:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/t;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/w;->d(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/t;->b:Landroid/app/AutomaticZenRule;

    return-void

    :cond_0
    const-string p1, "ZenCustomRuleSettings"

    const-string v0, "Rule id required to set custom dnd rule config settings"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/t;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/t;->d()V

    return-void
.end method
