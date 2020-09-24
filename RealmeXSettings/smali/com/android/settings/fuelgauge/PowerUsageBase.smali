.class public abstract Lcom/android/settings/fuelgauge/PowerUsageBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/fuelgauge/b;

.field protected c:Lcom/android/internal/os/BatteryStatsHelper;

.field protected d:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic c(I)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->b(I)V

    return-void
.end method

.method public static synthetic lambda$Tvw6XIsxGZgsOudwuPgcNDfinlo(Lcom/android/settings/fuelgauge/PowerUsageBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->c(I)V

    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method protected final a(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V
    .locals 3

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->c:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->a(Lcom/android/internal/os/BatteryStatsHelper;)V

    const-string p1, "PowerUsageBase"

    const-string/jumbo v2, "updatePreference"

    .line 96
    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected b(I)V
    .locals 3

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_type"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/app/Activity;)V

    const-string/jumbo v0, "user"

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->d:Landroid/os/UserManager;

    .line 52
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->c:Lcom/android/internal/os/BatteryStatsHelper;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->c:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->setHasOptionsMenu(Z)V

    .line 61
    new-instance p1, Lcom/android/settings/fuelgauge/b;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/fuelgauge/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->a:Lcom/android/settings/fuelgauge/b;

    .line 62
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->a:Lcom/android/settings/fuelgauge/b;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$Tvw6XIsxGZgsOudwuPgcNDfinlo;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$Tvw6XIsxGZgsOudwuPgcNDfinlo;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    .line 1084
    iput-object v0, p1, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->a:Lcom/android/settings/fuelgauge/b;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/b;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->a:Lcom/android/settings/fuelgauge/b;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/b;->a()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method
