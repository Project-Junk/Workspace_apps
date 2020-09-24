.class public Lcom/coloros/anim/c/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

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

.field private final c:Lcom/coloros/anim/c/a/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/c/a/f;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b/a;->b:Lcom/coloros/anim/c/a/m;

    iput-object p3, p0, Lcom/coloros/anim/c/b/a;->c:Lcom/coloros/anim/c/a/f;

    iput-boolean p4, p0, Lcom/coloros/anim/c/b/a;->d:Z

    iput-boolean p5, p0, Lcom/coloros/anim/c/b/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CircleShape::toContent layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/f;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/f;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/a;->a:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/coloros/anim/c/b/a;->b:Lcom/coloros/anim/c/a/m;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/a;->c:Lcom/coloros/anim/c/a/f;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/a;->d:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/a;->e:Z

    return p0
.end method
