.class public Lcom/coloros/anim/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/anim/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/utils/MeanCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/coloros/anim/PerformanceTracker$1;

    invoke-direct {v0, p0}, Lcom/coloros/anim/PerformanceTracker$1;-><init>(Lcom/coloros/anim/PerformanceTracker;)V

    iput-object v0, p0, Lcom/coloros/anim/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/coloros/anim/PerformanceTracker;->enabled:Z

    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/coloros/anim/PerformanceTracker$FrameListener;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/anim/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRenderTimes()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/anim/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/coloros/anim/PerformanceTracker;->enabled:Z

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/anim/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    iget-object v1, p0, Lcom/coloros/anim/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    new-instance v3, Landroid/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/utils/MeanCalculator;

    invoke-virtual {v2}, Lcom/coloros/anim/utils/MeanCalculator;->getMean()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/coloros/anim/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public logRenderTimes()V
    .locals 6

    .line 73
    iget-boolean v0, p0, Lcom/coloros/anim/PerformanceTracker;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    move-result-object p0

    const-string v0, "EffectiveAnimation"

    const-string v1, "Render times:"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 79
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const/4 v4, 0x2

    .line 80
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v5, v4, v1

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "\t\t%30s:%.2f"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/coloros/anim/PerformanceTracker;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/utils/MeanCalculator;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/coloros/anim/utils/MeanCalculator;

    invoke-direct {v0}, Lcom/coloros/anim/utils/MeanCalculator;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/coloros/anim/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    invoke-virtual {v0, p2}, Lcom/coloros/anim/utils/MeanCalculator;->add(F)V

    const-string v0, "__container"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget-object p0, p0, Lcom/coloros/anim/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/PerformanceTracker$FrameListener;

    .line 54
    invoke-interface {p1, p2}, Lcom/coloros/anim/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeFrameListener(Lcom/coloros/anim/PerformanceTracker$FrameListener;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/anim/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/anim/PerformanceTracker;->enabled:Z

    return-void
.end method
