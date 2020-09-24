.class public final La/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static final a(La/d/a/m;Ljava/lang/Object;La/b/c;)V
    .locals 1
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

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, La/b/a/b;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)La/b/c;

    move-result-object p0

    invoke-static {p0}, La/b/a/b;->a(La/b/c;)La/b/c;

    move-result-object p0

    sget-object p1, La/r;->a:La/r;

    sget-object p2, La/k;->a:La/k$a;

    invoke-static {p1}, La/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, La/b/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
