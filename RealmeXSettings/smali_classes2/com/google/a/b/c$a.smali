.class final Lcom/google/a/b/c$a;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field c:I

.field d:J

.field final synthetic e:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;IJLjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TF;>;IJ)V"
        }
    .end annotation

    .line 217
    iput-object p6, p0, Lcom/google/a/b/c$a;->e:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    .line 219
    iput-object p2, p0, Lcom/google/a/b/c$a;->b:Ljava/util/Spliterator;

    .line 220
    iput p3, p0, Lcom/google/a/b/c$a;->c:I

    .line 221
    iput-wide p4, p0, Lcom/google/a/b/c$a;->d:J

    return-void
.end method

.method private synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 235
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    return-void
.end method

.method private static synthetic a(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 247
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Spliterator;

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$RNGQFG2RkWXNSRQi7lH8Z8wUkOc(Lcom/google/a/b/c$a;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/c$a;->a(Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$XuqY2HnX4mCNd8_EzAJI1SbRfLI(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/a/b/c$a;->a(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/google/a/b/c$a;->c:I

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 278
    iget-wide v1, p0, Lcom/google/a/b/c$a;->d:J

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/a/b/c$a;->d:J

    .line 280
    :cond_0
    iget-wide v0, p0, Lcom/google/a/b/c$a;->d:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/c$a;->b:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/google/a/b/c$a;->e:Ljava/util/function/Function;

    new-instance v2, Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;

    invoke-direct {v2, v1, p1}, Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;-><init>(Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x0

    .line 248
    iput-wide v0, p0, Lcom/google/a/b/c$a;->d:J

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-wide v0, p0, Lcom/google/a/b/c$a;->d:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 229
    iput-wide v0, p0, Lcom/google/a/b/c$a;->d:J

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    .line 235
    iget-object v0, p0, Lcom/google/a/b/c$a;->b:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/google/a/b/c$a;->e:Ljava/util/function/Function;

    new-instance v2, Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;

    invoke-direct {v2, p0, v1}, Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;-><init>(Lcom/google/a/b/c$a;Ljava/util/function/Function;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/a/b/c$a;->b:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 255
    iget v1, p0, Lcom/google/a/b/c$a;->c:I

    and-int/lit8 v4, v1, -0x41

    .line 256
    invoke-virtual {p0}, Lcom/google/a/b/c$a;->estimateSize()J

    move-result-wide v1

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    const-wide/16 v5, 0x2

    .line 258
    div-long/2addr v1, v5

    .line 259
    iget-wide v5, p0, Lcom/google/a/b/c$a;->d:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lcom/google/a/b/c$a;->d:J

    .line 260
    iput v4, p0, Lcom/google/a/b/c$a;->c:I

    :cond_0
    move-wide v5, v1

    .line 262
    new-instance v8, Lcom/google/a/b/c$a;

    iget-object v2, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    iget-object v7, p0, Lcom/google/a/b/c$a;->e:Ljava/util/function/Function;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/a/b/c$a;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;IJLjava/util/function/Function;)V

    .line 264
    iput-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    return-object v8

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    .line 268
    iput-object v0, p0, Lcom/google/a/b/c$a;->a:Ljava/util/Spliterator;

    return-object v1

    :cond_2
    return-object v0
.end method
