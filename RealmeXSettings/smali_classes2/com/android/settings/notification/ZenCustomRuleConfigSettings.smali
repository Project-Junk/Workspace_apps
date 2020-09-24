.class public Lcom/android/settings/notification/ZenCustomRuleConfigSettings;
.super Lcom/android/settings/notification/t;
.source "ZenCustomRuleConfigSettings.java"


# instance fields
.field private d:Landroidx/preference/Preference;

.field private e:Landroidx/preference/Preference;

.field private f:Landroidx/preference/Preference;

.field private g:Lcom/android/settings/notification/ZenModeSettings$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/t;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->b:Landroid/app/AutomaticZenRule;

    .line 112
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/android/settings/notification/w;->d(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->d:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g:Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->e:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g:Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeSettings$a;->b(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->f:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g:Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeSettings$a;->c(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_alarms"

    const/4 v5, 0x5

    const/16 v6, 0x4ca

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 132
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_media"

    const/4 v5, 0x6

    const/16 v6, 0x4cb

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 135
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_system"

    const/4 v5, 0x7

    const/16 v6, 0x53c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 138
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_reminders"

    const/4 v5, 0x0

    const/16 v6, 0xa7

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 141
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_events"

    const/4 v5, 0x1

    const/16 v6, 0xa8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 144
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->c:Ljava/util/List;

    return-object p1
.end method

.method final c()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_custom_rule_configuration_category"

    return-object v0
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/android/settings/notification/t;->d()V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/android/settings/notification/t;->e()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g()V

    return-void
.end method

.method public bridge synthetic getHelpResource()I
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/android/settings/notification/t;->getHelpResource()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x645

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150152

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Lcom/android/settings/notification/ZenModeSettings$a;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->k:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/notification/ZenModeSettings$a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g:Lcom/android/settings/notification/ZenModeSettings$a;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_rule_calls_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->d:Landroidx/preference/Preference;

    .line 56
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->d:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$1;-><init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_rule_messages_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->e:Landroidx/preference/Preference;

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->e:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$2;-><init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_rule_notifications"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->f:Landroidx/preference/Preference;

    .line 84
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->f:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;-><init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/android/settings/notification/t;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->g()V

    return-void
.end method
