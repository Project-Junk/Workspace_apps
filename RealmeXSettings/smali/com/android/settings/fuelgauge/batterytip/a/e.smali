.class public final Lcom/android/settings/fuelgauge/batterytip/a/e;
.super Lcom/android/settings/fuelgauge/batterytip/a/b;
.source "RestrictAppAction.java"


# instance fields
.field c:Lcom/android/settings/fuelgauge/batterytip/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private e:Lcom/android/settings/fuelgauge/batterytip/c/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/c/g;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/a/b;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->e:Lcom/android/settings/fuelgauge/batterytip/c/g;

    .line 47
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->d:Lcom/android/settings/fuelgauge/g;

    .line 48
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->c:Lcom/android/settings/fuelgauge/batterytip/d;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 11

    .line 56
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->e:Lcom/android/settings/fuelgauge/batterytip/c/g;

    .line 1139
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/c/g;->f:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/c;

    .line 60
    iget-object v10, v3, Lcom/android/settings/fuelgauge/batterytip/c;->a:Ljava/lang/String;

    .line 62
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->d:Lcom/android/settings/fuelgauge/g;

    iget v5, v3, Lcom/android/settings/fuelgauge/batterytip/c;->d:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v10, v6}, Lcom/android/settings/fuelgauge/g;->a(ILjava/lang/String;I)V

    .line 64
    iget-object v4, v3, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->b:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v5, 0x0

    const/16 v6, 0x552

    const/4 v9, 0x0

    move v7, p1

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    goto :goto_2

    .line 72
    :cond_0
    iget-object v3, v3, Lcom/android/settings/fuelgauge/batterytip/c;->b:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 73
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->b:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v5, 0x0

    const/16 v6, 0x552

    move v7, p1

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/e;->c:Lcom/android/settings/fuelgauge/batterytip/d;

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/d;->a(Ljava/util/List;)V

    return-void
.end method
