.class public final Lcom/android/settings/fuelgauge/batterytip/a/a;
.super Lcom/android/settings/fuelgauge/batterytip/a/b;
.source "BatterySaverAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;ZZ)Z

    .line 35
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/a;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/a/a;->a:Landroid/content/Context;

    const/16 v2, 0x555

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void
.end method
