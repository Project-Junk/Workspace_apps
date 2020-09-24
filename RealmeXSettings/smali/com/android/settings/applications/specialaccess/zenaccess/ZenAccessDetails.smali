.class public Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ZenAccessDetails.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 82
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "dialog"

    const-string v0, "l"

    const-string v1, "p"

    if-eqz p2, :cond_1

    .line 84
    new-instance p2, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->i:Ljava/lang/String;

    .line 2043
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2044
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p2, v3}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_1
    new-instance p2, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->i:Ljava/lang/String;

    .line 3043
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3044
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p2, v3}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$rDeXwkSLAQ2sLQVElwgN7jVIisQ(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->a(Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 6

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->isSupported(Landroid/app/ActivityManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->i:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const-string/jumbo v1, "zen_access_switch"

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    .line 1072
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1073
    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getAutoApprovedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 1074
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->i:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1076
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    const v0, 0x7f121aba

    .line 1077
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1080
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1081
    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rDeXwkSLAQ2sLQVElwgN7jVIisQ;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessDetails$rDeXwkSLAQ2sLQVElwgN7jVIisQ;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->b()Z

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x69c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15014b

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$a;)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
