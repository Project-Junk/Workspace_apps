.class public Lcom/android/settings/system/SystemDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SystemDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/android/settings/system/SystemDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/system/SystemDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/system/SystemDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private a(Landroidx/preference/PreferenceGroup;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 93
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 94
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/system/SystemDashboardFragment;->a(Landroidx/preference/PreferenceGroup;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SystemDashboardFrag"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ac6

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e8

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150122

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/system/SystemDashboardFragment;->a(Landroidx/preference/PreferenceGroup;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getInitialExpandedChildrenCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 1062
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "show_aware_dialog_disabled"

    .line 1063
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getAwareFeatureProvider()Lcom/android/settings/a/a;

    :cond_1
    return-void
.end method
