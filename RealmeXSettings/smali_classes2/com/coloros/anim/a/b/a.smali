.class public abstract Lcom/coloros/anim/a/b/a;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/a/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/coloros/anim/g/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/b<",
            "TA;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:F

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/coloros/anim/g/c<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/anim/g/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/c<",
            "TK;>;"
        }
    .end annotation
.end field

.field private g:Lcom/coloros/anim/g/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/g/c<",
            "TK;>;"
        }
    .end annotation
.end field

.field private h:F

.field private i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private j:F

.field private k:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coloros/anim/g/c<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/a/b/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/coloros/anim/a/b/a;->c:Z

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/coloros/anim/a/b/a;->d:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 28
    iput v0, p0, Lcom/coloros/anim/a/b/a;->h:F

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/coloros/anim/a/b/a;->i:Ljava/lang/Object;

    .line 31
    iput v0, p0, Lcom/coloros/anim/a/b/a;->j:F

    .line 32
    iput v0, p0, Lcom/coloros/anim/a/b/a;->k:F

    .line 34
    iput-object p1, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    return-void
.end method

.method private g()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 103
    iget v0, p0, Lcom/coloros/anim/a/b/a;->j:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->b()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/anim/a/b/a;->j:F

    .line 106
    :cond_1
    iget v0, p0, Lcom/coloros/anim/a/b/a;->j:F

    return v0
.end method


# virtual methods
.method abstract a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/c<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/a/b/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/coloros/anim/a/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/a/b/a$a;

    invoke-interface {v1}, Lcom/coloros/anim/a/b/a$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 137
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->b()Lcom/coloros/anim/g/c;

    move-result-object v0

    .line 143
    invoke-direct {p0}, Lcom/coloros/anim/a/b/a;->g()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/coloros/anim/a/b/a;->g()F

    move-result p1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->e()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->e()F

    move-result p1

    .line 149
    :cond_2
    :goto_0
    iget v1, p0, Lcom/coloros/anim/a/b/a;->d:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    return-void

    .line 152
    :cond_3
    iput p1, p0, Lcom/coloros/anim/a/b/a;->d:F

    .line 154
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->b()Lcom/coloros/anim/g/c;

    move-result-object p1

    if-ne v0, p1, :cond_4

    .line 156
    invoke-virtual {p1}, Lcom/coloros/anim/g/c;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->a()V

    :cond_5
    return-void
.end method

.method public final a(Lcom/coloros/anim/a/b/a$a;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/coloros/anim/g/b;)V
    .locals 2
    .param p1    # Lcom/coloros/anim/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/g/b<",
            "TA;>;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->b:Lcom/coloros/anim/g/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1071
    iput-object v1, v0, Lcom/coloros/anim/g/b;->b:Lcom/coloros/anim/a/b/a;

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/coloros/anim/a/b/a;->b:Lcom/coloros/anim/g/b;

    if-eqz p1, :cond_1

    .line 2071
    iput-object p0, p1, Lcom/coloros/anim/g/b;->b:Lcom/coloros/anim/a/b/a;

    :cond_1
    return-void
.end method

.method protected final b()Lcom/coloros/anim/g/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/g/c<",
            "TK;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->f:Lcom/coloros/anim/g/c;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coloros/anim/a/b/a;->d:F

    invoke-virtual {v0, v1}, Lcom/coloros/anim/g/c;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->f:Lcom/coloros/anim/g/c;

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    .line 57
    iget v1, p0, Lcom/coloros/anim/a/b/a;->d:F

    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->b()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    .line 60
    iget v2, p0, Lcom/coloros/anim/a/b/a;->d:F

    invoke-virtual {v0, v2}, Lcom/coloros/anim/g/c;->a(F)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 66
    :cond_1
    iput-object v0, p0, Lcom/coloros/anim/a/b/a;->f:Lcom/coloros/anim/g/c;

    return-object v0
.end method

.method final c()F
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/coloros/anim/a/b/a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->b()Lcom/coloros/anim/g/c;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 83
    :cond_1
    iget v1, p0, Lcom/coloros/anim/a/b/a;->d:F

    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->b()F

    move-result v2

    sub-float/2addr v1, v2

    .line 84
    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->b()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method protected final d()F
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->b()Lcom/coloros/anim/g/c;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    iget-object v0, v0, Lcom/coloros/anim/g/c;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->c()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method e()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 111
    iget v0, p0, Lcom/coloros/anim/a/b/a;->k:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    invoke-virtual {v0}, Lcom/coloros/anim/g/c;->c()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coloros/anim/a/b/a;->k:F

    .line 114
    :cond_1
    iget v0, p0, Lcom/coloros/anim/a/b/a;->k:F

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->b()Lcom/coloros/anim/g/c;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/coloros/anim/a/b/a;->d()F

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/coloros/anim/a/b/a;->b:Lcom/coloros/anim/g/b;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coloros/anim/a/b/a;->g:Lcom/coloros/anim/g/c;

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/coloros/anim/a/b/a;->h:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/anim/a/b/a;->i:Ljava/lang/Object;

    return-object v0

    .line 124
    :cond_0
    iput-object v0, p0, Lcom/coloros/anim/a/b/a;->g:Lcom/coloros/anim/g/c;

    .line 125
    iput v1, p0, Lcom/coloros/anim/a/b/a;->h:F

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/coloros/anim/a/b/a;->a(Lcom/coloros/anim/g/c;F)Ljava/lang/Object;

    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/coloros/anim/a/b/a;->i:Ljava/lang/Object;

    return-object v0
.end method
