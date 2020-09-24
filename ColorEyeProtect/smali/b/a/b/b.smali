.class public final Lb/a/b/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(La/d/a/m;Ljava/lang/Object;La/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "La/d/a/m<",
            "-TR;-",
            "La/b/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "La/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, La/b/c;->getContext()La/b/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/a/o;->a(La/b/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    :try_start_1
    invoke-static {p0, v2}, La/d/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/d/a/m;

    invoke-interface {p0, p1, p2}, La/d/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {}, La/b/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, La/k;->a:La/k$a;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {v0, v1}, Lb/a/a/o;->b(La/b/f;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, La/k;->a:La/k$a;

    invoke-static {p0}, La/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
