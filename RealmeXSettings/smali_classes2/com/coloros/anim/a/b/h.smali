.class public final Lcom/coloros/anim/a/b/h;
.super Lcom/coloros/anim/g/c;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/g/c<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Lcom/coloros/anim/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/c<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


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

    .line 18
    iget-object v2, p2, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    iget-object v3, p2, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    iget-object v4, p2, Lcom/coloros/anim/g/c;->c:Landroid/view/animation/Interpolator;

    iget v5, p2, Lcom/coloros/anim/g/c;->d:F

    iget-object v6, p2, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coloros/anim/g/c;-><init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/a/b/h;->m:Lcom/coloros/anim/g/c;

    .line 21
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/h;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/a/b/h;->e:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/coloros/anim/a/b/h;->e:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a/b/h;->e:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/coloros/anim/a/b/h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/a/b/h;->e:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/anim/a/b/h;->m:Lcom/coloros/anim/g/c;

    iget-object v2, v2, Lcom/coloros/anim/g/c;->g:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/coloros/anim/a/b/h;->m:Lcom/coloros/anim/g/c;

    iget-object v3, v3, Lcom/coloros/anim/g/c;->h:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/a/b/h;->a:Landroid/graphics/Path;

    :cond_1
    return-void
.end method