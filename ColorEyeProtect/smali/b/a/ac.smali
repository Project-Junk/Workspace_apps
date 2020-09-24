.class public abstract Lb/a/ac;
.super Lb/a/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/c/i;"
    }
.end annotation


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lb/a/c/i;-><init>()V

    iput p1, p0, Lb/a/ac;->e:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public abstract b()La/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Lb/a/h;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lb/a/h;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lb/a/h;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public final run()V
    .locals 7

    iget-object v0, p0, Lb/a/ac;->g:Lb/a/c/j;

    :try_start_0
    invoke-virtual {p0}, Lb/a/ac;->b()La/b/c;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lb/a/aa;

    iget-object v2, v1, Lb/a/aa;->d:La/b/c;

    invoke-interface {v2}, La/b/c;->getContext()La/b/f;

    move-result-object v3

    iget v4, p0, Lb/a/ac;->e:I

    invoke-static {v4}, Lb/a/az;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lb/a/ap;->b:Lb/a/ap$b;

    check-cast v4, La/b/f$c;

    invoke-interface {v3, v4}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v4

    check-cast v4, Lb/a/ap;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lb/a/ac;->a()Ljava/lang/Object;

    move-result-object v5

    iget-object v1, v1, Lb/a/aa;->b:Ljava/lang/Object;

    invoke-static {v3, v1}, Lb/a/a/o;->a(La/b/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Lb/a/ap;->b()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Lb/a/ap;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    sget-object v5, La/k;->a:La/k$a;

    invoke-static {v4}, La/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    invoke-interface {v2, v4}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v5}, Lb/a/ac;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, La/k;->a:La/k$a;

    invoke-static {v4}, La/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lb/a/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, La/k;->a:La/k$a;

    invoke-static {v4}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :goto_2
    sget-object v2, La/r;->a:La/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v1}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Lb/a/c/j;->a()V

    return-void

    :goto_3
    :try_start_3
    invoke-static {v3, v1}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V

    throw v2

    :cond_3
    new-instance v1, La/o;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, La/o;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_4
    new-instance v2, Lb/a/z;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lb/a/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    invoke-interface {v0}, Lb/a/c/j;->a()V

    throw p0
.end method
