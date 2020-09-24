.class public Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleMessagesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030125

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->c:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 81
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method private a(Landroidx/preference/Preference;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    check-cast p1, Landroidx/preference/ListPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/w;->b(Landroid/service/notification/ZenPolicy;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    .line 72
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    .line 71
    invoke-static {v0}, Lcom/android/settings/notification/w;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->c:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->a(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;)I

    move-result p2

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x642

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x643

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xa9

    .line 53
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    new-instance v1, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 58
    invoke-virtual {v1, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    .line 57
    invoke-virtual {v0, p2}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 60
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->a(Landroidx/preference/Preference;)V

    return v4
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->a(Landroidx/preference/Preference;)V

    return-void
.end method
