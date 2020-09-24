.class public Lcom/coloros/anim/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/coloros/anim/m;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Lcom/coloros/anim/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/coloros/anim/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Rect;

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/anim/m;

    invoke-direct {v0}, Lcom/coloros/anim/m;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/anim/a;->o:I

    return-void
.end method


# virtual methods
.method public a(J)Lcom/coloros/anim/c/c/d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a;->h:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/c/c/d;

    return-object p0
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/coloros/anim/a;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coloros/anim/a;->o:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/b/h;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/coloros/anim/c/c/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/h;",
            ">;",
            "Landroidx/b/h<",
            "Lcom/coloros/anim/c/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/anim/a;->j:Landroid/graphics/Rect;

    iput p2, p0, Lcom/coloros/anim/a;->k:F

    iput p3, p0, Lcom/coloros/anim/a;->l:F

    iput p4, p0, Lcom/coloros/anim/a;->m:F

    iput-object p5, p0, Lcom/coloros/anim/a;->i:Ljava/util/List;

    iput-object p6, p0, Lcom/coloros/anim/a;->h:Landroid/util/LongSparseArray;

    iput-object p7, p0, Lcom/coloros/anim/a;->c:Ljava/util/Map;

    iput-object p8, p0, Lcom/coloros/anim/a;->d:Ljava/util/Map;

    iput-object p9, p0, Lcom/coloros/anim/a;->g:Landroidx/b/h;

    iput-object p10, p0, Lcom/coloros/anim/a;->e:Ljava/util/Map;

    iput-object p11, p0, Lcom/coloros/anim/a;->f:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EffectiveAnimation"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coloros/anim/a;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/anim/a;->n:Z

    return-void
.end method

.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/a;->n:Z

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/coloros/anim/a;->o:I

    return p0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/m;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/m;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/coloros/anim/c/h;
    .locals 3

    iget-object v0, p0, Lcom/coloros/anim/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/coloros/anim/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c/h;

    iget-object v2, v1, Lcom/coloros/anim/c/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Lcom/coloros/anim/m;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a;->a:Lcom/coloros/anim/m;

    return-object p0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/a;->j:Landroid/graphics/Rect;

    return-object p0
.end method

.method public e()F
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/anim/a;->m()F

    move-result v0

    iget p0, p0, Lcom/coloros/anim/a;->m:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/a;->k:F

    return p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/a;->l:F

    return p0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/a;->m:F

    return p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a;->i:Ljava/util/List;

    return-object p0
.end method

.method public j()Landroidx/b/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/h<",
            "Lcom/coloros/anim/c/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a;->g:Landroidx/b/h;

    return-object p0
.end method

.method public k()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public l()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/anim/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/coloros/anim/a;->l:F

    iget p0, p0, Lcom/coloros/anim/a;->k:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveAnimationComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/anim/a;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/c/c/d;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lcom/coloros/anim/c/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
