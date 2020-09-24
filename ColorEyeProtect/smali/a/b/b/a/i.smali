.class public abstract La/b/b/a/i;
.super La/b/b/a/a;


# direct methods
.method public constructor <init>(La/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, La/b/b/a/a;-><init>(La/b/c;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, La/b/c;->getContext()La/b/f;

    move-result-object p0

    sget-object p1, La/b/g;->a:La/b/g;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getContext()La/b/f;
    .locals 0

    sget-object p0, La/b/g;->a:La/b/g;

    check-cast p0, La/b/f;

    return-object p0
.end method
