.class public final Lcom/coloros/anim/a/b/c;
.super Lcom/coloros/anim/a/b/f;
.source "FloatKeyframeAnimation.java"


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

    .line 11
    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/coloros/anim/g/c;F)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/coloros/anim/a/b/c;->b:Lcom/coloros/anim/g/b;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/coloros/anim/a/b/c;->b:Lcom/coloros/anim/g/b;

    iget v2, p1, Lcom/coloros/anim/g/c;->d:F

    iget-object v0, p1, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    iget-object v5, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->c()F

    move-result v7

    .line 1133
    iget v8, p0, Lcom/coloros/anim/a/b/a;->d:F

    move v6, p2

    .line 29
    invoke-virtual/range {v1 .. v8}, Lcom/coloros/anim/g/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 2099
    :cond_0
    iget v0, p1, Lcom/coloros/anim/g/c;->i:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2100
    iget-object v0, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/coloros/anim/g/c;->i:F

    .line 2102
    :cond_1
    iget v0, p1, Lcom/coloros/anim/g/c;->i:F

    .line 2109
    iget v2, p1, Lcom/coloros/anim/g/c;->j:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    .line 2110
    iget-object v1, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p1, Lcom/coloros/anim/g/c;->j:F

    .line 2112
    :cond_2
    iget p1, p1, Lcom/coloros/anim/g/c;->j:F

    .line 37
    invoke-static {v0, p1, p2}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    return p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 0

    .line 3016
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/a/b/c;->b(Lcom/coloros/anim/g/c;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final g()F
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->b()Lcom/coloros/anim/g/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/c;->d()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coloros/anim/a/b/c;->b(Lcom/coloros/anim/g/c;F)F

    move-result v0

    return v0
.end method
