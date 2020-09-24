.class public final Lcom/android/settings/fuelgauge/batterytip/a/d;
.super Lcom/android/settings/fuelgauge/batterytip/a/b;
.source "OpenRestrictAppFragmentAction.java"


# instance fields
.field c:Lcom/android/settings/fuelgauge/batterytip/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Lcom/android/settings/fuelgauge/batterytip/c/g;

.field private final e:Lcom/android/settings/core/InstrumentedPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/c/g;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/a/b;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->e:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 46
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->d:Lcom/android/settings/fuelgauge/batterytip/c/g;

    .line 47
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->c:Lcom/android/settings/fuelgauge/batterytip/d;

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->c:Lcom/android/settings/fuelgauge/batterytip/d;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$l048eUvA7fvdyHziG6_u6dCqBtQ(Lcom/android/settings/fuelgauge/batterytip/a/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/d;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->a:Landroid/content/Context;

    const/16 v2, 0x551

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->d:Lcom/android/settings/fuelgauge/batterytip/c/g;

    .line 1139
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/d;->e:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    .line 61
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/a/-$$Lambda$d$l048eUvA7fvdyHziG6_u6dCqBtQ;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/-$$Lambda$d$l048eUvA7fvdyHziG6_u6dCqBtQ;-><init>(Lcom/android/settings/fuelgauge/batterytip/a/d;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
