.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

.field private final synthetic f$1:Lcom/android/settings/fuelgauge/batterytip/d;

.field private final synthetic f$2:Lcom/android/settings/fuelgauge/batterytip/e;

.field private final synthetic f$3:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;Lcom/android/settings/fuelgauge/batterytip/d;Lcom/android/settings/fuelgauge/batterytip/e;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$1:Lcom/android/settings/fuelgauge/batterytip/d;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$2:Lcom/android/settings/fuelgauge/batterytip/e;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$3:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$1:Lcom/android/settings/fuelgauge/batterytip/d;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$2:Lcom/android/settings/fuelgauge/batterytip/e;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$olr4muW1d4IkOxExkS7WJjNoq6w;->f$3:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->lambda$olr4muW1d4IkOxExkS7WJjNoq6w(Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;Lcom/android/settings/fuelgauge/batterytip/d;Lcom/android/settings/fuelgauge/batterytip/e;Landroid/app/job/JobParameters;)V

    return-void
.end method
