.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnomalyConfigReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.app.action.STATSD_STARTED"

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 42
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->a(Landroid/content/Context;)V

    .line 45
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/f;->a(Landroid/content/Context;Landroid/app/StatsManager;)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AnomalyConfigReceiver"

    const-string v3, "Failed to uploadAnomalyPendingIntent."

    .line 47
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->a(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coloros/settings/SettingsApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
