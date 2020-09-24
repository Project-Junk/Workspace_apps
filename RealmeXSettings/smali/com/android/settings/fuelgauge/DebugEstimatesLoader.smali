.class public Lcom/android/settings/fuelgauge/DebugEstimatesLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "DebugEstimatesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->a:Lcom/android/internal/os/BatteryStatsHelper;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 13

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1051
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1054
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide v0

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    .line 1058
    iget-object v2, p0, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->a:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v10

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1217
    new-instance v11, Lcom/android/settingslib/j/b;

    .line 1218
    invoke-virtual {v10, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/settingslib/j/b;-><init>(JZJ)V

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-wide v6, v0

    .line 1221
    invoke-static/range {v2 .. v8}, Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/j/b;JZ)Lcom/android/settings/fuelgauge/d;

    move-result-object v11

    .line 1065
    new-instance v8, Lcom/android/settingslib/j/b;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/j/b;-><init>(JZJ)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/DebugEstimatesLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v12, 0x0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v8

    move-wide v6, v0

    move v8, v12

    invoke-static/range {v2 .. v8}, Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/j/b;JZ)Lcom/android/settings/fuelgauge/d;

    move-result-object v0

    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
