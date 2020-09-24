.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$EswD9diaZNy34G3VwGn5PCuiyQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$EswD9diaZNy34G3VwGn5PCuiyQo;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$EswD9diaZNy34G3VwGn5PCuiyQo;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$EswD9diaZNy34G3VwGn5PCuiyQo;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$EswD9diaZNy34G3VwGn5PCuiyQo;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->lambda$EswD9diaZNy34G3VwGn5PCuiyQo(Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;Landroid/app/job/JobParameters;)V

    return-void
.end method
