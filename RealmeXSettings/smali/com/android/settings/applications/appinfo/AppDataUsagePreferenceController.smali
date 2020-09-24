.class public Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppDataUsagePreferenceController.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/e;",
        ">;>;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/a/f;",
        "Lcom/android/settingslib/core/lifecycle/a/h;"
    }
.end annotation


# instance fields
.field private mAppUsageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mAppUsageData:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mAppUsageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v0

    move-wide v0, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/net/e;

    .line 4040
    iget-wide v8, v7, Lcom/android/settingslib/net/d;->e:J

    add-long/2addr v0, v8

    .line 5032
    iget-wide v7, v7, Lcom/android/settingslib/net/d;->c:J

    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    move-wide v5, v7

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e74

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1206b2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const/16 v9, 0x8

    .line 130
    invoke-static {v8, v0, v1, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x10010

    .line 131
    invoke-static {v1, v5, v6, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 129
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1205cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 7

    .line 5113
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 5121
    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 5124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 5125
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    and-int/2addr v4, v5

    goto :goto_0

    .line 5130
    :cond_2
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 5131
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    move v2, v1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 139
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 141
    :cond_4
    invoke-static {p0}, Lcom/android/settings/datausage/f;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 142
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 144
    :cond_5
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 112
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    return-object v0
.end method

.method isBandwidthControlEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 149
    invoke-static {}, Lcom/android/settings/m;->b()Z

    move-result v0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;>;"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->a(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 92
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->a(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;

    move-result-object p2

    const/4 v0, 0x0

    .line 3123
    iput-boolean v0, p2, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$a;->b:Z

    .line 3187
    iput-object p1, p2, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->d:Landroid/net/NetworkTemplate;

    .line 95
    invoke-virtual {p2}, Lcom/android/settingslib/net/NetworkCycleDataLoader$a;->a()Lcom/android/settingslib/net/NetworkCycleDataLoader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mAppUsageData:Ljava/util/List;

    .line 102
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/e;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isAvailable()Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 73
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 74
    new-instance v1, Lcom/android/settingslib/a;

    invoke-direct {v1, v0}, Lcom/android/settingslib/a;-><init>(I)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/settingslib/a;->a(I)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
