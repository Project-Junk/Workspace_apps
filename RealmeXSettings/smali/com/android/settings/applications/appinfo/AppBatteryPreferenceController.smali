.class public Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;
.super Lcom/android/settings/core/a;
.source "AppBatteryPreferenceController.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/a;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/a/f;",
        "Lcom/android/settingslib/core/lifecycle/a/h;"
    }
.end annotation


# static fields
.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"


# instance fields
.field mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryPercent:Ljava/lang/String;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final mPackageName:Ljava/lang/String;

.field protected final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field protected mPreference:Landroidx/preference/Preference;

.field mSipper:Lcom/android/internal/os/BatterySipper;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "battery"

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 70
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/g;

    .line 71
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 73
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method findTargetSipper(Lcom/android/internal/os/BatteryStatsHelper;I)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 171
    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 92
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->isBatteryStatsAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 98
    new-instance v0, Lcom/android/settings/fuelgauge/c;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/settings/fuelgauge/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->a(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/c;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->a(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method isBatteryStatsAvailable()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")V"
        }
    .end annotation

    .line 128
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 129
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->findTargetSipper(Lcom/android/internal/os/BatteryStatsHelper;I)Lcom/android/internal/os/BatterySipper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    .line 132
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->updateBattery()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected updateBattery()V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->isBatteryStatsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v9

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/g;

    invoke-virtual {v3, v0}, Lcom/android/settings/fuelgauge/g;->a(Ljava/util/List;)D

    move-result-wide v7

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v3, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v5

    .line 151
    invoke-static/range {v3 .. v9}, Lcom/android/settings/fuelgauge/g;->a(DDDI)D

    move-result-wide v3

    double-to-int v0, v3

    .line 154
    invoke-static {v0}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120335

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120e6e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
