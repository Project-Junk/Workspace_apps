.class public abstract La/b/a;
.super Ljava/lang/Object;

# interfaces
.implements La/b/f$b;


# instance fields
.field private final key:La/b/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/f$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/f$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/a;->key:La/b/f$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "La/d/a/m<",
            "-TR;-",
            "La/b/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, La/b/f$b$a;->a(La/b/f$b;Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    invoke-static {p0, p1}, La/b/f$b$a;->a(La/b/f$b;La/b/f$c;)La/b/f$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()La/b/f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/f$c<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, La/b/a;->key:La/b/f$c;

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

    invoke-static {p0, p1}, La/b/f$b$a;->b(La/b/f$b;La/b/f$c;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(La/b/f;)La/b/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La/b/f$b$a;->a(La/b/f$b;La/b/f;)La/b/f;

    move-result-object p0

    return-object p0
.end method
