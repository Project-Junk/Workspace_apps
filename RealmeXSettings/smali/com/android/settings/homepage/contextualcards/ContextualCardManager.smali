.class public Lcom/android/settings/homepage/contextualcards/ContextualCardManager;
.super Ljava/lang/Object;
.source "ContextualCardManager.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$a;
.implements Lcom/android/settings/homepage/contextualcards/h;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardManager$a;
    }
.end annotation


# static fields
.field private static final h:[I


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/android/settings/homepage/contextualcards/h;

.field final c:Lcom/android/settings/homepage/contextualcards/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation
.end field

.field e:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->j:Ljava/util/List;

    .line 107
    new-instance p1, Lcom/android/settings/homepage/contextualcards/i;

    invoke-direct {p1}, Lcom/android/settings/homepage/contextualcards/i;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->c:Lcom/android/settings/homepage/contextualcards/i;

    .line 108
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->f:Z

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->g:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string p1, "key_contextual_cards"

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->g:Ljava/util/List;

    .line 116
    :goto_0
    sget-object p1, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->h:[I

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget v0, p1, p3

    .line 117
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static synthetic a(Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/b;)I
    .locals 2

    .line 7086
    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/b;->b:D

    .line 8086
    iget-wide p0, p0, Lcom/android/settings/homepage/contextualcards/b;->b:D

    .line 156
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/b;

    .line 133
    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/b;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->c:Lcom/android/settings/homepage/contextualcards/i;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/homepage/contextualcards/i;->a(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot find ContextualCardController for type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextualCardManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/settings/homepage/contextualcards/c;->a(Lcom/android/settings/homepage/contextualcards/h;)V

    .line 146
    instance-of p1, v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->j:Ljava/util/List;

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static synthetic a(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 0

    .line 182
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x1

    move v1, p0

    .line 317
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 318
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/homepage/contextualcards/b;

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/b;

    .line 3098
    iget v5, v4, Lcom/android/settings/homepage/contextualcards/b;->d:I

    if-ne v5, p0, :cond_0

    .line 4098
    iget v5, v3, Lcom/android/settings/homepage/contextualcards/b;->d:I

    if-ne v5, p0, :cond_0

    .line 4170
    iget-object v3, v3, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    const v5, 0x7f0d0123

    .line 4390
    iput v5, v3, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 323
    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v3

    .line 322
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5170
    iget-object v2, v4, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    .line 5390
    iput v5, v2, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 325
    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v2

    .line 324
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/2addr v1, p0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private synthetic b(Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static synthetic b(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 0

    .line 178
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 337
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 338
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/b;

    .line 6098
    iget v3, v2, Lcom/android/settings/homepage/contextualcards/b;->d:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 6170
    iget-object p0, v2, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    const v2, 0x7f0d0121

    .line 6390
    iput v2, p0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object p0

    .line 340
    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$2dS23vlRQn2EPDv50uwTDg1U5Gg(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(Lcom/android/settings/homepage/contextualcards/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$IfZ0W5MVlKBdDYdjPTFKMruFLK8(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->b(Lcom/android/settings/homepage/contextualcards/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$InZRx4FqRpPG66csiTcsQFER_Zc(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->b(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$V5GWh9R4JruKvtvRHKA61f6X_Lk(Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/b;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$eNaqqYQNIHqkpp7yaugDFaK06_Q(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->e:J

    sub-long/2addr v0, v2

    .line 208
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Total loading time = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextualCardManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1352
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$IfZ0W5MVlKBdDYdjPTFKMruFLK8;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$IfZ0W5MVlKBdDYdjPTFKMruFLK8;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    .line 1353
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1354
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 1355
    iput-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->g:Ljava/util/List;

    goto :goto_0

    .line 1359
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$2dS23vlRQn2EPDv50uwTDg1U5Gg;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$2dS23vlRQn2EPDv50uwTDg1U5Gg;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    .line 1360
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1361
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    .line 213
    invoke-static {v3}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v3

    .line 216
    iget-boolean v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->f:Z

    const/16 v5, 0x67f

    if-nez v4, :cond_1

    .line 217
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$PLIfL87pKql-moh1fdf252tNG18;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$PLIfL87pKql-moh1fdf252tNG18;

    .line 218
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(Ljava/util/Map;)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    .line 221
    invoke-static {v2}, Lcom/android/settings/homepage/contextualcards/a/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v3, p1, v5, v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    .line 2309
    :cond_1
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-wide/16 v6, 0x3e8

    const-string v4, "global_card_loader_timeout_key"

    invoke-static {v2, v4, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-gtz v2, :cond_2

    .line 227
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$PLIfL87pKql-moh1fdf252tNG18;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$PLIfL87pKql-moh1fdf252tNG18;

    .line 228
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a(Ljava/util/Map;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    .line 231
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/a/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {v3, v0, v5, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x695

    const/16 v7, 0x5de

    const/4 v8, 0x0

    long-to-int v9, v0

    move-object v4, v3

    .line 234
    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 240
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->e:J

    sub-long/2addr v0, v4

    .line 241
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a:Landroid/content/Context;

    const/16 v2, 0x67e

    long-to-int v0, v0

    invoke-virtual {v3, p1, v2, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->f:Z

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;>;)V"
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$InZRx4FqRpPG66csiTcsQFER_Zc;

    invoke-direct {v2, v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$InZRx4FqRpPG66csiTcsQFER_Zc;-><init>(Ljava/util/Set;)V

    .line 178
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 179
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$eNaqqYQNIHqkpp7yaugDFaK06_Q;

    invoke-direct {v2, v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$eNaqqYQNIHqkpp7yaugDFaK06_Q;-><init>(Ljava/util/Set;)V

    .line 182
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 183
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 186
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 188
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1155
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;

    .line 1156
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1157
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    .line 1297
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1301
    :cond_1
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1302
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 194
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->a()V

    .line 198
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->b:Lcom/android/settings/homepage/contextualcards/h;

    if-eqz p1, :cond_2

    .line 199
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v0, 0x0

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->b:Lcom/android/settings/homepage/contextualcards/h;

    invoke-interface {v0, p1}, Lcom/android/settings/homepage/contextualcards/h;->a(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$jmtDrtUWqu-LhbAi4KvsHhHcS3I;

    .line 250
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    .line 251
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "key_contextual_cards"

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
