.class public final Lcom/coloros/anim/f/c;
.super Lcom/coloros/anim/f/a;
.source "EffectiveValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field protected b:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Lcom/coloros/anim/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/coloros/anim/f/a;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->b:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    iput v1, p0, Lcom/coloros/anim/f/c;->c:F

    .line 23
    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->h:Z

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcom/coloros/anim/f/c;->i:J

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/coloros/anim/f/c;->d:F

    .line 26
    iput v0, p0, Lcom/coloros/anim/f/c;->j:I

    const/high16 v0, -0x31000000

    .line 27
    iput v0, p0, Lcom/coloros/anim/f/c;->e:F

    const/high16 v0, 0x4f000000

    .line 28
    iput v0, p0, Lcom/coloros/anim/f/c;->f:F

    return-void
.end method

.method private h()V
    .locals 1

    .line 5187
    iget v0, p0, Lcom/coloros/anim/f/c;->c:F

    neg-float v0, v0

    .line 5191
    iput v0, p0, Lcom/coloros/anim/f/c;->c:F

    return-void
.end method

.method private i()V
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->b(Z)V

    .line 272
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    .line 5133
    :cond_0
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 5137
    :cond_1
    iget v1, v1, Lcom/coloros/anim/a;->k:F

    .line 174
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result v2

    iput v2, p0, Lcom/coloros/anim/f/c;->e:F

    .line 175
    invoke-static {p2, v0, v1}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/f/c;->f:F

    .line 176
    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    invoke-static {v0, p1, p2}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->a(I)V

    return-void

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result p1

    iput p1, p0, Lcom/coloros/anim/f/c;->d:F

    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/f/c;->i:J

    .line 89
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->a()V

    return-void
.end method

.method public final b()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    iget v1, p0, Lcom/coloros/anim/f/c;->d:F

    .line 1133
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    sub-float/2addr v1, v0

    .line 53
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    .line 1137
    iget v0, v0, Lcom/coloros/anim/a;->k:F

    .line 53
    iget-object v2, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    .line 2133
    iget v2, v2, Lcom/coloros/anim/a;->j:F

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public final b(Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 283
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/coloros/anim/f/c;->b:Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->b:Z

    .line 206
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v0

    .line 6060
    iget-object v1, p0, Lcom/coloros/anim/f/a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 6061
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 6062
    invoke-interface {v2, p0, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    .line 6064
    :cond_0
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->a(I)V

    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/f/c;->i:J

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/coloros/anim/f/c;->j:I

    .line 210
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->i()V

    return-void
.end method

.method public final cancel()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7086
    iget-object v0, p0, Lcom/coloros/anim/f/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 7087
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7278
    invoke-virtual {p0, v0}, Lcom/coloros/anim/f/c;->b(Z)V

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->b:Z

    .line 227
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->i()V

    .line 228
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/anim/f/c;->i:J

    .line 229
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6080
    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    .line 229
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/f/c;->d:F

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7080
    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    .line 231
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/f/c;->d:F

    :cond_1
    return-void
.end method

.method public final doFrame(J)V
    .locals 5

    .line 99
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->i()V

    .line 100
    iget-object p1, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 105
    iget-wide v0, p0, Lcom/coloros/anim/f/c;->i:J

    sub-long v0, p1, v0

    .line 2138
    iget-object v2, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v2, :cond_1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_1
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 3141
    iget v2, v2, Lcom/coloros/anim/a;->l:F

    div-float/2addr v3, v2

    .line 2141
    iget v2, p0, Lcom/coloros/anim/f/c;->c:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v3, v2

    :goto_0
    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 109
    iget v1, p0, Lcom/coloros/anim/f/c;->d:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-float v0, v0

    :cond_2
    add-float/2addr v1, v0

    iput v1, p0, Lcom/coloros/anim/f/c;->d:F

    .line 110
    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coloros/anim/f/f;->c(FFF)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 111
    iget v2, p0, Lcom/coloros/anim/f/c;->d:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v3

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/coloros/anim/f/f;->b(FFF)F

    move-result v2

    iput v2, p0, Lcom/coloros/anim/f/c;->d:F

    .line 113
    iput-wide p1, p0, Lcom/coloros/anim/f/c;->i:J

    .line 115
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->a()V

    const/4 v2, 0x2

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/coloros/anim/f/c;->j:I

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result p1

    iput p1, p0, Lcom/coloros/anim/f/c;->d:F

    .line 3278
    invoke-virtual {p0, v1}, Lcom/coloros/anim/f/c;->b(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/f/c;->a(Z)V

    goto :goto_4

    .line 4070
    :cond_3
    iget-object v0, p0, Lcom/coloros/anim/f/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 4071
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_1

    .line 123
    :cond_4
    iget v0, p0, Lcom/coloros/anim/f/c;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/anim/f/c;->j:I

    .line 124
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 125
    iget-boolean v0, p0, Lcom/coloros/anim/f/c;->h:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/coloros/anim/f/c;->h:Z

    .line 126
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->h()V

    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v0

    :goto_2
    iput v0, p0, Lcom/coloros/anim/f/c;->d:F

    .line 130
    :goto_3
    iput-wide p1, p0, Lcom/coloros/anim/f/c;->i:J

    .line 4290
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-eqz p1, :cond_9

    .line 4293
    iget p1, p0, Lcom/coloros/anim/f/c;->d:F

    iget p2, p0, Lcom/coloros/anim/f/c;->e:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_8

    iget p2, p0, Lcom/coloros/anim/f/c;->f:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_8

    goto :goto_5

    .line 4294
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/coloros/anim/f/c;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p2, v0

    iget v0, p0, Lcom/coloros/anim/f/c;->f:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v1

    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Frame must be [%f,%f]. It is %f"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 8187
    iget v0, p0, Lcom/coloros/anim/f/c;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()F
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    iget v1, p0, Lcom/coloros/anim/f/c;->e:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 9133
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    return v0

    :cond_1
    return v1
.end method

.method public final g()F
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 262
    :cond_0
    iget v1, p0, Lcom/coloros/anim/f/c;->f:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 9137
    iget v0, v0, Lcom/coloros/anim/a;->k:F

    return v0

    :cond_1
    return v1
.end method

.method public final getAnimatedFraction()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/f/c;->d:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 70
    :cond_1
    iget v0, p0, Lcom/coloros/anim/f/c;->d:F

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->f()F

    move-result v2

    goto :goto_0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/coloros/anim/f/c;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/a;->a()F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/coloros/anim/f/c;->b:Z

    return v0
.end method

.method public final setRepeatMode(I)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/coloros/anim/f/a;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 197
    iget-boolean p1, p0, Lcom/coloros/anim/f/c;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/coloros/anim/f/c;->h:Z

    .line 199
    invoke-direct {p0}, Lcom/coloros/anim/f/c;->h()V

    :cond_0
    return-void
.end method
