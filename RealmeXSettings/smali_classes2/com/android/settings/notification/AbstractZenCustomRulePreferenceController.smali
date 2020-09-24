.class abstract Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "AbstractZenCustomRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/AutomaticZenRule;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method final a()Landroid/os/Bundle;
    .locals 3

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a:Ljava/lang/String;

    const-string v2, "RULE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->b:Landroid/app/AutomaticZenRule;

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->b:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/w;->d(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->b:Landroid/app/AutomaticZenRule;

    :cond_0
    return-void
.end method
