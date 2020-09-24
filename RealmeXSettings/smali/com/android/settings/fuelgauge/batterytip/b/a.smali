.class public Lcom/android/settings/fuelgauge/batterytip/b/a;
.super Ljava/lang/Object;
.source "EarlyWarningDetector.java"


# instance fields
.field public a:Lcom/android/settings/fuelgauge/batterytip/e;

.field public b:Landroid/os/PowerManager;

.field public c:Landroid/content/Context;

.field private d:Lcom/android/settings/fuelgauge/i;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/e;Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/a;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    const-string p1, "power"

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/a;->b:Landroid/os/PowerManager;

    .line 43
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/a;->c:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/a;->d:Lcom/android/settings/fuelgauge/i;

    return-void
.end method
