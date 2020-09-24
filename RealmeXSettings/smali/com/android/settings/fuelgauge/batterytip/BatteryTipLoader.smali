.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryTipLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/batterytip/c/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->b:Lcom/android/internal/os/BatteryStatsHelper;

    .line 58
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->a:Lcom/android/settings/fuelgauge/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c/c;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/e;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/e;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->a:Lcom/android/settings/fuelgauge/g;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->b:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v4, "BatteryTipLoader"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/d;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/b/c;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/b/c;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/e;Lcom/android/settings/fuelgauge/d;)V

    .line 1049
    iget-object v5, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->c:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    .line 1050
    iget-object v6, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    iget v6, v6, Lcom/android/settings/fuelgauge/d;->c:I

    iget v7, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->d:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v6, v7, :cond_1

    iget-object v6, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    iget-boolean v6, v6, Lcom/android/settings/fuelgauge/d;->d:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    iget-wide v6, v6, Lcom/android/settings/fuelgauge/d;->e:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    iget-wide v6, v6, Lcom/android/settings/fuelgauge/d;->e:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v11, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->b:Lcom/android/settings/fuelgauge/batterytip/e;

    iget v11, v11, Lcom/android/settings/fuelgauge/batterytip/e;->m:I

    int-to-long v11, v11

    .line 1052
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v10

    cmp-long v6, v6, v10

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v8

    .line 1055
    :goto_1
    iget-object v7, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->b:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v7, v7, Lcom/android/settings/fuelgauge/batterytip/e;->l:Z

    const/4 v10, 0x2

    if-eqz v7, :cond_4

    if-eqz v5, :cond_2

    move v6, v8

    goto :goto_2

    .line 1059
    :cond_2
    iget-object v7, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->b:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v7, v7, Lcom/android/settings/fuelgauge/batterytip/e;->s:Z

    if-nez v7, :cond_3

    iget-object v7, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    iget-boolean v7, v7, Lcom/android/settings/fuelgauge/d;->d:Z

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    :cond_3
    move v6, v9

    goto :goto_2

    :cond_4
    move v6, v10

    .line 1065
    :goto_2
    new-instance v7, Lcom/android/settings/fuelgauge/batterytip/c/f;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/d;->i:Ljava/lang/String;

    invoke-direct {v7, v6, v5, v4}, Lcom/android/settings/fuelgauge/batterytip/c/f;-><init>(IZLjava/lang/CharSequence;)V

    .line 71
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/b/b;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->b:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v6, v2, Lcom/android/settings/fuelgauge/d;->d:Z

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/b/b;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/e;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    .line 73
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/b/b;->a()Lcom/android/settings/fuelgauge/batterytip/c/c;

    move-result-object v4

    .line 72
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/b/e;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/settings/fuelgauge/batterytip/b/e;-><init>(Lcom/android/settings/fuelgauge/batterytip/e;Landroid/content/ContentResolver;)V

    .line 2041
    iget-object v5, v4, Lcom/android/settings/fuelgauge/batterytip/b/e;->b:Landroid/content/ContentResolver;

    const-string v6, "adaptive_battery_management_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v4, Lcom/android/settings/fuelgauge/batterytip/b/e;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v4, v4, Lcom/android/settings/fuelgauge/batterytip/e;->r:Z

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v9

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v8

    :goto_4
    if-eqz v4, :cond_7

    move v4, v9

    goto :goto_5

    :cond_7
    move v4, v10

    .line 2046
    :goto_5
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/c/h;

    invoke-direct {v5, v4}, Lcom/android/settings/fuelgauge/batterytip/c/h;-><init>(I)V

    .line 74
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/b/a;

    invoke-direct {v4, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/b/a;-><init>(Lcom/android/settings/fuelgauge/batterytip/e;Landroid/content/Context;)V

    .line 2050
    iget-object v5, v4, Lcom/android/settings/fuelgauge/batterytip/b/a;->c:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, -0x1

    const-string v7, "plugged"

    .line 2053
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    move v5, v8

    goto :goto_6

    :cond_8
    move v5, v9

    .line 2054
    :goto_6
    iget-object v6, v4, Lcom/android/settings/fuelgauge/batterytip/b/a;->b:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v6

    .line 2055
    const-class v7, Lcom/android/settings/fuelgauge/batterytip/b/a;

    .line 2056
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2055
    iget-object v7, v4, Lcom/android/settings/fuelgauge/batterytip/b/a;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v7, v7, Lcom/android/settings/fuelgauge/batterytip/e;->p:Z

    if-eqz v6, :cond_9

    move v4, v8

    goto :goto_7

    .line 2058
    :cond_9
    iget-object v4, v4, Lcom/android/settings/fuelgauge/batterytip/b/a;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v4, v4, Lcom/android/settings/fuelgauge/batterytip/e;->c:Z

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    if-eqz v7, :cond_a

    move v4, v9

    goto :goto_7

    :cond_a
    move v4, v10

    .line 2063
    :goto_7
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/c/d;

    invoke-direct {v5, v4, v6}, Lcom/android/settings/fuelgauge/batterytip/c/d;-><init>(IZ)V

    .line 75
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/b/f;

    iget-wide v5, v2, Lcom/android/settings/fuelgauge/d;->f:J

    invoke-direct {v4, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/b/f;-><init>(Lcom/android/settings/fuelgauge/batterytip/e;J)V

    .line 3039
    iget-object v2, v4, Lcom/android/settings/fuelgauge/batterytip/b/f;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v2, v2, Lcom/android/settings/fuelgauge/batterytip/e;->b:Z

    if-eqz v2, :cond_b

    move v2, v9

    goto :goto_8

    :cond_b
    move v2, v10

    .line 3042
    :goto_8
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/c/i;

    iget-wide v6, v4, Lcom/android/settings/fuelgauge/batterytip/b/f;->b:J

    invoke-direct {v5, v2, v6, v7}, Lcom/android/settings/fuelgauge/batterytip/c/i;-><init>(IJ)V

    .line 76
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/b/d;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/fuelgauge/batterytip/b/d;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/e;)V

    .line 3067
    iget-object v1, v2, Lcom/android/settings/fuelgauge/batterytip/b/d;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-boolean v1, v1, Lcom/android/settings/fuelgauge/batterytip/e;->h:Z

    if-eqz v1, :cond_e

    .line 3068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v2, Lcom/android/settings/fuelgauge/batterytip/b/d;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    iget v5, v5, Lcom/android/settings/fuelgauge/batterytip/e;->i:I

    int-to-long v5, v5

    .line 3069
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 3070
    iget-object v1, v2, Lcom/android/settings/fuelgauge/batterytip/b/d;->c:Landroid/content/Context;

    .line 3136
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object v5

    .line 3137
    invoke-virtual {v5, v3, v4, v9}, Lcom/android/settings/fuelgauge/batterytip/d;->a(JI)Ljava/util/List;

    move-result-object v5

    .line 3139
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batterytip/c/a;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/a;

    move-result-object v6

    .line 3140
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batterytip/c/b;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/b;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/settings/fuelgauge/batterytip/c/a;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 3139
    invoke-interface {v5, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3072
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3074
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    invoke-direct {v1, v9, v5}, Lcom/android/settings/fuelgauge/batterytip/c/g;-><init>(ILjava/util/List;)V

    goto :goto_9

    .line 3077
    :cond_c
    iget-object v1, v2, Lcom/android/settings/fuelgauge/batterytip/b/d;->b:Lcom/android/settings/fuelgauge/batterytip/d;

    invoke-virtual {v1, v3, v4, v10}, Lcom/android/settings/fuelgauge/batterytip/d;->a(JI)Ljava/util/List;

    move-result-object v1

    .line 3080
    iget-object v3, v2, Lcom/android/settings/fuelgauge/batterytip/b/d;->e:Lcom/android/settings/fuelgauge/batterytip/c/a;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batterytip/b/d;->d:Lcom/android/settings/fuelgauge/batterytip/c/b;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/c/b;->negate()Ljava/util/function/Predicate;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/fuelgauge/batterytip/c/a;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3081
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/c/g;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    move v8, v10

    :cond_d
    invoke-direct {v2, v8, v1}, Lcom/android/settings/fuelgauge/batterytip/c/g;-><init>(ILjava/util/List;)V

    move-object v1, v2

    goto :goto_9

    .line 3085
    :cond_e
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v10, v2}, Lcom/android/settings/fuelgauge/batterytip/c/g;-><init>(ILjava/util/List;)V

    .line 77
    :goto_9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
