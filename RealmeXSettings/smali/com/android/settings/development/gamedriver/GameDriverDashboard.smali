.class public Lcom/android/settings/development/gamedriver/GameDriverDashboard;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GameDriverDashboard.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/development/gamedriver/GameDriverDashboard$1;

    invoke-direct {v0}, Lcom/android/settings/development/gamedriver/GameDriverDashboard$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/gamedriver/GameDriverDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "GameDriverDashboard"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500a0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverDashboard;->showTopSwitchBar()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverDashboard;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/f;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/f;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverDashboard;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    :cond_0
    return-void
.end method
