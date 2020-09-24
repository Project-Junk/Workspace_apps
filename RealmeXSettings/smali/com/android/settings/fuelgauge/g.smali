.class public final Lcom/android/settings/fuelgauge/g;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# static fields
.field private static b:Lcom/android/settings/fuelgauge/g;


# instance fields
.field a:Lcom/android/settings/fuelgauge/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/app/AppOpsManager;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    const-string v0, "appops"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/g;->d:Landroid/app/AppOpsManager;

    .line 110
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/g;->a:Lcom/android/settings/fuelgauge/i;

    return-void
.end method

.method public static a(DDDI)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    sub-double/2addr p2, p4

    div-double/2addr p0, p2

    int-to-double p2, p6

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private a(Landroid/os/BatteryStats$Uid;)J
    .locals 3

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/os/BatteryStats$Uid;IJ)J
    .locals 10

    const/4 p2, 0x1

    .line 135
    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    move v1, v0

    move-wide v5, v3

    :goto_0
    if-gtz v1, :cond_0

    .line 139
    aget v5, p2, v0

    .line 140
    invoke-virtual {p1, v5, p3, p4, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v6

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " time(us): "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-long v5, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "foreground time(us): "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1535
    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    .line 149
    :cond_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 148
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private static a(Landroid/os/BatteryStats$Uid;J)J
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 543
    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(Lcom/android/internal/os/BatteryStatsHelper;)J
    .locals 5

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 2518
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2519
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 2520
    iget-object v4, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 399
    iget-wide v0, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/settings/fuelgauge/g;->b:Lcom/android/settings/fuelgauge/g;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/g;->b:Lcom/android/settings/fuelgauge/g;

    .line 102
    :cond_1
    sget-object p0, Lcom/android/settings/fuelgauge/g;->b:Lcom/android/settings/fuelgauge/g;

    return-object p0
.end method

.method private a()Lcom/android/settingslib/j/b;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/j/b;->b(Landroid/content/Context;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 501
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/j/b;->a(Landroid/content/Context;)Lcom/android/settingslib/j/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private synthetic a(IILjava/lang/String;)V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    .line 434
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 436
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/d;->a(ILjava/lang/String;J)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 439
    invoke-virtual {v0, p2, p3}, Lcom/android/settings/fuelgauge/batterytip/d;->a(ILjava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z
    .locals 6

    .line 605
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 607
    :try_start_0
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 609
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    return v4

    :catch_0
    move-exception v4

    .line 613
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Package not found: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BatteryUtils"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private a([Ljava/lang/String;)Z
    .locals 4

    .line 565
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 569
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 570
    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/g;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private b(Landroid/os/BatteryStats$Uid;)J
    .locals 4

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 159
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BatteryUtils"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v3, "background time(us): "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->d:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 415
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private c(Landroid/os/BatteryStats$Uid;)J
    .locals 4

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    .line 170
    invoke-static {p1, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 556
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 558
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Cannot find package: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "BatteryUtils"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static synthetic lambda$TFSGC9KURlVaZyeoH1Xcagl7o3g(Lcom/android/settings/fuelgauge/g;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/g;->a(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)D
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 184
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ltz v2, :cond_2

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 186
    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 187
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v7, v8, :cond_0

    .line 194
    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/g;->b(Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    iget-wide v7, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v3, v7

    .line 201
    :cond_0
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_1

    move-object v5, v6

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2218
    :cond_2
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 2219
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-wide v11, v7

    move v10, v9

    :goto_1
    if-ge v10, v6, :cond_4

    .line 2220
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    iget-object v13, v13, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v13, :cond_3

    .line 2222
    invoke-virtual {v0, v9, v13}, Lcom/android/settings/fuelgauge/g;->a(ILandroid/os/BatteryStats$Uid;)J

    move-result-wide v14

    .line 2224
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v2, v13, v14, v15}, Landroid/util/SparseLongArray;->put(IJ)V

    add-long/2addr v11, v14

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const-wide/32 v13, 0x927c0

    cmp-long v6, v11, v13

    if-ltz v6, :cond_6

    if-nez v5, :cond_5

    const-string v1, "BatteryUtils"

    const-string v2, "screen sipper is null even when app screen time is not zero"

    .line 2231
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2235
    :cond_5
    iget-wide v5, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 2236
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v9, v10, :cond_6

    .line 2237
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    .line 2238
    iget-wide v14, v13, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v13}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    invoke-virtual {v2, v0, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, v5

    long-to-double v7, v11

    div-double/2addr v0, v7

    add-double/2addr v14, v0

    iput-wide v14, v13, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    return-wide v3
.end method

.method public final a(ILandroid/os/BatteryStats$Uid;)J
    .locals 3
    .param p2    # Landroid/os/BatteryStats$Uid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    return-wide v0

    .line 128
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/g;->c(Landroid/os/BatteryStats$Uid;)J

    move-result-wide v0

    .line 129
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/g;->b(Landroid/os/BatteryStats$Uid;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0

    .line 126
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/g;->b(Landroid/os/BatteryStats$Uid;)J

    move-result-wide p1

    return-wide p1

    .line 124
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/g;->c(Landroid/os/BatteryStats$Uid;)J

    move-result-wide p1

    return-wide p1

    .line 122
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/g;->a(Landroid/os/BatteryStats$Uid;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/d;
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 472
    iget-object v4, v0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 474
    invoke-static {v4, v5}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide v11

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v9

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/g;->a()Lcom/android/settingslib/j/b;

    move-result-object v4

    if-nez v4, :cond_0

    .line 482
    new-instance v4, Lcom/android/settingslib/j/b;

    .line 483
    invoke-virtual {v9, v11, v12}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/settingslib/j/b;-><init>(JZJ)V

    :cond_0
    move-object v10, v4

    const-string v4, "BatteryInfoLoader post query"

    .line 488
    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 489
    iget-object v7, v0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/j/b;JZ)Lcom/android/settings/fuelgauge/d;

    move-result-object v4

    const-string v5, "BatteryInfoLoader.loadInBackground"

    .line 491
    invoke-static {v1, v5, v2, v3}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 2

    .line 424
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->d:Landroid/app/AppOpsManager;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->d:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 432
    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$g$TFSGC9KURlVaZyeoH1Xcagl7o3g;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/fuelgauge/-$$Lambda$g$TFSGC9KURlVaZyeoH1Xcagl7o3g;-><init>(Lcom/android/settings/fuelgauge/g;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(ILjava/lang/String;)Z
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->d:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/internal/os/BatterySipper;)Z
    .locals 4

    .line 248
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 250
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->a:Lcom/android/settings/fuelgauge/i;

    .line 259
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/i;->a(Lcom/android/internal/os/BatterySipper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/g;->b(Lcom/android/internal/os/BatterySipper;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/settingslib/j/c;ILcom/android/settings/fuelgauge/batterytip/b;)Z
    .locals 5

    .line 583
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2600
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/4 v1, 0x0

    if-ltz p2, :cond_1

    const/16 v3, 0x2710

    if-ge p2, v3, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-nez p2, :cond_9

    .line 3117
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3120
    array-length p2, v0

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_3

    aget-object v4, v0, v3

    .line 3121
    invoke-virtual {p1, v4}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_2
    if-nez p1, :cond_9

    .line 589
    iget-object p1, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    .line 590
    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3621
    new-instance p1, Landroid/content/Intent;

    const/4 p2, 0x0

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.category.LAUNCHER"

    .line 3622
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3630
    iget-object p2, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 3635
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v3, v1

    :goto_3
    if-ge v3, p2, :cond_5

    .line 3636
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3637
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move p1, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_4
    if-eqz p1, :cond_9

    .line 4595
    :cond_6
    iget-object p1, p3, Lcom/android/settings/fuelgauge/batterytip/b;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_7

    move p1, v2

    goto :goto_5

    :cond_7
    move p1, v1

    :goto_5
    if-eqz p1, :cond_8

    .line 591
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/g;->a([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    return v1

    :cond_9
    :goto_6
    return v2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .line 451
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/g;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final b(Ljava/lang/String;)J
    .locals 2

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 655
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cannot find package: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BatteryUtils"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/android/settings/fuelgauge/g$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/g$1;-><init>(Lcom/android/settings/fuelgauge/g;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final b(Lcom/android/internal/os/BatterySipper;)Z
    .locals 5

    .line 267
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/g;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 271
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 273
    iget-object v3, p0, Lcom/android/settings/fuelgauge/g;->e:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/settingslib/applications/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
