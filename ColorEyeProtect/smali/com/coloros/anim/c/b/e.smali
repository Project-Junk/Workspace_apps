.class public Lcom/coloros/anim/c/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/c/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/coloros/anim/c/b/f;

.field private final c:Lcom/coloros/anim/c/a/c;

.field private final d:Lcom/coloros/anim/c/a/d;

.field private final e:Lcom/coloros/anim/c/a/f;

.field private final f:Lcom/coloros/anim/c/a/f;

.field private final g:Lcom/coloros/anim/c/a/b;

.field private final h:Lcom/coloros/anim/c/b/p$a;

.field private final i:Lcom/coloros/anim/c/b/p$b;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/coloros/anim/c/a/b;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/anim/c/b/f;Lcom/coloros/anim/c/a/c;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/b/p$a;Lcom/coloros/anim/c/b/p$b;FLjava/util/List;Lcom/coloros/anim/c/a/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/b/f;",
            "Lcom/coloros/anim/c/a/c;",
            "Lcom/coloros/anim/c/a/d;",
            "Lcom/coloros/anim/c/a/f;",
            "Lcom/coloros/anim/c/a/f;",
            "Lcom/coloros/anim/c/a/b;",
            "Lcom/coloros/anim/c/b/p$a;",
            "Lcom/coloros/anim/c/b/p$b;",
            "F",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;",
            "Lcom/coloros/anim/c/a/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/c/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/anim/c/b/e;->b:Lcom/coloros/anim/c/b/f;

    iput-object p3, p0, Lcom/coloros/anim/c/b/e;->c:Lcom/coloros/anim/c/a/c;

    iput-object p4, p0, Lcom/coloros/anim/c/b/e;->d:Lcom/coloros/anim/c/a/d;

    iput-object p5, p0, Lcom/coloros/anim/c/b/e;->e:Lcom/coloros/anim/c/a/f;

    iput-object p6, p0, Lcom/coloros/anim/c/b/e;->f:Lcom/coloros/anim/c/a/f;

    iput-object p7, p0, Lcom/coloros/anim/c/b/e;->g:Lcom/coloros/anim/c/a/b;

    iput-object p8, p0, Lcom/coloros/anim/c/b/e;->h:Lcom/coloros/anim/c/b/p$a;

    iput-object p9, p0, Lcom/coloros/anim/c/b/e;->i:Lcom/coloros/anim/c/b/p$b;

    iput p10, p0, Lcom/coloros/anim/c/b/e;->j:F

    iput-object p11, p0, Lcom/coloros/anim/c/b/e;->k:Ljava/util/List;

    iput-object p12, p0, Lcom/coloros/anim/c/b/e;->l:Lcom/coloros/anim/c/a/b;

    iput-boolean p13, p0, Lcom/coloros/anim/c/b/e;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;)Lcom/coloros/anim/a/a/c;
    .locals 2

    sget-boolean v0, Lcom/coloros/anim/f/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientStroke to GradientStrokeContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/coloros/anim/a/a/i;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/anim/a/a/i;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/a;Lcom/coloros/anim/c/b/e;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/coloros/anim/c/b/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->b:Lcom/coloros/anim/c/b/f;

    return-object p0
.end method

.method public c()Lcom/coloros/anim/c/a/c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->c:Lcom/coloros/anim/c/a/c;

    return-object p0
.end method

.method public d()Lcom/coloros/anim/c/a/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->d:Lcom/coloros/anim/c/a/d;

    return-object p0
.end method

.method public e()Lcom/coloros/anim/c/a/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->e:Lcom/coloros/anim/c/a/f;

    return-object p0
.end method

.method public f()Lcom/coloros/anim/c/a/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->f:Lcom/coloros/anim/c/a/f;

    return-object p0
.end method

.method public g()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->g:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public h()Lcom/coloros/anim/c/b/p$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->h:Lcom/coloros/anim/c/b/p$a;

    return-object p0
.end method

.method public i()Lcom/coloros/anim/c/b/p$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->i:Lcom/coloros/anim/c/b/p$b;

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/a/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->k:Ljava/util/List;

    return-object p0
.end method

.method public k()Lcom/coloros/anim/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/c/b/e;->l:Lcom/coloros/anim/c/a/b;

    return-object p0
.end method

.method public l()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/c/b/e;->j:F

    return p0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/c/b/e;->m:Z

    return p0
.end method
