.class public Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorAppManagerDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v1, Lcom/coloros/settings/feature/appmanager/controller/DefaultAppManagerPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/DefaultAppManagerPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/coloros/settings/feature/appmanager/controller/AutoLaunchMgrPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/AutoLaunchMgrPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/coloros/settings/feature/appmanager/controller/AssociationLaunchMgrPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/AssociationLaunchMgrPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/coloros/settings/feature/appmanager/controller/FloatingWindowMgrPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/FloatingWindowMgrPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance p2, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AppManagerDashboard"

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

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/coloros/settings/feature/appmanager/ColorAppManagerDashboardFragment;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ec

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15003e

    return v0
.end method
