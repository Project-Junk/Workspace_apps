.class public Lcom/coloros/anim/a/b/c;
.super Lcom/coloros/anim/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/b/c;->b(Lcom/coloros/anim/g/c;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method b(Lcom/coloros/anim/g/c;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/a/b/c;->c(Lcom/coloros/anim/g/c;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method c(Lcom/coloros/anim/g/c;F)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    iget-object v0, p1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/b/c;->b:Lcom/coloros/anim/g/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/anim/a/b/c;->b:Lcom/coloros/anim/g/b;

    iget v2, p1, Lcom/coloros/anim/g/c;->c:F

    iget-object v0, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    iget-object v5, p1, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->d()F

    move-result v7

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->h()F

    move-result v8

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/coloros/anim/g/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/g/c;->f()F

    move-result p0

    invoke-virtual {p1}, Lcom/coloros/anim/g/c;->g()F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()F
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->c()Lcom/coloros/anim/g/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->e()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/anim/a/b/c;->c(Lcom/coloros/anim/g/c;F)F

    move-result p0

    return p0
.end method
