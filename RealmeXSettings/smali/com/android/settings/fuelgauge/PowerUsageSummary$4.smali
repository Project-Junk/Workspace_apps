.class final Lcom/android/settings/fuelgauge/PowerUsageSummary$4;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/batterytip/c/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c/c;",
            ">;>;"
        }
    .end annotation

    .line 192
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 188
    check-cast p2, Ljava/util/List;

    .line 1198
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->updateBatteryTips(Ljava/util/List;)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c/c;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
