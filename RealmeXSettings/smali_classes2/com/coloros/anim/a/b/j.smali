.class public final Lcom/coloros/anim/a/b/j;
.super Lcom/coloros/anim/a/b/f;
.source "PointKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/a/b/j;->e:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 10

    .line 1018
    iget-object v0, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 1023
    iget-object v1, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/graphics/PointF;

    .line 1025
    iget-object v1, p0, Lcom/coloros/anim/a/b/j;->b:Lcom/coloros/anim/g/b;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/coloros/anim/a/b/j;->b:Lcom/coloros/anim/g/b;

    iget v2, p1, Lcom/coloros/anim/g/c;->d:F

    iget-object p1, p1, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1028
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/j;->c()F

    move-result v7

    .line 1133
    iget v8, p0, Lcom/coloros/anim/a/b/a;->d:F

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 1027
    invoke-virtual/range {v1 .. v8}, Lcom/coloros/anim/g/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    .line 1034
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/a/b/j;->e:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    mul-float/2addr p2, v3

    add-float/2addr v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1036
    iget-object p1, p0, Lcom/coloros/anim/a/b/j;->e:Landroid/graphics/PointF;

    return-object p1

    .line 1019
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
