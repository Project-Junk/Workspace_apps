.class public Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FeatureFlagsDashboard.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard$1;

    invoke-direct {v0}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
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

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v1, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 79
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "FeatureFlagsDashboard"

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

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c1

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15009d

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    const-class p1, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;

    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1, v0}, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V

    return-void
.end method
