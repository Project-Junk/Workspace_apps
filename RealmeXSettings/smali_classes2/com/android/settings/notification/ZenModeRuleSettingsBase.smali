.class public abstract Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# static fields
.field protected static final a:Z


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Z

.field protected d:Landroid/app/AutomaticZenRule;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

.field protected g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

.field protected h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

.field protected i:Landroidx/preference/Preference;

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->j:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    const-string v0, "zen_custom_setting"

    .line 40
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->r:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    .line 1080
    iput-object v2, v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->l:Landroid/app/AutomaticZenRule;

    .line 1081
    iput-object v3, v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->m:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a(Lcom/android/settingslib/core/a;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    .line 1112
    iput-object v2, v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    .line 1113
    iput-object v3, v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a(Lcom/android/settingslib/core/a;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    .line 1122
    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->a:Landroid/app/AutomaticZenRule;

    .line 1123
    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->b:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a(Lcom/android/settingslib/core/a;)V

    return-void
.end method

.method private g()Z
    .locals 2

    .line 148
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->n()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    .line 149
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRule="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->h()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->b:Landroid/content/Context;

    const v1, 0x7f121b68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private n()Landroid/app/AutomaticZenRule;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->c:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->f()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->i:Landroidx/preference/Preference;

    const v1, 0x7f121b0b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->i:Landroidx/preference/Preference;

    const v1, 0x7f121b0a

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->q:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->d:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method protected abstract a(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected final e()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->e()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->o()V

    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a8c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->b:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 62
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a:Z

    const-string v1, "ZenModeSettings"

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onCreate getIntent()="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "No intent"

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->h()V

    return-void

    :cond_1
    const-string v0, "android.service.notification.extra.RULE_ID"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "rule id is null"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->h()V

    return-void

    .line 76
    :cond_2
    sget-boolean p1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_custom_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->i:Landroidx/preference/Preference;

    .line 82
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->i:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->c()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->o()V

    :cond_1
    return-void
.end method
