.class public Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryStatsHelperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/os/UserManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->a:Landroid/os/UserManager;

    .line 39
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->b:Lcom/android/settings/fuelgauge/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->a:Landroid/os/UserManager;

    const/4 v2, 0x0

    .line 1462
    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 1463
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    return-object v1
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->b()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    return-object v0
.end method
