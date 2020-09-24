.class public final Lcom/android/settings/fuelgauge/batterytip/a/c;
.super Lcom/android/settings/fuelgauge/batterytip/a/b;
.source "OpenBatterySaverAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/a/c;->a:Landroid/content/Context;

    const/16 v2, 0x56c

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 42
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method
