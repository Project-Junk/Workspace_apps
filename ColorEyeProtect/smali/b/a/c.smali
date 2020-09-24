.class final synthetic Lb/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lb/a/s;La/b/f;Lb/a/u;La/d/a/m;)Lb/a/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/s;",
            "La/b/f;",
            "Lb/a/u;",
            "La/d/a/m<",
            "-",
            "Lb/a/s;",
            "-",
            "La/b/c<",
            "-",
            "La/r;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lb/a/ap;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lb/a/l;->a(Lb/a/s;La/b/f;)La/b/f;

    move-result-object p0

    invoke-virtual {p2}, Lb/a/u;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lb/a/av;

    invoke-direct {p1, p0, p3}, Lb/a/av;-><init>(La/b/f;La/d/a/m;)V

    check-cast p1, Lb/a/ba;

    goto :goto_0

    :cond_0
    new-instance p1, Lb/a/ba;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lb/a/ba;-><init>(La/b/f;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lb/a/ba;->a(Lb/a/u;Ljava/lang/Object;La/d/a/m;)V

    check-cast p1, Lb/a/ap;

    return-object p1
.end method

.method public static synthetic a(Lb/a/s;La/b/f;Lb/a/u;La/d/a/m;ILjava/lang/Object;)Lb/a/ap;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, La/b/g;->a:La/b/g;

    check-cast p1, La/b/f;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lb/a/u;->a:Lb/a/u;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lb/a/b;->a(Lb/a/s;La/b/f;Lb/a/u;La/d/a/m;)Lb/a/ap;

    move-result-object p0

    return-object p0
.end method
