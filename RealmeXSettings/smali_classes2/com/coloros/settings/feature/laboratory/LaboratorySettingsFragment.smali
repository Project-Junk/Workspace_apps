.class public Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LaboratorySettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "LaboratorySettingsFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
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

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1088
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    new-instance v2, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v2, Lcom/coloros/settings/feature/listoptimize/ListOptimizePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/listoptimize/ListOptimizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v2, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/finalsleep/ExSleepPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 1097
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ar;->a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/util/List;)V

    :cond_0
    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ae

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 64
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 66
    const-class v0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;

    .line 67
    invoke-virtual {v0}, Lcom/coloros/settings/doubleears/controller/DoubleEarPageJumpController;->checkEnable()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment$1;-><init>(Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
