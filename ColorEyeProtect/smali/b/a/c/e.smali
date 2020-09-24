.class public Lb/a/c/e;
.super Lb/a/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/i<",
        "Lb/a/c/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/i;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public d()Lb/a/c/i;
    .locals 11

    :goto_0
    iget-object v0, p0, Lb/a/a/i;->a:Ljava/lang/Object;

    check-cast v0, Lb/a/a/j;

    :cond_0
    :goto_1
    iget-wide v3, v0, Lb/a/a/j;->a:J

    const-wide/high16 v1, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    sget-object v7, Lb/a/a/j;->c:Lb/a/a/m;

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lb/a/a/j;->d:Lb/a/a/j$a;

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    const/4 v5, 0x0

    shr-long/2addr v1, v5

    long-to-int v8, v1

    const-wide v1, 0xfffffffc0000000L

    and-long/2addr v1, v3

    const/16 v6, 0x1e

    shr-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v1, v2

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v2, v8

    if-ne v1, v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v0}, Lb/a/a/j;->b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-static {v0}, Lb/a/a/j;->c(Lb/a/a/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_3
    instance-of v1, v9, Lb/a/a/j$b;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v9

    check-cast v1, Lb/a/c/i;

    invoke-virtual {v1}, Lb/a/c/i;->c()Lb/a/c/l;

    move-result-object v1

    sget-object v2, Lb/a/c/l;->b:Lb/a/c/l;

    if-ne v1, v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v8, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    and-int v10, v1, v2

    sget-object v1, Lb/a/a/j;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Lb/a/a/j;->d:Lb/a/a/j$a;

    invoke-virtual {v2, v3, v4, v10}, Lb/a/a/j$a;->a(JI)J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lb/a/a/j;->b(Lb/a/a/j;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-static {v0}, Lb/a/a/j;->a(Lb/a/a/j;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-static {v0}, Lb/a/a/j;->c(Lb/a/a/j;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    :goto_2
    invoke-static {v1, v8, v10}, Lb/a/a/j;->a(Lb/a/a/j;II)Lb/a/a/j;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    move-object v7, v9

    :goto_4
    sget-object v1, Lb/a/a/j;->c:Lb/a/a/m;

    if-eq v7, v1, :cond_a

    check-cast v7, Lb/a/c/i;

    return-object v7

    :cond_a
    sget-object v1, Lb/a/a/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lb/a/a/j;->e()Lb/a/a/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
