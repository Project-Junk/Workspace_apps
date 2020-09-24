.class public abstract La/d/b/l;
.super La/d/b/k;

# interfaces
.implements La/f/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/f/j$a;
    .locals 0

    invoke-virtual {p0}, La/d/b/l;->getReflected()La/f/h;

    move-result-object p0

    check-cast p0, La/f/j;

    invoke-interface {p0}, La/f/j;->a()La/f/j$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, La/d/b/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected computeReflected()La/f/b;
    .locals 0

    invoke-static {p0}, La/d/b/n;->a(La/d/b/l;)La/f/j;

    move-result-object p0

    return-object p0
.end method
