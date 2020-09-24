.class public final Lcom/android/settings/fuelgauge/batterytip/b/b;
.super Ljava/lang/Object;
.source "HighUsageDetector.java"


# instance fields
.field a:Lcom/android/settings/fuelgauge/batterytip/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Lcom/android/settings/fuelgauge/batterytip/e;

.field private e:Lcom/android/internal/os/BatteryStatsHelper;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/e;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    .line 59
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->e:Lcom/android/internal/os/BatteryStatsHelper;

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->f:Ljava/util/List;

    .line 61
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->b:Lcom/android/settings/fuelgauge/g;

    .line 62
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/g;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-wide p2, p2, Lcom/android/settings/fuelgauge/batterytip/e;->f:J

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    iget v0, v0, Lcom/android/settings/fuelgauge/batterytip/e;->g:I

    invoke-direct {p1, p2, p3, v0}, Lcom/android/settings/fuelgauge/batterytip/g;-><init>(JI)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->a:Lcom/android/settings/fuelgauge/batterytip/g;

    .line 64
    iput-boolean p4, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->c:Z

    return-void
.end method

.method private static synthetic a(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    .line 83
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide p0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$1Jy5iNzQyFn3kc9pK6xvS9f4sfk(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/b/b;->a(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/settings/fuelgauge/batterytip/c/c;
    .locals 14

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->e:Lcom/android/internal/os/BatteryStatsHelper;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 69
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v0

    .line 71
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/e;->d:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->c:Z

    if-eqz v2, :cond_5

    .line 1118
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->e:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/settings/fuelgauge/d$a;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->a:Lcom/android/settings/fuelgauge/batterytip/g;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/android/settings/fuelgauge/d;->a(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/d$a;)V

    .line 73
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->a:Lcom/android/settings/fuelgauge/batterytip/g;

    .line 2076
    iget v4, v2, Lcom/android/settings/fuelgauge/batterytip/g;->b:I

    iget v2, v2, Lcom/android/settings/fuelgauge/batterytip/g;->a:I

    if-le v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-nez v3, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/e;->q:Z

    if-eqz v2, :cond_5

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->e:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->e:Lcom/android/internal/os/BatteryStatsHelper;

    .line 76
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->e:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v6

    .line 82
    :cond_2
    sget-object v2, Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;->INSTANCE:Lcom/android/settings/fuelgauge/batterytip/b/-$$Lambda$b$1Jy5iNzQyFn3kc9pK6xvS9f4sfk;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 86
    iget-wide v7, v3, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    const-wide/16 v11, 0x0

    move-wide v9, v4

    move v13, v6

    invoke-static/range {v7 .. v13}, Lcom/android/settings/fuelgauge/g;->a(DDDI)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_3

    .line 88
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->b:Lcom/android/settings/fuelgauge/g;

    invoke-virtual {v7, v3}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 92
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->f:Ljava/util/List;

    new-instance v8, Lcom/android/settings/fuelgauge/batterytip/c$a;

    invoke-direct {v8}, Lcom/android/settings/fuelgauge/batterytip/c$a;-><init>()V

    .line 93
    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v9

    .line 2128
    iput v9, v8, Lcom/android/settings/fuelgauge/batterytip/c$a;->d:I

    .line 93
    iget-object v9, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->b:Lcom/android/settings/fuelgauge/g;

    .line 95
    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/settings/fuelgauge/g;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 3118
    iput-object v3, v8, Lcom/android/settings/fuelgauge/batterytip/c$a;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/batterytip/c$a;->a()Lcom/android/settings/fuelgauge/batterytip/c;

    move-result-object v3

    .line 92
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    iget v7, v7, Lcom/android/settings/fuelgauge/batterytip/e;->e:I

    if-lt v3, v7, :cond_3

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->d:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/e;->q:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->f:Ljava/util/List;

    new-instance v3, Lcom/android/settings/fuelgauge/batterytip/c$a;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/batterytip/c$a;-><init>()V

    const-string v4, "com.android.settings"

    .line 4118
    iput-object v4, v3, Lcom/android/settings/fuelgauge/batterytip/c$a;->b:Ljava/lang/String;

    .line 106
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    .line 107
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 4123
    iput-wide v4, v3, Lcom/android/settings/fuelgauge/batterytip/c$a;->c:J

    .line 108
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/c$a;->a()Lcom/android/settings/fuelgauge/batterytip/c;

    move-result-object v3

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_5
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/c/e;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/b/b;->f:Ljava/util/List;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/c/e;-><init>(JLjava/util/List;)V

    return-object v2
.end method
