.class public Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleStarredContactsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private c:Landroidx/preference/Preference;

.field private final d:I

.field private final l:Landroid/content/pm/PackageManager;

.field private m:Landroid/content/Intent;

.field private n:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p4, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    iput p3, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->d:I

    .line 44
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->l:Landroid/content/pm/PackageManager;

    .line 46
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->m:Landroid/content/Intent;

    .line 48
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->n:Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->n:Landroid/content/Intent;

    const-string p2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

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

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->c:Landroidx/preference/Preference;

    .line 57
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->c:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v0}, Lcom/android/settings/notification/w;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 69
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1100
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->m:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->l:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->n:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->l:Landroid/content/pm/PackageManager;

    .line 1101
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 73
    :cond_2
    iget v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->d:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    if-ne v0, v3, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    if-ne v0, v3, :cond_5

    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->m:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->l:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->m:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;->n:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
