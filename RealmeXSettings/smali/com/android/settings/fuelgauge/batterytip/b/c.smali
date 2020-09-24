.class public final Lcom/android/settings/fuelgauge/batterytip/b/c;
.super Ljava/lang/Object;
.source "LowBatteryDetector.java"


# instance fields
.field public a:Lcom/android/settings/fuelgauge/d;

.field public b:Lcom/android/settings/fuelgauge/batterytip/e;

.field public c:Landroid/os/PowerManager;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/e;Lcom/android/settings/fuelgauge/d;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/c;->b:Lcom/android/settings/fuelgauge/batterytip/e;

    .line 41
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/b/c;->a:Lcom/android/settings/fuelgauge/d;

    const-string p2, "power"

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/c;->c:Landroid/os/PowerManager;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "com.android.internal.R.integer.config_lowBatteryWarningLevel"

    .line 44
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/c;->d:I

    return-void
.end method
