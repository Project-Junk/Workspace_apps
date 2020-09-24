.class La/b/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(La/b/c;)La/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/b/c<",
            "-TT;>;)",
            "La/b/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$intercepted"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, La/b/b/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, La/b/b/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, La/b/b/a/c;->intercepted()La/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final a(La/d/a/m;Ljava/lang/Object;La/b/c;)La/b/c;
    .locals 8
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
            "-TT;>;)",
            "La/b/c<",
            "La/r;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, La/b/b/a/g;->a(La/b/c;)La/b/c;

    move-result-object v4

    instance-of p2, p0, La/b/b/a/a;

    if-eqz p2, :cond_0

    check-cast p0, La/b/b/a/a;

    invoke-virtual {p0, p1, v4}, La/b/b/a/a;->create(Ljava/lang/Object;La/b/c;)La/b/c;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-interface {v4}, La/b/c;->getContext()La/b/f;

    move-result-object v5

    sget-object p2, La/b/g;->a:La/b/g;

    if-ne v5, p2, :cond_2

    new-instance p2, La/b/a/c$a;

    if-eqz v4, :cond_1

    invoke-direct {p2, v4, v4, p0, p1}, La/b/a/c$a;-><init>(La/b/c;La/b/c;La/d/a/m;Ljava/lang/Object;)V

    :goto_0
    check-cast p2, La/b/c;

    move-object p0, p2

    goto :goto_1

    :cond_1
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p2, La/b/a/c$b;

    if-eqz v4, :cond_3

    move-object v1, p2

    move-object v2, v4

    move-object v3, v5

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, La/b/a/c$b;-><init>(La/b/c;La/b/f;La/b/c;La/b/f;La/d/a/m;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method
