.class public final Lcom/android/settings/fuelgauge/batterytip/f;
.super Ljava/lang/Object;
.source "BatteryTipUtils.java"


# direct methods
.method public static a(Lcom/android/settings/fuelgauge/batterytip/c/c;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/a/b;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->e()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/a/g;

    check-cast p0, Lcom/android/settings/fuelgauge/batterytip/c/j;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/fuelgauge/batterytip/a/g;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/c/j;)V

    return-object p2

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->f()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 102
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/a/c;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/c;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 104
    :cond_2
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/a/a;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/a;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/c/c;->f()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 108
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/a/d;

    check-cast p0, Lcom/android/settings/fuelgauge/batterytip/c/g;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/fuelgauge/batterytip/a/d;-><init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/c/g;)V

    return-object p1

    .line 110
    :cond_4
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/a/e;

    check-cast p0, Lcom/android/settings/fuelgauge/batterytip/c/g;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/fuelgauge/batterytip/a/e;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/c/g;)V

    return-object p2

    .line 98
    :cond_5
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/a/f;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/a/f;-><init>(Lcom/android/settings/SettingsActivity;Landroidx/fragment/app/Fragment;)V

    return-object p0
.end method

.method public static a(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager;",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [I

    const/16 v1, 0x46

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    .line 66
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 67
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 68
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    .line 69
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 70
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v10

    if-ne v10, v1, :cond_0

    .line 73
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/os/UserHandle;

    .line 75
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 74
    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 76
    new-instance v9, Lcom/android/settings/fuelgauge/batterytip/c$a;

    invoke-direct {v9}, Lcom/android/settings/fuelgauge/batterytip/c$a;-><init>()V

    .line 77
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1118
    iput-object v10, v9, Lcom/android/settings/fuelgauge/batterytip/c$a;->b:Ljava/lang/String;

    .line 78
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    .line 1128
    iput v10, v9, Lcom/android/settings/fuelgauge/batterytip/c$a;->d:I

    .line 79
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batterytip/c$a;->a()Lcom/android/settings/fuelgauge/batterytip/c;

    move-result-object v9

    .line 76
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/StatsManager;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 126
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x1

    move-object v3, p1

    .line 128
    invoke-virtual/range {v3 .. v8}, Landroid/app/StatsManager;->setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V

    return-void
.end method
