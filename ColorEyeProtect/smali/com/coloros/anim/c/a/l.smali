.class public Lcom/coloros/anim/c/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field private final a:Lcom/coloros/anim/c/a/e;

.field private final b:Lcom/coloros/anim/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/coloros/anim/c/a/g;

.field private final d:Lcom/coloros/anim/c/a/b;

.field private final e:Lcom/coloros/anim/c/a/d;

.field private final f:Lcom/coloros/anim/c/a/b;

.field private final g:Lcom/coloros/anim/c/a/b;

.field private final h:Lcom/coloros/anim/c/a/b;

.field private final i:Lcom/coloros/anim/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/coloros/anim/c/a/l;-><init>(Lcom/coloros/anim/c/a/e;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/g;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/c/a/e;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/g;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c/a/e;",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/c/a/g;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/d;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/a/l;->a:Lcom/coloros/anim/c/a/e;

    iput-object p2, p0, Lcom/coloros/anim/c/a/l;->b:Lcom/coloros/anim/c/a/m;

    iput-object p3, p0, Lcom/coloros/anim/c/a/l;->c:Lcom/coloros/anim/c/a/g;

    iput-object p4, p0, Lcom/coloros/anim/c/a/l;->d:Lcom/coloros/anim/c/a/b;

    iput-object p5, p0, Lcom/coloros/anim/c/a/l;->e:Lcom/coloros/anim/c/a/d;

    iput-object p6, p0, Lcom/coloros/anim/c/a/l;->h:Lcom/coloros/anim/c/a/b;

    iput-object p7, p0, Lcom/coloros/anim/c/a/l;->i:Lcom/coloros/anim/c/a/b;

    iput-object p8, p0, Lcom/coloros/anim/c/a/l;->f:Lcom/coloros/anim/c/a/b;

    iput-object p9, p0, Lcom/coloros/anim/c/a/l;->g:Lcom/coloros/anim/c/a/b;

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTransform:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->a:Lcom/coloros/anim/c/a/e;

    if-eqz v1, :cond_0

    const-string v1, "anchorPoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->a:Lcom/coloros/anim/c/a/e;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->c:Lcom/coloros/anim/c/a/g;

    if-eqz v1, :cond_1

    const-string v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->c:Lcom/coloros/anim/c/a/g;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->d:Lcom/coloros/anim/c/a/b;

    if-eqz v1, :cond_2

    const-string v1, "rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->d:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->e:Lcom/coloros/anim/c/a/d;

    if-eqz v1, :cond_3

    const-string v1, "opacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->e:Lcom/coloros/anim/c/a/d;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->f:Lcom/coloros/anim/c/a/b;

    if-eqz v1, :cond_4

    const-string v1, "skew = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->f:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->g:Lcom/coloros/anim/c/a/b;

    if-eqz v1, :cond_5

    const-string v1, "skewAngle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->g:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->h:Lcom/coloros/anim/c/a/b;

    if-eqz v1, :cond_6

    const-string v1, "startOpacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->h:Lcom/coloros/anim/c/a/b;

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/coloros/anim/c/a/l;->i:Lcom/coloros/anim/c/a/b;

    if-eqz v1, :cond_7

    const-string v1, "endOpacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->i:Lcom/coloros/anim/c/a/b;

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Lcom/coloros/anim/c/a/e;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->a:Lcom/coloros/anim/c/a/e;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/a/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->b:Lcom/coloros/anim/c/a/m;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/g;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->c:Lcom/coloros/anim/c/a/g;

    return-object p0
.end method

.method public d()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->d:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public e()Lcom/coloros/anim/c/a/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->e:Lcom/coloros/anim/c/a/d;

    return-object p0
.end method

.method public f()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->h:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public g()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->i:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public h()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->f:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public i()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/a/l;->g:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public j()Lcom/coloros/anim/a/b/o;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableTransform create TransformKeyframeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coloros/anim/c/a/l;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/b/o;

    invoke-direct {v0, p0}, Lcom/coloros/anim/a/b/o;-><init>(Lcom/coloros/anim/c/a/l;)V

    return-object v0
.end method