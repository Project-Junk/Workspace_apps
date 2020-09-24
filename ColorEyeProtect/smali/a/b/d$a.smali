.class public final La/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(La/b/d;La/b/f$c;)La/b/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "La/b/f$b;",
            ">(",
            "La/b/d;",
            "La/b/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La/b/d;->a:La/b/d$b;

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, La/b/f$b;

    goto :goto_0

    :cond_0
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type E"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(La/b/d;La/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/d;",
            "La/b/c<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "continuation"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b(La/b/d;La/b/f$c;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/d;",
            "La/b/f$c<",
            "*>;)",
            "La/b/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La/b/d;->a:La/b/d$b;

    if-ne p1, v0, :cond_0

    sget-object p0, La/b/g;->a:La/b/g;

    :cond_0
    check-cast p0, La/b/f;

    return-object p0
.end method
