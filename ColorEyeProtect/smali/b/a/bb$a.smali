.class public final Lb/a/bb$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lb/a/bb;La/b/f$c;)La/b/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::",
            "La/b/f$b;",
            ">(",
            "Lb/a/bb<",
            "TS;>;",
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

.method public static a(Lb/a/bb;La/b/f;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/bb<",
            "TS;>;",
            "La/b/f;",
            ")",
            "La/b/f;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La/b/f$b;

    invoke-static {p0, p1}, La/b/f$b$a;->a(La/b/f$b;La/b/f;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/a/bb;Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/bb<",
            "TS;>;TR;",
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

.method public static b(Lb/a/bb;La/b/f$c;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/bb<",
            "TS;>;",
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
