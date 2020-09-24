.class public Lcom/android/settings/homepage/TopLevelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TopLevelSettings.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$1;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TopLevelSettings"

    return-object v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15012a

    return v0
.end method

.method public final j()Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000e

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    const-class p1, Lcom/android/settings/support/SupportPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/support/SupportPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/support/SupportPreferenceController;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 2

    .line 94
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p2}, Lcom/android/settings/core/f;->a(Landroidx/preference/Preference;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 99
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p2

    instance-of v0, p1, Lcom/android/settingslib/core/instrumentation/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settingslib/core/instrumentation/b;

    .line 101
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 1063
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
