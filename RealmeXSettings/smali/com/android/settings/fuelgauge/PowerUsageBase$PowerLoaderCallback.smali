.class public Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;
.super Ljava/lang/Object;
.source "PowerUsageBase.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/fuelgauge/PowerUsageBase;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->a:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    const-string p1, "refresh_type"

    .line 109
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->b:I

    .line 110
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->a:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    .line 1116
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->a:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageBase;->c:Lcom/android/internal/os/BatteryStatsHelper;

    .line 1117
    iget p2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->b:I

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->a(I)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
