.class public abstract La/d/b/j;
.super La/d/b/i;

# interfaces
.implements La/f/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/b/i;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, La/d/b/i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeReflected()La/f/b;
    .locals 0

    invoke-static {p0}, La/d/b/n;->a(La/d/b/j;)La/f/g;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La/d/b/j;->getReflected()La/f/h;

    move-result-object p0

    check-cast p0, La/f/g;

    invoke-interface {p0}, La/f/g;->getDelegate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()La/f/h$a;
    .locals 0

    invoke-virtual {p0}, La/d/b/j;->getGetter()La/f/i$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()La/f/i$a;
    .locals 0

    invoke-virtual {p0}, La/d/b/j;->getReflected()La/f/h;

    move-result-object p0

    check-cast p0, La/f/g;

    invoke-interface {p0}, La/f/g;->getGetter()La/f/i$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()La/f/f$a;
    .locals 0

    invoke-virtual {p0}, La/d/b/j;->getSetter()La/f/g$a;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()La/f/g$a;
    .locals 0

    invoke-virtual {p0}, La/d/b/j;->getReflected()La/f/h;

    move-result-object p0

    check-cast p0, La/f/g;

    invoke-interface {p0}, La/f/g;->getSetter()La/f/g$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La/d/b/j;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
