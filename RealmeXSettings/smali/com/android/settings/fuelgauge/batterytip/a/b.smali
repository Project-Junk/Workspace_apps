.class public abstract Lcom/android/settings/fuelgauge/batterytip/a/b;
.super Ljava/lang/Object;
.source "BatteryTipAction.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/b;->a:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/b;->b:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method
