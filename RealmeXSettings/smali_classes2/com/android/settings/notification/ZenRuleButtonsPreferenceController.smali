.class public Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;,
        Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;
    }
.end annotation


# instance fields
.field a:Landroid/app/AutomaticZenRule;

.field b:Ljava/lang/String;

.field private c:Landroidx/preference/PreferenceFragmentCompat;

.field private d:Lcom/android/settingslib/widget/ActionButtonsPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_action_buttons"

    .line 51
    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->c:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->c:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->a:Landroid/app/AutomaticZenRule;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zen_action_buttons"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f121b65

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const-string v0, "com.android.internal.R.drawable.ic_mode_edit"

    .line 66
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;-><init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)V

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f121b11

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f080823

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;-><init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->d:Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->a:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
