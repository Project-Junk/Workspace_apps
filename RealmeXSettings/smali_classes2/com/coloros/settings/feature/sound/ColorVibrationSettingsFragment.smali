.class public Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorVibrationSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorVibrationSettingsFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 70
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 1077
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    new-instance v2, Lcom/coloros/settings/feature/sound/ColorRingVibrationLifeController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/sound/ColorRingVibrationLifeController;-><init>(Landroid/content/Context;)V

    .line 1080
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    new-instance v2, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;-><init>(Landroid/content/Context;)V

    .line 1082
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 1085
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

    .line 1086
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v3, :cond_0

    .line 1087
    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

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

    const v0, 0x7f150071

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDetach()V

    .line 53
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorVibrationSettingsFragment;->a:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a()V

    :cond_0
    return-void
.end method
