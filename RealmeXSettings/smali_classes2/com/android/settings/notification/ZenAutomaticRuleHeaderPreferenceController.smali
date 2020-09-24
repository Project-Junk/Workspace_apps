.class public Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:Landroid/app/AutomaticZenRule;

.field b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroidx/preference/PreferenceFragmentCompat;

.field private l:Lcom/android/settings/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "pref_app_header"

    .line 50
    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 42
    iput-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->c:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    .line 95
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f080869

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0806d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "PrefControllerMixin"

    const-string v1, "Unable to load icon - PackageManager.NameNotFoundException"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_app_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_2

    .line 70
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 72
    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->l:Lcom/android/settings/widget/b;

    const v2, 0x7f0a0260

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 75
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->l:Lcom/android/settings/widget/b;

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->l:Lcom/android/settings/widget/b;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    .line 79
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1163
    iput-object v0, p1, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->a:Landroid/app/AutomaticZenRule;

    .line 80
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1209
    iput-object v0, p1, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1214
    iput v0, p1, Lcom/android/settings/widget/b;->f:I

    const/4 v0, 0x0

    .line 2197
    iput-boolean v0, p1, Lcom/android/settings/widget/b;->g:Z

    const/4 v1, 0x2

    .line 83
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 85
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v3}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
