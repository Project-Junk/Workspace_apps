.class La/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(La/d/a/a;)La/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/d/a/a<",
            "+TT;>;)",
            "La/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/m;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, La/m;-><init>(La/d/a/a;Ljava/lang/Object;ILa/d/b/e;)V

    check-cast v0, La/e;

    return-object v0
.end method
