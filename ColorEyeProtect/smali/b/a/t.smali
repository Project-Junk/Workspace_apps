.class public final Lb/a/t;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lb/a/s;)Z
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lb/a/s;->a()La/b/f;

    move-result-object p0

    sget-object v0, Lb/a/ap;->b:Lb/a/ap$b;

    check-cast v0, La/b/f$c;

    invoke-interface {p0, v0}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object p0

    check-cast p0, Lb/a/ap;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lb/a/ap;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
