.class public final Lcom/coloros/anim/a/b/d;
.super Lcom/coloros/anim/a/b/f;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Lcom/coloros/anim/c/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/coloros/anim/c/b/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/c/b/c;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/g/c;

    iget-object p1, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/c/b/c;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    iget-object p1, p1, Lcom/coloros/anim/c/b/c;->b:[I

    array-length v0, p1

    .line 15
    :goto_0
    new-instance p1, Lcom/coloros/anim/c/b/c;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/coloros/anim/c/b/c;-><init>([F[I)V

    iput-object p1, p0, Lcom/coloros/anim/a/b/d;->e:Lcom/coloros/anim/c/b/c;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 6

    .line 2020
    iget-object v0, p0, Lcom/coloros/anim/a/b/d;->e:Lcom/coloros/anim/c/b/c;

    iget-object v1, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/coloros/anim/c/b/c;

    iget-object p1, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/c/b/c;

    .line 2029
    iget-object v2, v1, Lcom/coloros/anim/c/b/c;->b:[I

    array-length v2, v2

    iget-object v3, p1, Lcom/coloros/anim/c/b/c;->b:[I

    array-length v3, v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 2034
    :goto_0
    iget-object v3, v1, Lcom/coloros/anim/c/b/c;->b:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2035
    iget-object v3, v0, Lcom/coloros/anim/c/b/c;->a:[F

    iget-object v4, v1, Lcom/coloros/anim/c/b/c;->a:[F

    aget v4, v4, v2

    iget-object v5, p1, Lcom/coloros/anim/c/b/c;->a:[F

    aget v5, v5, v2

    invoke-static {v4, v5, p2}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result v4

    aput v4, v3, v2

    .line 2036
    iget-object v3, v0, Lcom/coloros/anim/c/b/c;->b:[I

    iget-object v4, v1, Lcom/coloros/anim/c/b/c;->b:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/coloros/anim/c/b/c;->b:[I

    aget v5, v5, v2

    invoke-static {p2, v4, v5}, Lcom/coloros/anim/f/d;->a(FII)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2021
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/a/b/d;->e:Lcom/coloros/anim/c/b/c;

    return-object p1

    .line 2030
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/coloros/anim/c/b/c;->b:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coloros/anim/c/b/c;->b:[I

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
