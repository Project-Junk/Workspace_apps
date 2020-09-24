.class public Lcom/android/settings/notification/ZenRulePreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenRulePreference.java"


# static fields
.field private static final k:Lcom/android/settings/utils/ManagedServiceSettings$a;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroidx/fragment/app/Fragment;

.field final c:Landroidx/preference/Preference;

.field final d:Landroid/content/Context;

.field final e:Lcom/android/settings/notification/w;

.field final f:Lcom/android/settings/utils/g;

.field final g:Landroid/content/pm/PackageManager;

.field final h:Lcom/android/settingslib/core/instrumentation/d;

.field i:Landroid/app/AutomaticZenRule;

.field j:Ljava/lang/CharSequence;

.field private l:Landroid/content/Intent;

.field private m:Z

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->c()Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenRulePreference;->k:Lcom/android/settings/utils/ManagedServiceSettings$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/instrumentation/d;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v0, Lcom/android/settings/notification/ZenRulePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRulePreference$2;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->o:Landroid/view/View$OnClickListener;

    const v0, 0x7f0d0257

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setLayoutResource(I)V

    .line 65
    invoke-static {p1}, Lcom/android/settings/notification/w;->a(Landroid/content/Context;)Lcom/android/settings/notification/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->e:Lcom/android/settings/notification/w;

    .line 66
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->d:Landroid/content/Context;

    .line 67
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    .line 68
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->j:Ljava/lang/CharSequence;

    .line 69
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->a:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/android/settings/notification/ZenRulePreference;->b:Landroidx/fragment/app/Fragment;

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->g:Landroid/content/pm/PackageManager;

    .line 72
    new-instance p1, Lcom/android/settings/utils/g;

    iget-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->d:Landroid/content/Context;

    sget-object p3, Lcom/android/settings/notification/ZenRulePreference;->k:Lcom/android/settings/utils/ManagedServiceSettings$a;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/utils/g;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$a;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->f:Lcom/android/settings/utils/g;

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->f:Lcom/android/settings/utils/g;

    invoke-virtual {p1}, Lcom/android/settings/utils/g;->a()V

    .line 74
    iput-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->c:Landroidx/preference/Preference;

    .line 75
    iput-object p4, p0, Lcom/android/settings/notification/ZenRulePreference;->h:Lcom/android/settingslib/core/instrumentation/d;

    .line 76
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenRulePreference;->m:Z

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->a(Landroid/app/AutomaticZenRule;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRulePreference;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenRulePreference;)Landroid/content/Intent;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->l:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenRulePreference;Z)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenRulePreference;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/settings/notification/ZenRulePreference;->m:Z

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->l:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const v0, 0x7f0d03c6

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Landroid/app/AutomaticZenRule;)V
    .locals 3

    .line 160
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    .line 159
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;Z)Z

    move-result v0

    .line 161
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v1

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->b(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setPersistent(Z)V

    if-eqz v0, :cond_0

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->f:Lcom/android/settings/utils/g;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/utils/g;->a(Landroid/content/ComponentName;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    .line 172
    invoke-static {p1, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p1

    .line 173
    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->l:Landroid/content/Intent;

    .line 175
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->l:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->l:Landroid/content/Intent;

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 142
    iput-boolean p1, p0, Lcom/android/settings/notification/ZenRulePreference;->m:Z

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->n:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method final b(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->d:Landroid/content/Context;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12163e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 182
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->d:Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12163c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 90
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0747

    .line 92
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/settings/notification/ZenRulePreference;->l:Landroid/content/Intent;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance v1, Lcom/android/settings/notification/ZenRulePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0a0139

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v0, "com.android.internal.R.id.checkbox"

    .line 112
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->n:Landroid/widget/CheckBox;

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->n:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRulePreference;->m:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->o:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
