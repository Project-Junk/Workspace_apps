.class public abstract Lb/a/ah$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/r;
.implements Lb/a/ae;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/r;",
        "Lb/a/ae;",
        "Ljava/lang/Comparable<",
        "Lb/a/ah$a;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:J

.field private b:Ljava/lang/Object;

.field private c:I


# virtual methods
.method public a(Lb/a/ah$a;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lb/a/ah$a;->a:J

    iget-wide p0, p1, Lb/a/ah$a;->a:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/ah$a;->b:Ljava/lang/Object;

    invoke-static {}, Lb/a/ai;->a()Lb/a/a/m;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v1, v0, Lb/a/a/q;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lb/a/a/q;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lb/a/a/r;

    invoke-virtual {v0, v1}, Lb/a/a/q;->a(Lb/a/a/r;)Z

    :cond_2
    invoke-static {}, Lb/a/ai;->a()Lb/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lb/a/ah$a;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lb/a/ah$a;->c:I

    return-void
.end method

.method public a(Lb/a/a/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/q<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/ah$a;->b:Ljava/lang/Object;

    invoke-static {}, Lb/a/ai;->a()Lb/a/a/m;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lb/a/ah$a;->b:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final a(J)Z
    .locals 2

    iget-wide v0, p0, Lb/a/ah$a;->a:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Lb/a/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/q<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lb/a/ah$a;->b:Ljava/lang/Object;

    instance-of v0, p0, Lb/a/a/q;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lb/a/a/q;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lb/a/ah$a;->c:I

    return p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/a/ah$a;

    invoke-virtual {p0, p1}, Lb/a/ah$a;->a(Lb/a/ah$a;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/ah$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
