.class final Lcom/android/settings/fuelgauge/d$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Lcom/android/settings/fuelgauge/d$b;Lcom/android/internal/os/BatteryStatsHelper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/fuelgauge/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/internal/os/BatteryStatsHelper;

.field final synthetic c:Z

.field final synthetic d:Lcom/android/settings/fuelgauge/d$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;ZLcom/android/settings/fuelgauge/d$b;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/fuelgauge/d$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/d$2;->b:Lcom/android/internal/os/BatteryStatsHelper;

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/d$2;->c:Z

    iput-object p4, p0, Lcom/android/settings/fuelgauge/d$2;->d:Lcom/android/settings/fuelgauge/d$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 2154
    iget-object v1, v0, Lcom/android/settings/fuelgauge/d$2;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/d$2;->b:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v7, v0, Lcom/android/settings/fuelgauge/d$2;->c:Z

    .line 2169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_0

    .line 2171
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v2, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 2173
    invoke-virtual {v2, v5}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 2174
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    goto :goto_0

    .line 2176
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    :goto_0
    move-object v8, v2

    const-string v2, "BatteryInfo"

    const-string/jumbo v9, "time for getStats"

    .line 2178
    invoke-static {v2, v9, v3, v4}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2182
    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    .line 2184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/settingslib/utils/b;->b(J)J

    move-result-wide v9

    .line 2186
    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    const/4 v11, -0x1

    const-string v12, "plugged"

    .line 2190
    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 2204
    invoke-virtual {v8, v9, v10}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v11

    goto :goto_2

    :cond_2
    const-wide/16 v11, 0x0

    .line 2205
    :goto_2
    new-instance v6, Lcom/android/settingslib/j/b;

    .line 2206
    invoke-static {v11, v12}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Lcom/android/settingslib/j/b;-><init>(JZJ)V

    const-string/jumbo v11, "time for regular BatteryInfo"

    .line 2209
    invoke-static {v2, v11, v3, v4}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v2, v5

    move-object v3, v8

    move-object v4, v6

    move-wide v5, v9

    .line 2210
    invoke-static/range {v1 .. v7}, Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/j/b;JZ)Lcom/android/settings/fuelgauge/d;

    move-result-object v1

    return-object v1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 151
    check-cast p1, Lcom/android/settings/fuelgauge/d;

    .line 1159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1160
    iget-object v2, p0, Lcom/android/settings/fuelgauge/d$2;->d:Lcom/android/settings/fuelgauge/d$b;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/d$b;->onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/d;)V

    const-string p1, "BatteryInfo"

    const-string/jumbo v2, "time for callback"

    .line 1161
    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
