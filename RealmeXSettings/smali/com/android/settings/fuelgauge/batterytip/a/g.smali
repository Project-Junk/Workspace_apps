.class public final Lcom/android/settings/fuelgauge/batterytip/a/g;
.super Lcom/android/settings/fuelgauge/batterytip/a/b;
.source "UnrestrictAppAction.java"


# instance fields
.field c:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Lcom/android/settings/fuelgauge/batterytip/c/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/c/j;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/b;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/a/g;->d:Lcom/android/settings/fuelgauge/batterytip/c/j;

    .line 40
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/g;->c:Lcom/android/settings/fuelgauge/g;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 11

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/g;->d:Lcom/android/settings/fuelgauge/batterytip/c/j;

    .line 1077
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/c/j;->f:Lcom/android/settings/fuelgauge/batterytip/c;

    .line 50
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/a/g;->c:Lcom/android/settings/fuelgauge/g;

    iget v2, v0, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;I)V

    .line 52
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/a/g;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x553

    const/4 v10, 0x0

    move v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method
