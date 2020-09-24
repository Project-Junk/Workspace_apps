.class public Lcom/android/settings/fuelgauge/BatteryInfoLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/settings/fuelgauge/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/android/internal/os/BatteryStatsHelper;

.field b:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->a:Lcom/android/internal/os/BatteryStatsHelper;

    .line 41
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->b:Lcom/android/settings/fuelgauge/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->b:Lcom/android/settings/fuelgauge/g;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->a:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v2, "BatteryInfoLoader"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/d;

    move-result-object v0

    return-object v0
.end method
