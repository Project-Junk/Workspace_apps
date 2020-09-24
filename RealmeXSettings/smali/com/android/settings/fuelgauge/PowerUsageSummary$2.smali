.class final Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
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
        "Lcom/android/settings/fuelgauge/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

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
            "Lcom/android/settings/fuelgauge/d;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryInfoLoader;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryInfoLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p2, Lcom/android/settings/fuelgauge/d;

    .line 1131
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settings/fuelgauge/d;)V

    .line 1132
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->a:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->h:Lcom/android/settings/fuelgauge/d;

    .line 1133
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c()V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/fuelgauge/d;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
