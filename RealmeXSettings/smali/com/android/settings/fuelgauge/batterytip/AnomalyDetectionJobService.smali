.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;
.super Landroid/app/job/JobService;
.source "AnomalyDetectionJobService.java"


# static fields
.field static final a:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field b:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->b:Z

    return-void
.end method

.method private a(Landroid/os/StatsDimensionsValue;)I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 198
    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getField()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getIntValue()I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x7

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getTupleValueList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 206
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StatsDimensionsValue;

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->a(Landroid/os/StatsDimensionsValue;)I

    move-result v3

    if-eq v3, v0, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private a(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 220
    monitor-exit v0

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 73
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 74
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const v2, 0x7f0b0014

    invoke-direct {p0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->a:J

    .line 78
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    new-instance v1, Landroid/app/job/JobWorkItem;

    invoke-direct {v1, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, "AnomalyDetectionService"

    const-string p1, "Anomaly detection job service enqueue failed."

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/app/job/JobParameters;)V
    .locals 19

    move-object/from16 v1, p0

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object v9

    .line 95
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/e;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/e;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v10

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 98
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object v12

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object v13

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v14

    .line 106
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->a(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v0

    move-object v15, v0

    :goto_0
    if-eqz v15, :cond_6

    .line 110
    invoke-virtual {v15}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.app.extra.STATS_DIMENSIONS_VALUE"

    .line 1135
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/StatsDimensionsValue;

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "key_anomaly_timestamp"

    .line 1136
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v3, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    .line 1138
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1140
    new-instance v6, Lcom/android/settings/fuelgauge/batterytip/b;

    .line 1141
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_1
    invoke-direct {v6, v0}, Lcom/android/settings/fuelgauge/batterytip/b;-><init>(Ljava/lang/String;)V

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Extra stats value: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AnomalyDetectionService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->a(Landroid/os/StatsDimensionsValue;)I

    move-result v3

    .line 1146
    invoke-interface {v13}, Lcom/android/settings/fuelgauge/i;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "adaptive_battery_management_enabled"

    .line 1147
    invoke-static {v11, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_1
    const-string v0, "app_auto_restriction_enabled"

    .line 1149
    invoke-static {v11, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_2
    move v4, v2

    .line 1151
    :cond_2
    invoke-virtual {v10, v3}, Lcom/android/settings/fuelgauge/g;->a(I)Ljava/lang/String;

    move-result-object v0

    move v5, v3

    .line 1152
    invoke-virtual {v10, v0}, Lcom/android/settings/fuelgauge/g;->b(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v17, v11

    .line 1153
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v13

    :try_start_2
    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1154
    invoke-virtual {v10, v12, v5, v6}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/settingslib/j/c;ILcom/android/settings/fuelgauge/batterytip/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/16 v4, 0x56b

    const/4 v5, 0x0

    .line 1155
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batterytip/b;->a:Ljava/lang/Integer;

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v14

    move-object v6, v11

    .line 1155
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    goto/16 :goto_7

    :cond_3
    if-eqz v4, :cond_4

    .line 1161
    iget-boolean v2, v6, Lcom/android/settings/fuelgauge/batterytip/b;->b:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 1163
    invoke-virtual {v10, v5, v0, v2}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;I)V

    .line 1165
    iget-object v2, v6, Lcom/android/settings/fuelgauge/batterytip/b;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v16, 0x2

    move-object v2, v9

    move v3, v5

    move-object v4, v0

    move v5, v13

    move-object v13, v6

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/fuelgauge/batterytip/d;->a(ILjava/lang/String;IIJ)Z

    goto :goto_3

    :cond_4
    move-object v13, v6

    .line 1169
    iget-object v2, v13, Lcom/android/settings/fuelgauge/batterytip/b;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v16, 0x0

    move-object v2, v9

    move v3, v5

    move-object v4, v0

    move v5, v6

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/fuelgauge/batterytip/d;->a(ILjava/lang/String;IIJ)Z

    :goto_3
    const/4 v3, 0x0

    const/16 v4, 0x557

    const/4 v5, 0x0

    .line 1173
    iget-object v0, v13, Lcom/android/settings/fuelgauge/batterytip/b;->a:Ljava/lang/Integer;

    .line 1177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v14

    move-object v6, v11

    .line 1173
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v17, v11

    :goto_5
    move-object/from16 v18, v13

    :goto_6
    const-string v2, "AnomalyDetectionService"

    const-string v3, "Parse stats dimensions value error."

    .line 1181
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    :goto_7
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 1230
    :try_start_3
    iget-boolean v0, v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->b:Z

    if-eqz v0, :cond_5

    .line 1231
    monitor-exit v2

    move-object/from16 v3, p1

    goto :goto_8

    :cond_5
    move-object/from16 v3, p1

    .line 1234
    invoke-virtual {v3, v15}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 1235
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->a(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v15

    move-object/from16 v11, v17

    move-object/from16 v13, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1235
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    return-void
.end method

.method public static synthetic lambda$v-5XkH9MBEY09oAvbVH6EN0pIl8(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->b(Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 89
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->b:Z

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$v-5XkH9MBEY09oAvbVH6EN0pIl8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$v-5XkH9MBEY09oAvbVH6EN0pIl8;-><init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->c:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 122
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->b:Z

    .line 123
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
