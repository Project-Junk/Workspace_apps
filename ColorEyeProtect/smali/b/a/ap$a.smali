.class public final Lb/a/ap$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lb/a/ap;La/b/f$c;)La/b/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "La/b/f$b;",
            ">(",
            "Lb/a/ap;",
            "La/b/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La/b/f$b;

    invoke-static {p0, p1}, La/b/f$b$a;->a(La/b/f$b;La/b/f$c;)La/b/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/a/ap;La/b/f;)La/b/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La/b/f$b;

    invoke-static {p0, p1}, La/b/f$b$a;->a(La/b/f$b;La/b/f;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lb/a/ap;ZZLa/d/a/b;ILjava/lang/Object;)Lb/a/ae;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lb/a/ap;->a(ZZLa/d/a/b;)Lb/a/ae;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb/a/ap;Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/ap;",
            "TR;",
            "La/d/a/m<",
            "-TR;-",
            "La/b/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La/b/f$b;

    invoke-static {p0, p1, p2}, La/b/f$b$a;->a(La/b/f$b;Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lb/a/ap;La/b/f$c;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/ap;",
            "La/b/f$c<",
            "*>;)",
            "La/b/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La/b/f$b;

    invoke-static {p0, p1}, La/b/f$b$a;->b(La/b/f$b;La/b/f$c;)La/b/f;

    move-result-object p0

    return-object p0
.end method
