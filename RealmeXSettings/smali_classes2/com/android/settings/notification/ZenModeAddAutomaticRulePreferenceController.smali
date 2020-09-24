.class public Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$a;
    }
.end annotation


# instance fields
.field private final l:Lcom/android/settings/utils/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_add_automatic_rule"

    .line 38
    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 39
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->l:Lcom/android/settings/utils/g;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_add_automatic_rule"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 57
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_add_automatic_rule"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->b:Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$a;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$a;-><init>(Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->l:Lcom/android/settings/utils/g;

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/ZenRuleSelectionDialog$b;Lcom/android/settings/utils/g;)V

    const/4 p1, 0x1

    return p1
.end method
