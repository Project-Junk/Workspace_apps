.class public Lcom/coloros/anim/a/b/h;
.super Lcom/coloros/anim/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/g/c<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Lcom/coloros/anim/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/c<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/a;Lcom/coloros/anim/g/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/a;",
            "Lcom/coloros/anim/g/c<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p2, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    iget-object v3, p2, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    iget-object v4, p2, Lcom/coloros/anim/g/c;->b:Landroid/view/animation/Interpolator;

    iget v5, p2, Lcom/coloros/anim/g/c;->c:F

    iget-object v6, p2, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coloros/anim/g/c;-><init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object p2, p0, Lcom/coloros/anim/a/b/h;->h:Lcom/coloros/anim/g/c;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/h;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/a/b/h;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/coloros/anim/a/b/h;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a/b/h;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/a/b/h;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/anim/a/b/h;->h:Lcom/coloros/anim/g/c;

    iget-object v2, v2, Lcom/coloros/anim/g/c;->f:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/coloros/anim/a/b/h;->h:Lcom/coloros/anim/g/c;

    iget-object v3, v3, Lcom/coloros/anim/g/c;->g:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/b/h;->i:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method b()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a/b/h;->i:Landroid/graphics/Path;

    return-object p0
.end method
