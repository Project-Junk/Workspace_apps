.class public Lcom/coloros/anim/c/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/a/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/c/a/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/coloros/anim/c/a/b;

.field private final b:Lcom/coloros/anim/c/a/b;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/a/i;->a:Lcom/coloros/anim/c/a/b;

    iput-object p2, p0, Lcom/coloros/anim/c/a/i;->b:Lcom/coloros/anim/c/a/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/anim/a/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "AnimatableSplitDimensionPathValue create SplitDimensionPathKeyframeAnimation."

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/b/m;

    iget-object v1, p0, Lcom/coloros/anim/c/a/i;->a:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/anim/c/a/i;->b:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->a()Lcom/coloros/anim/a/b/a;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/coloros/anim/a/b/m;-><init>(Lcom/coloros/anim/a/b/a;Lcom/coloros/anim/a/b/a;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/anim/c/a/i;->a:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v0}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/c/a/i;->b:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/g/c<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
