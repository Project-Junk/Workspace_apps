.class public abstract Lb/a/a;
.super Lb/a/at;

# interfaces
.implements La/b/c;
.implements Lb/a/ap;
.implements Lb/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/at;",
        "La/b/c<",
        "TT;>;",
        "Lb/a/ap;",
        "Lb/a/s;"
    }
.end annotation


# instance fields
.field protected final a:La/b/f;

.field private final c:La/b/f;


# direct methods
.method public constructor <init>(La/b/f;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lb/a/at;-><init>(Z)V

    iput-object p1, p0, Lb/a/a;->a:La/b/f;

    iget-object p1, p0, Lb/a/a;->a:La/b/f;

    move-object p2, p0

    check-cast p2, La/b/f;

    invoke-interface {p1, p2}, La/b/f;->plus(La/b/f;)La/b/f;

    move-result-object p1

    iput-object p1, p0, Lb/a/a;->c:La/b/f;

    return-void
.end method


# virtual methods
.method public a()La/b/f;
    .locals 0

    iget-object p0, p0, Lb/a/a;->c:La/b/f;

    return-object p0
.end method

.method public final a(Lb/a/u;Ljava/lang/Object;La/d/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/u;",
            "TR;",
            "La/d/a/m<",
            "-TR;-",
            "La/b/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/a;->c()V

    check-cast p0, La/b/c;

    invoke-virtual {p1, p3, p2, p0}, Lb/a/u;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    instance-of p2, p1, Lb/a/h;

    if-eqz p2, :cond_0

    check-cast p1, Lb/a/h;

    iget-object p1, p1, Lb/a/h;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lb/a/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lb/a/a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "exception"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 0

    invoke-super {p0}, Lb/a/at;->b()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lb/a/a;->a:La/b/f;

    sget-object v1, Lb/a/ap;->b:Lb/a/ap$b;

    check-cast v1, La/b/f$c;

    invoke-interface {v0, v1}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    check-cast v0, Lb/a/ap;

    invoke-virtual {p0, v0}, Lb/a/a;->a(Lb/a/ap;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a;->a:La/b/f;

    check-cast p0, Lb/a/ap;

    invoke-static {v0, p1, p0}, Lb/a/p;->a(La/b/f;Ljava/lang/Throwable;Lb/a/ap;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lb/a/a;->d()V

    return-void
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lb/a/a;->c:La/b/f;

    invoke-static {v0}, Lb/a/l;->a(La/b/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lb/a/at;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lb/a/at;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()La/b/f;
    .locals 0

    iget-object p0, p0, Lb/a/a;->c:La/b/f;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lb/a/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lb/a/a;->f()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lb/a/a;->a(Ljava/lang/Object;I)Z

    return-void
.end method
