.class public Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected c:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected d:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 47
    iput p4, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->c:I

    .line 48
    iput p5, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->l:I

    .line 49
    iput-object p6, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->d:[I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_intrusiveNotificationLed"

    .line 60
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 94
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->l:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x642

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 95
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x643

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 94
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 99
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->c:I

    xor-int/2addr p1, v4

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    .line 99
    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return v4
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 74
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->d:[I

    if-eqz v3, :cond_2

    .line 75
    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_3

    aget v7, v3, v5

    .line 76
    iget-object v8, p0, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->b:Landroid/app/AutomaticZenRule;

    invoke-virtual {v8}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    if-nez v7, :cond_1

    move v6, v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    :cond_3
    if-eqz v6, :cond_4

    .line 82
    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 84
    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Z)V

    return-void

    .line 86
    :cond_4
    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Z)V

    .line 87
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    :goto_1
    return-void
.end method
