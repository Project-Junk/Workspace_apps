.class public final Lcom/android/settings/fuelgauge/batterytip/b/d;
.super Ljava/lang/Object;
.source "RestrictAppDetector.java"


# instance fields
.field public a:Lcom/android/settings/fuelgauge/batterytip/e;

.field public b:Lcom/android/settings/fuelgauge/batterytip/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public c:Landroid/content/Context;

.field public d:Lcom/android/settings/fuelgauge/batterytip/c/b;

.field public e:Lcom/android/settings/fuelgauge/batterytip/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/e;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/d;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/d;->a:Lcom/android/settings/fuelgauge/batterytip/e;

    .line 57
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/d;->b:Lcom/android/settings/fuelgauge/batterytip/d;

    .line 58
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/c/b;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/b;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/b/d;->d:Lcom/android/settings/fuelgauge/batterytip/c/b;

    .line 59
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/c/a;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/c/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/b/d;->e:Lcom/android/settings/fuelgauge/batterytip/c/a;

    return-void
.end method
