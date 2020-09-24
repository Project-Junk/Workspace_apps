.class public abstract La/b/b/a/c;
.super La/b/b/a/a;


# instance fields
.field private final _context:La/b/f;

.field private transient intercepted:La/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, La/b/c;->getContext()La/b/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, La/b/b/a/c;-><init>(La/b/c;La/b/f;)V

    return-void
.end method

.method public constructor <init>(La/b/c;La/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;",
            "La/b/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, La/b/b/a/a;-><init>(La/b/c;)V

    iput-object p2, p0, La/b/b/a/c;->_context:La/b/f;

    return-void
.end method


# virtual methods
.method public getContext()La/b/f;
    .locals 0

    iget-object p0, p0, La/b/b/a/c;->_context:La/b/f;

    if-nez p0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    return-object p0
.end method

.method public final intercepted()La/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/b/b/a/c;->intercepted:La/b/c;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, La/b/b/a/c;->getContext()La/b/f;

    move-result-object v0

    sget-object v1, La/b/d;->a:La/b/d$b;

    check-cast v1, La/b/f$c;

    invoke-interface {v0, v1}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v0

    check-cast v0, La/b/d;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, La/b/c;

    invoke-interface {v0, v1}, La/b/d;->a(La/b/c;)La/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, La/b/c;

    :goto_0
    iput-object v0, p0, La/b/b/a/c;->intercepted:La/b/c;

    :goto_1
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    iget-object v0, p0, La/b/b/a/c;->intercepted:La/b/c;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, La/b/b/a/c;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, La/b/b/a/c;->getContext()La/b/f;

    move-result-object v1

    sget-object v2, La/b/d;->a:La/b/d$b;

    check-cast v2, La/b/f$c;

    invoke-interface {v1, v2}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    check-cast v1, La/b/d;

    invoke-interface {v1, v0}, La/b/d;->b(La/b/c;)V

    :cond_1
    sget-object v0, La/b/b/a/b;->a:La/b/b/a/b;

    check-cast v0, La/b/c;

    iput-object v0, p0, La/b/b/a/c;->intercepted:La/b/c;

    return-void
.end method
