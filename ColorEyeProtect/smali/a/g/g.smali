.class La/g/g;
.super La/g/f;


# direct methods
.method public static final a(La/g/a;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/g/a<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asIterable"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/g/g$a;

    invoke-direct {v0, p0}, La/g/g$a;-><init>(La/g/a;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
