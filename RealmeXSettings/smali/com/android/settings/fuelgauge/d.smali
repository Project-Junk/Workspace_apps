.class public final Lcom/android/settings/fuelgauge/d;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/d$a;,
        Lcom/android/settings/fuelgauge/d$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:I

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field j:Z

.field k:Landroid/os/BatteryStats;

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/d;->d:Z

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/d;->e:J

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/d;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/j/b;JZ)Lcom/android/settings/fuelgauge/d;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    new-instance v2, Lcom/android/settings/fuelgauge/d;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/d;-><init>()V

    .line 230
    iput-object p2, v2, Lcom/android/settings/fuelgauge/d;->k:Landroid/os/BatteryStats;

    .line 231
    invoke-static {p1}, Lcom/android/settings/m;->c(Landroid/content/Intent;)I

    move-result v3

    iput v3, v2, Lcom/android/settings/fuelgauge/d;->c:I

    .line 232
    iget v3, v2, Lcom/android/settings/fuelgauge/d;->c:I

    invoke-static {v3}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "plugged"

    .line 233
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, v2, Lcom/android/settings/fuelgauge/d;->j:Z

    .line 1030
    iget-wide v6, p3, Lcom/android/settingslib/j/b;->c:J

    .line 234
    iput-wide v6, v2, Lcom/android/settings/fuelgauge/d;->f:J

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 237
    invoke-static {v4, p1}, Lcom/android/settings/m;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/fuelgauge/d;->h:Ljava/lang/String;

    .line 238
    iget-boolean v4, v2, Lcom/android/settings/fuelgauge/d;->j:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-nez v4, :cond_4

    .line 2028
    iget-wide p1, p3, Lcom/android/settingslib/j/b;->a:J

    .line 1275
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide p1

    cmp-long p4, p1, v6

    if-lez p4, :cond_3

    .line 1277
    iput-wide p1, v2, Lcom/android/settings/fuelgauge/d;->e:J

    .line 1280
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide p4

    .line 2029
    iget-boolean v4, p3, Lcom/android/settingslib/j/b;->b:Z

    if-eqz v4, :cond_1

    if-nez p6, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1278
    :goto_1
    invoke-static {p0, p4, p5, v8, v4}, Lcom/android/settingslib/utils/b;->a(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v2, Lcom/android/settings/fuelgauge/d;->b:Ljava/lang/CharSequence;

    .line 1286
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide p4

    iget-object v4, v2, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    .line 3029
    iget-boolean p3, p3, Lcom/android/settingslib/j/b;->b:Z

    if-eqz p3, :cond_2

    if-nez p6, :cond_2

    move v3, v5

    .line 1284
    :cond_2
    invoke-static {p0, p4, p5, v4, v3}, Lcom/android/settingslib/utils/b;->a(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lcom/android/settings/fuelgauge/d;->a:Ljava/lang/CharSequence;

    .line 1291
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide p1

    .line 1290
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/fuelgauge/d;->i:Ljava/lang/String;

    goto :goto_3

    .line 1293
    :cond_3
    iput-object v8, v2, Lcom/android/settings/fuelgauge/d;->b:Ljava/lang/CharSequence;

    .line 1294
    iput-object v8, v2, Lcom/android/settings/fuelgauge/d;->i:Ljava/lang/String;

    .line 1295
    iget-object p0, v2, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    goto :goto_2

    .line 3249
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 3250
    invoke-virtual {p2, p4, p5}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p4

    const-string p2, "status"

    .line 3251
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3253
    iput-boolean v3, v2, Lcom/android/settings/fuelgauge/d;->d:Z

    .line 3254
    iput-object v8, v2, Lcom/android/settings/fuelgauge/d;->i:Ljava/lang/String;

    cmp-long p2, p4, v6

    const/4 p6, 0x2

    if-lez p2, :cond_5

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    .line 3256
    iput-wide p4, v2, Lcom/android/settings/fuelgauge/d;->e:J

    .line 3257
    iget-wide p1, v2, Lcom/android/settings/fuelgauge/d;->e:J

    .line 3258
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide p1

    long-to-double p1, p1

    .line 3257
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object p1

    const p2, 0x7f121050

    .line 3260
    new-array p3, v5, [Ljava/lang/Object;

    aput-object p1, p3, v3

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/settings/fuelgauge/d;->b:Ljava/lang/CharSequence;

    const p2, 0x7f121042

    .line 3262
    new-array p3, p6, [Ljava/lang/Object;

    iget-object p4, v2, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    aput-object p4, p3, v3

    aput-object p1, p3, v5

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const p0, 0x7f1202ed

    .line 3264
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3266
    iput-object v8, v2, Lcom/android/settings/fuelgauge/d;->b:Ljava/lang/CharSequence;

    .line 3267
    iget p1, v2, Lcom/android/settings/fuelgauge/d;->c:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_6

    iget-object p0, v2, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const p1, 0x7f121041

    new-array p2, p6, [Ljava/lang/Object;

    iget-object p4, v2, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    aput-object p4, p2, v3

    aput-object p0, p2, v5

    .line 3268
    invoke-virtual {p3, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    iput-object p0, v2, Lcom/android/settings/fuelgauge/d;->a:Ljava/lang/CharSequence;

    :goto_3
    const-string p0, "BatteryInfo"

    const-string/jumbo p1, "time for getBatteryInfo"

    .line 243
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/fuelgauge/d$b;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/settings/fuelgauge/d$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/fuelgauge/d$2;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;ZLcom/android/settings/fuelgauge/d$b;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 163
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/d$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static varargs a(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/d$a;)V
    .locals 24

    move-object/from16 v0, p0

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x5

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_7

    .line 321
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const/4 v7, 0x1

    move-wide v8, v5

    move-wide v10, v8

    move-wide v13, v10

    move-wide v15, v13

    move-wide/from16 v19, v15

    move/from16 v18, v7

    const/4 v12, 0x0

    const/16 v17, 0x0

    .line 322
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v21

    if-eqz v21, :cond_6

    add-int/lit8 v17, v17, 0x1

    if-eqz v18, :cond_0

    move-wide/from16 v22, v8

    .line 326
    iget-wide v7, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v19, v7

    const/16 v18, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v22, v8

    .line 328
    :goto_1
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v7, v3, :cond_1

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v7, v2, :cond_4

    .line 338
    :cond_1
    iget-wide v7, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v13, 0x39ef8b000L

    add-long/2addr v10, v13

    cmp-long v7, v7, v10

    if-gtz v7, :cond_2

    iget-wide v7, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v9, 0x493e0

    add-long v9, v19, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    :cond_2
    move-wide v15, v5

    .line 342
    :cond_3
    iget-wide v10, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 343
    iget-wide v13, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v7, v15, v5

    if-nez v7, :cond_4

    sub-long v7, v13, v19

    sub-long v15, v10, v7

    .line 348
    :cond_4
    invoke-virtual {v1}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 350
    iget-wide v8, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v12, v17

    goto :goto_2

    :cond_5
    move-wide/from16 v8, v22

    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    move-wide/from16 v22, v8

    move-wide v7, v15

    goto :goto_3

    :cond_7
    move-wide v7, v5

    move-wide v10, v7

    move-wide v13, v10

    move-wide/from16 v19, v13

    move-wide/from16 v22, v19

    const/4 v12, 0x0

    .line 354
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long v10, v10, v22

    sub-long/2addr v10, v13

    const/4 v1, 0x0

    :goto_4
    if-gtz v1, :cond_8

    .line 361
    aget-object v9, p1, v1

    invoke-interface {v9, v7, v8, v10, v11}, Lcom/android/settings/fuelgauge/d$a;->a(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    cmp-long v1, v10, v7

    if-lez v1, :cond_12

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 364
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-wide v10, v5

    const/4 v9, 0x0

    .line 365
    :goto_5
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v15

    if-eqz v15, :cond_12

    if-ge v9, v12, :cond_12

    .line 366
    invoke-virtual {v1}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 367
    iget-wide v2, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v2, v13

    add-long/2addr v10, v2

    .line 368
    iget-wide v2, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v13, v10, v7

    cmp-long v17, v13, v5

    if-gez v17, :cond_9

    move-wide v13, v5

    :cond_9
    const/16 v17, 0x0

    :goto_6
    if-gtz v17, :cond_a

    .line 374
    aget-object v4, p1, v17

    invoke-interface {v4, v13, v14, v1}, Lcom/android/settings/fuelgauge/d$a;->a(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_a
    move-wide v13, v2

    const/4 v5, 0x5

    goto :goto_b

    .line 378
    :cond_b
    iget-byte v2, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_d

    iget-byte v2, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_c

    goto :goto_7

    :cond_c
    move-wide v3, v13

    move-wide v13, v10

    goto :goto_9

    :cond_d
    const/4 v3, 0x7

    .line 380
    :goto_7
    iget-wide v13, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v2, v13, v7

    if-ltz v2, :cond_e

    .line 381
    iget-wide v13, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_8

    .line 383
    :cond_e
    iget-wide v13, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v13, v13, v19

    add-long/2addr v13, v7

    .line 385
    :goto_8
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 388
    :goto_9
    iget-byte v2, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x6

    if-eq v2, v5, :cond_10

    iget-byte v2, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    if-ne v2, v5, :cond_f

    sub-long/2addr v10, v13

    .line 390
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v16, 0x36ee80

    cmp-long v2, v10, v16

    if-lez v2, :cond_11

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-gtz v2, :cond_11

    .line 392
    aget-object v6, p1, v2

    invoke-interface {v6}, Lcom/android/settings/fuelgauge/d$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x5

    :cond_11
    move-wide v10, v13

    move-wide v13, v3

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move v3, v5

    const/4 v2, 0x7

    const-wide/16 v5, 0x0

    goto :goto_5

    .line 400
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/16 v18, 0x0

    :goto_c
    if-gtz v18, :cond_13

    .line 403
    aget-object v0, p1, v18

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/d$a;->b()V

    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    :cond_13
    return-void
.end method
