.class public Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorConvenientAidFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EUEX"

    const-string v1, "JP"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;->a:[Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$6;

    invoke-direct {v0}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$6;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 215
    const-class v0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    new-instance v2, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/convenient/controller/ColorGoogleAssitantPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2084
    new-instance v3, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$1;

    invoke-direct {v3, p1, p1}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    new-instance v3, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$2;

    const-string v4, "floating_assistant"

    invoke-direct {v3, p1, v4}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2112
    new-instance v3, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1172
    new-instance v2, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$4;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$4;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v2, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$5;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$5;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v2, Lcom/coloros/settings/feature/convenient/controller/ColorNonSensingCertificationPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/convenient/controller/ColorNonSensingCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    new-instance v2, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    if-eqz v0, :cond_1

    .line 1201
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v3, :cond_0

    .line 1202
    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150043

    return v0
.end method
