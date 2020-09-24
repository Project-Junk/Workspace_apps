.class public final La/b/b;
.super Ljava/lang/Object;

# interfaces
.implements La/b/f;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:La/b/f;

.field private final b:La/b/f$b;


# direct methods
.method public constructor <init>(La/b/f;La/b/f$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/b;->a:La/b/f;

    iput-object p2, p0, La/b/b;->b:La/b/f$b;

    return-void
.end method

.method private final a()I
    .locals 2

    check-cast p0, La/b/b;

    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, La/b/b;->a:La/b/f;

    instance-of v1, p0, La/b/b;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, La/b/b;

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final a(La/b/b;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, La/b/b;->b:La/b/f$b;

    invoke-direct {p0, v0}, La/b/b;->a(La/b/f$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, La/b/b;->a:La/b/f;

    instance-of v0, p1, La/b/b;

    if-eqz v0, :cond_1

    check-cast p1, La/b/b;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    check-cast p1, La/b/f$b;

    invoke-direct {p0, p1}, La/b/b;->a(La/b/f$b;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(La/b/f$b;)Z
    .locals 1

    invoke-interface {p1}, La/b/f$b;->getKey()La/b/f$c;

    move-result-object v0

    invoke-virtual {p0, v0}, La/b/b;->get(La/b/f$c;)La/b/f$b;

    move-result-object p0

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p0

    check-cast v0, La/b/b;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, La/b/b;

    if-eqz v0, :cond_0

    check-cast p1, La/b/b;

    invoke-direct {p1}, La/b/b;->a()I

    move-result v0

    invoke-direct {p0}, La/b/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, La/b/b;->a(La/b/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

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

    iget-object v0, p0, La/b/b;->a:La/b/f;

    invoke-interface {v0, p1, p2}, La/b/f;->fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, La/b/b;->b:La/b/f$b;

    invoke-interface {p2, p1, p0}, La/d/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :goto_0
    check-cast p0, La/b/b;

    iget-object v0, p0, La/b/b;->b:La/b/f$b;

    invoke-interface {v0, p1}, La/b/f$b;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, La/b/b;->a:La/b/f;

    instance-of v0, p0, La/b/b;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/b/b;->a:La/b/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, La/b/b;->b:La/b/f$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
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

    iget-object v0, p0, La/b/b;->b:La/b/f$b;

    invoke-interface {v0, p1}, La/b/f$b;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, La/b/b;->a:La/b/f;

    return-object p0

    :cond_0
    iget-object v0, p0, La/b/b;->a:La/b/f;

    invoke-interface {v0, p1}, La/b/f;->minusKey(La/b/f$c;)La/b/f;

    move-result-object p1

    iget-object v0, p0, La/b/b;->a:La/b/f;

    if-ne p1, v0, :cond_1

    :goto_0
    check-cast p0, La/b/f;

    goto :goto_1

    :cond_1
    sget-object v0, La/b/g;->a:La/b/g;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, La/b/b;->b:La/b/f$b;

    goto :goto_0

    :cond_2
    new-instance v0, La/b/b;

    iget-object p0, p0, La/b/b;->b:La/b/f$b;

    invoke-direct {v0, p1, p0}, La/b/b;-><init>(La/b/f;La/b/f$b;)V

    move-object p0, v0

    check-cast p0, La/b/f;

    :goto_1
    return-object p0
.end method

.method public plus(La/b/f;)La/b/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La/b/f$a;->a(La/b/f;La/b/f;)La/b/f;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    sget-object v2, La/b/b$a;->a:La/b/b$a;

    check-cast v2, La/d/a/m;

    invoke-virtual {p0, v1, v2}, La/b/b;->fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
