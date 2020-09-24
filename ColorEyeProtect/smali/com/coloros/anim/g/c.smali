.class public Lcom/coloros/anim/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/animation/Interpolator;

.field public final c:F

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Float;

.field public f:Landroid/graphics/PointF;

.field public g:Landroid/graphics/PointF;

.field private final h:Lcom/coloros/anim/a;

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:F

.field private n:F


# direct methods
.method public constructor <init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/a;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/g/c;->f:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/coloros/anim/g/c;->g:Landroid/graphics/PointF;

    const v0, -0x358c9d09

    iput v0, p0, Lcom/coloros/anim/g/c;->i:F

    iput v0, p0, Lcom/coloros/anim/g/c;->j:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/coloros/anim/g/c;->k:I

    iput v0, p0, Lcom/coloros/anim/g/c;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coloros/anim/g/c;->m:F

    iput v0, p0, Lcom/coloros/anim/g/c;->n:F

    iput-object p1, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    iput-object p2, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/coloros/anim/g/c;->b:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/coloros/anim/g/c;->c:F

    iput-object p6, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/g/c;->f:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/coloros/anim/g/c;->g:Landroid/graphics/PointF;

    const v1, -0x358c9d09

    iput v1, p0, Lcom/coloros/anim/g/c;->i:F

    iput v1, p0, Lcom/coloros/anim/g/c;->j:F

    const v1, 0x2ec8fb09

    iput v1, p0, Lcom/coloros/anim/g/c;->k:I

    iput v1, p0, Lcom/coloros/anim/g/c;->l:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/coloros/anim/g/c;->m:F

    iput v1, p0, Lcom/coloros/anim/g/c;->n:F

    iput-object v0, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    iput-object p1, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/coloros/anim/g/c;->b:Landroid/view/animation/Interpolator;

    iput v1, p0, Lcom/coloros/anim/g/c;->c:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public a(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/g/c;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/g/c;->d()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()F
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/coloros/anim/g/c;->m:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coloros/anim/g/c;->c:F

    iget-object v1, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->f()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->m()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/anim/g/c;->m:F

    :cond_1
    iget p0, p0, Lcom/coloros/anim/g/c;->m:F

    return p0
.end method

.method public d()F
    .locals 3

    iget-object v0, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/coloros/anim/g/c;->n:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    if-nez v0, :cond_1

    iput v1, p0, Lcom/coloros/anim/g/c;->n:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/g/c;->c()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/coloros/anim/g/c;->c:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/coloros/anim/g/c;->h:Lcom/coloros/anim/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a;->m()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/anim/g/c;->n:F

    :cond_2
    :goto_0
    iget p0, p0, Lcom/coloros/anim/g/c;->n:F

    return p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/g/c;->b:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()F
    .locals 2

    iget v0, p0, Lcom/coloros/anim/g/c;->i:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/g/c;->i:F

    :cond_0
    iget p0, p0, Lcom/coloros/anim/g/c;->i:F

    return p0
.end method

.method public g()F
    .locals 2

    iget v0, p0, Lcom/coloros/anim/g/c;->j:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/g/c;->j:F

    :cond_0
    iget p0, p0, Lcom/coloros/anim/g/c;->j:F

    return p0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/coloros/anim/g/c;->k:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/coloros/anim/g/c;->k:I

    :cond_0
    iget p0, p0, Lcom/coloros/anim/g/c;->k:I

    return p0
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lcom/coloros/anim/g/c;->l:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/coloros/anim/g/c;->l:I

    :cond_0
    iget p0, p0, Lcom/coloros/anim/g/c;->l:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/g/c;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/anim/g/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
