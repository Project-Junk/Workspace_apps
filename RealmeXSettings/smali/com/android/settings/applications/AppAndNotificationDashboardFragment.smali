.class public Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppAndNotificationDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/android/settings/applications/RecentAppStatsMixin;

.field private d:Lcom/android/settings/applications/RecentAppsPreferenceController;

.field private e:Lcom/android/settings/applications/AllAppsInfoPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 126
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Lcom/android/settings/notification/i;

    const-string v2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "AppAndNotifDashboard"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 121
    invoke-static {p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a9f

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ec

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150015

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->useColorStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const-class v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 81
    new-instance v0, Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/RecentAppStatsMixin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c:Lcom/android/settings/applications/RecentAppStatsMixin;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->a(Lcom/android/settings/applications/RecentAppStatsMixin$a;)V

    .line 86
    const-class p1, Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RecentAppsPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->d:Lcom/android/settings/applications/RecentAppsPreferenceController;

    .line 87
    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->d:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->d:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RecentAppStatsMixin;->a(Lcom/android/settings/applications/RecentAppStatsMixin$a;)V

    .line 90
    const-class p1, Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->e:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    .line 91
    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->c:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object v0, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->e:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RecentAppStatsMixin;->a(Lcom/android/settings/applications/RecentAppStatsMixin$a;)V

    :cond_0
    return-void
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a(Z)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 114
    invoke-static {p1, v0, v1}, Lcom/android/settings/m;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0d0291

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a:Landroid/view/View;

    .line 100
    iget-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a:Landroid/view/View;

    const p2, 0x7f0a051b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->b:Landroid/view/View;

    const/4 p1, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->a(Z)V

    return-void
.end method

.method public useColorStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
