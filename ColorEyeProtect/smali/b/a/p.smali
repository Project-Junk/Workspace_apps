.class public final Lb/a/p;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "originalException"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thrownException"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while trying to handle coroutine exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0, p0}, La/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final a(La/b/f;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lb/a/n;->a:Lb/a/n$a;

    check-cast v0, La/b/f$c;

    invoke-interface {p0, v0}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    check-cast v0, Lb/a/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lb/a/n;->handleException(La/b/f;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lb/a/o;->a(La/b/f;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lb/a/p;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, Lb/a/o;->a(La/b/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final a(La/b/f;Ljava/lang/Throwable;Lb/a/ap;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lb/a/ap;->b:Lb/a/ap$b;

    check-cast v0, La/b/f$c;

    invoke-interface {p0, v0}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    check-cast v0, Lb/a/ap;

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-interface {v0, p1}, Lb/a/ap;->d(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lb/a/p;->a(La/b/f;Ljava/lang/Throwable;)V

    return-void
.end method
