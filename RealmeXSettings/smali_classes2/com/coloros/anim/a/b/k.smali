.class public final Lcom/coloros/anim/a/b/k;
.super Lcom/coloros/anim/a/b/f;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/a/b/f<",
        "Lcom/coloros/anim/g/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/coloros/anim/g/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Lcom/coloros/anim/g/d;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/coloros/anim/a/b/f;-><init>(Ljava/util/List;)V

    .line 11
    new-instance p1, Lcom/coloros/anim/g/d;

    invoke-direct {p1}, Lcom/coloros/anim/g/d;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/a/b/k;->e:Lcom/coloros/anim/g/d;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .locals 10

    .line 1019
    iget-object v0, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/anim/g/d;

    .line 1023
    iget-object v1, p1, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/coloros/anim/g/d;

    .line 1025
    iget-object v1, p0, Lcom/coloros/anim/a/b/k;->b:Lcom/coloros/anim/g/b;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/coloros/anim/a/b/k;->b:Lcom/coloros/anim/g/b;

    iget v2, p1, Lcom/coloros/anim/g/c;->d:F

    iget-object p1, p1, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1029
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/k;->c()F

    move-result v7

    .line 1133
    iget v8, p0, Lcom/coloros/anim/a/b/a;->d:F

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 1027
    invoke-virtual/range {v1 .. v8}, Lcom/coloros/anim/g/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/g/d;

    if-eqz p1, :cond_0

    return-object p1

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/a/b/k;->e:Lcom/coloros/anim/g/d;

    .line 2017
    iget v1, v0, Lcom/coloros/anim/g/d;->a:F

    .line 3017
    iget v2, v9, Lcom/coloros/anim/g/d;->a:F

    .line 1036
    invoke-static {v1, v2, p2}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result v1

    .line 3021
    iget v0, v0, Lcom/coloros/anim/g/d;->b:F

    .line 4021
    iget v2, v9, Lcom/coloros/anim/g/d;->b:F

    .line 1037
    invoke-static {v0, v2, p2}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p2

    .line 4025
    iput v1, p1, Lcom/coloros/anim/g/d;->a:F

    .line 4026
    iput p2, p1, Lcom/coloros/anim/g/d;->b:F

    .line 1039
    iget-object p1, p0, Lcom/coloros/anim/a/b/k;->e:Lcom/coloros/anim/g/d;

    return-object p1

    .line 1020
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
