.class public Lcom/coloros/anim/c/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/c/b/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/coloros/anim/c/b/i$a;

.field private final c:Lcom/coloros/anim/c/a/b;

.field private final d:Lcom/coloros/anim/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/coloros/anim/c/a/b;

.field private final f:Lcom/coloros/anim/c/a/b;

.field private final g:Lcom/coloros/anim/c/a/b;

.field private final h:Lcom/coloros/anim/c/a/b;

.field private final i:Lcom/coloros/anim/c/a/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/b/i$a;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/b/i$a;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/a/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b/i;->b:Lcom/coloros/anim/c/b/i$a;

    iput-object p3, p0, Lcom/coloros/anim/c/b/i;->c:Lcom/coloros/anim/c/a/b;

    iput-object p4, p0, Lcom/coloros/anim/c/b/i;->d:Lcom/coloros/anim/c/a/m;

    iput-object p5, p0, Lcom/coloros/anim/c/b/i;->e:Lcom/coloros/anim/c/a/b;

    iput-object p6, p0, Lcom/coloros/anim/c/b/i;->f:Lcom/coloros/anim/c/a/b;

    iput-object p7, p0, Lcom/coloros/anim/c/b/i;->g:Lcom/coloros/anim/c/a/b;

    iput-object p8, p0, Lcom/coloros/anim/c/b/i;->h:Lcom/coloros/anim/c/a/b;

    iput-object p9, p0, Lcom/coloros/anim/c/b/i;->i:Lcom/coloros/anim/c/a/b;

    iput-boolean p10, p0, Lcom/coloros/anim/c/b/i;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolystarShape to RepeaterContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/n;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/n;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/i;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/b/i$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->b:Lcom/coloros/anim/c/b/i$a;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->c:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public d()Lcom/coloros/anim/c/a/m;
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

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->d:Lcom/coloros/anim/c/a/m;

    return-object p0
.end method

.method public e()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->e:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public f()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->f:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public g()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->g:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public h()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->h:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public i()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/i;->i:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/i;->j:Z

    return p0
.end method
