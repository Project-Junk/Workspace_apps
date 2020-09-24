.class public abstract Lb/a/m;
.super La/b/a;

# interfaces
.implements La/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, La/b/d;->a:La/b/d$b;

    check-cast v0, La/b/f$c;

    invoke-direct {p0, v0}, La/b/a;-><init>(La/b/f$c;)V

    return-void
.end method


# virtual methods
.method public final a(La/b/c;)La/b/c;
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

    const-string v0, "continuation"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb/a/aa;

    invoke-direct {v0, p0, p1}, Lb/a/aa;-><init>(Lb/a/m;La/b/c;)V

    check-cast v0, La/b/c;

    return-object v0
.end method

.method public abstract a(La/b/f;Ljava/lang/Runnable;)V
.end method

.method public a(La/b/f;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public b(La/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La/b/d$a;->a(La/b/d;La/b/c;)V

    return-void
.end method

.method public get(La/b/f$c;)La/b/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "La/b/f$b;",
            ">(",
            "La/b/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La/b/d$a;->a(La/b/d;La/b/f$c;)La/b/f$b;

    move-result-object p0

    return-object p0
.end method

.method public minusKey(La/b/f$c;)La/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/f$c<",
            "*>;)",
            "La/b/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La/b/d$a;->b(La/b/d;La/b/f$c;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lb/a/w;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb/a/w;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
