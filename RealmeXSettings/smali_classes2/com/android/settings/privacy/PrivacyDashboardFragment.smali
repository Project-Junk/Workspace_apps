.class public Lcom/android/settings/privacy/PrivacyDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacyDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field a:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/android/settings/privacy/PrivacyDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/privacy/PrivacyDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v1, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v2, "privacy_lock_screen_notifications"

    const-string v3, "privacy_work_profile_notifications_category"

    const-string v4, "privacy_lock_screen_work_profile_notifications"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 117
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PrivacyDashboardFrag"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final a(Z)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 101
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120abf

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x633

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500fb

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 81
    const-class p1, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/privacy/PermissionBarChartPreferenceController;->setFragment(Lcom/android/settings/privacy/PrivacyDashboardFragment;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/settings/m;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    const p1, 0x7f0d0291

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a:Landroid/view/View;

    .line 1094
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a:Landroid/view/View;

    const p2, 0x7f0a051b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->b:Landroid/view/View;

    const/4 p1, 0x0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->a(Z)V

    return-void
.end method
