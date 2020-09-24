.class public Lcom/coloros/anim/f/c;
.super Lcom/coloros/anim/f/a;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field protected a:Z

.field private b:F

.field private c:Z

.field private d:J

.field private e:F

.field private f:I

.field private g:F

.field private h:F

.field private i:Lcom/coloros/anim/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/anim/f/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->a:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/coloros/anim/f/c;->b:F

    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->c:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/coloros/anim/f/c;->d:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/coloros/anim/f/c;->e:F

    iput v0, p0, Lcom/coloros/anim/f/c;->f:I

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/coloros/anim/f/c;->g:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/coloros/anim/f/c;->h:F

    return-void
.end method

.method private q()F
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    const v0, 0x4e6e6b28    # 1.0E9f

    iget-object v1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->h()F

    move-result v1

    div-float/2addr v0, v1

    iget p0, p0, Lcom/coloros/anim/f/c;->b:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method private r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->h()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    iget v1, p0, Lcom/coloros/anim/f/c;->g:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    iget v1, p0, Lcom/coloros/anim/f/c;->h:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/coloros/anim/f/c;->g:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/coloros/anim/f/c;->h:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p0, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Frame must be [%f,%f]. It is %f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/coloros/anim/f/c;->b:F

    return-void
.end method

.method public a(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->f()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result v2

    iput v2, p0, Lcom/coloros/anim/f/c;->g:F

    invoke-static {p2, v0, v1}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/f/c;->h:F

    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-static {v0, p1, p2}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->a(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result p1

    iput p1, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/f/c;->d:J

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->c()V

    return-void
.end method

.method public a(Lcom/coloros/anim/a;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coloros/anim/f/c;->g:F

    invoke-virtual {p1}, Lcom/coloros/anim/a;->f()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/anim/f/c;->h:F

    invoke-virtual {p1}, Lcom/coloros/anim/a;->g()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_1
    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/anim/f/c;->a(FF)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/anim/a;->f()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/coloros/anim/a;->g()F

    move-result p1

    goto :goto_1

    :goto_2
    iget p1, p0, Lcom/coloros/anim/f/c;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/anim/f/c;->e:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->a(I)V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, Lcom/coloros/anim/f/c;->g:F

    invoke-virtual {p0, v0, p1}, Lcom/coloros/anim/f/c;->a(FF)V

    return-void
.end method

.method public b(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/coloros/anim/f/c;->h:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/f/c;->a(FF)V

    return-void
.end method

.method protected c(Z)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/anim/f/c;->a:Z

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->b()V

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->p()V

    return-void
.end method

.method public d()F
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    iget-object v1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->f()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {v1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    iget-object p0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->f()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public doFrame(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->o()V

    iget-object p1, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/coloros/anim/f/c;->d:J

    sub-long v0, p1, v0

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->q()F

    move-result v2

    long-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-float v0, v0

    :cond_1
    add-float/2addr v1, v0

    iput v1, p0, Lcom/coloros/anim/f/c;->e:F

    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coloros/anim/f/f;->c(FFF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result v1

    iput v1, p0, Lcom/coloros/anim/f/c;->e:F

    iput-wide p1, p0, Lcom/coloros/anim/f/c;->d:J

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->c()V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coloros/anim/f/c;->f:I

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result p1

    iput p1, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->p()V

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->b(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->a()V

    iget v0, p0, Lcom/coloros/anim/f/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/anim/f/c;->f:I

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/coloros/anim/f/c;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->c:Z

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/anim/f/c;->e:F

    :goto_1
    iput-wide p1, p0, Lcom/coloros/anim/f/c;->d:J

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->s()V

    :cond_6
    :goto_3
    return-void
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/f/c;->e:F

    return p0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/coloros/anim/f/c;->g:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/coloros/anim/f/c;->h:F

    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->h()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->a(F)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/f/c;->e:F

    :goto_0
    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v1

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->d()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->e()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/coloros/anim/f/c;->b:F

    return p0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->a:Z

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->a(Z)V

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->a(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/f/c;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/anim/f/c;->f:I

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->o()V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/anim/f/c;->a:Z

    return p0
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->p()V

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->b(Z)V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->p()V

    return-void
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->a:Z

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->o()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/f/c;->d:J

    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/anim/f/c;->e:F

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->n()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->m()F

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public m()F
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/coloros/anim/f/c;->g:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->f()F

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/coloros/anim/f/c;->g:F

    :goto_0
    return p0
.end method

.method public n()F
    .locals 2

    iget-object v0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/coloros/anim/f/c;->h:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/anim/f/c;->i:Lcom/coloros/anim/a;

    invoke-virtual {p0}, Lcom/coloros/anim/a;->g()F

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/coloros/anim/f/c;->h:F

    :goto_0
    return p0
.end method

.method protected o()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->c(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->c(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coloros/anim/f/a;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/coloros/anim/f/c;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/anim/f/c;->c:Z

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()V

    :cond_0
    return-void
.end method
