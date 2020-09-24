.class public Lcom/coloros/anim/g/c;
.super Ljava/lang/Object;
.source "Keyframe.java"


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
.field private final a:Lcom/coloros/anim/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:F

.field public e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Landroid/graphics/PointF;

.field public h:Landroid/graphics/PointF;

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field private m:F

.field private n:F


# direct methods
.method public constructor <init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/coloros/anim/g/c;->g:Landroid/graphics/PointF;

    .line 28
    iput-object v0, p0, Lcom/coloros/anim/g/c;->h:Landroid/graphics/PointF;

    const v0, -0x358c9d09

    .line 29
    iput v0, p0, Lcom/coloros/anim/g/c;->i:F

    .line 30
    iput v0, p0, Lcom/coloros/anim/g/c;->j:F

    const v0, 0x2ec8fb09

    .line 31
    iput v0, p0, Lcom/coloros/anim/g/c;->k:I

    .line 32
    iput v0, p0, Lcom/coloros/anim/g/c;->l:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/coloros/anim/g/c;->m:F

    .line 34
    iput v0, p0, Lcom/coloros/anim/g/c;->n:F

    .line 40
    iput-object p1, p0, Lcom/coloros/anim/g/c;->a:Lcom/coloros/anim/a;

    .line 41
    iput-object p2, p0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Lcom/coloros/anim/g/c;->c:Landroid/view/animation/Interpolator;

    .line 44
    iput p5, p0, Lcom/coloros/anim/g/c;->d:F

    .line 45
    iput-object p6, p0, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/coloros/anim/g/c;->g:Landroid/graphics/PointF;

    .line 28
    iput-object v0, p0, Lcom/coloros/anim/g/c;->h:Landroid/graphics/PointF;

    const v1, -0x358c9d09

    .line 29
    iput v1, p0, Lcom/coloros/anim/g/c;->i:F

    .line 30
    iput v1, p0, Lcom/coloros/anim/g/c;->j:F

    const v1, 0x2ec8fb09

    .line 31
    iput v1, p0, Lcom/coloros/anim/g/c;->k:I

    .line 32
    iput v1, p0, Lcom/coloros/anim/g/c;->l:I

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Lcom/coloros/anim/g/c;->m:F

    .line 34
    iput v1, p0, Lcom/coloros/anim/g/c;->n:F

    .line 52
    iput-object v0, p0, Lcom/coloros/anim/g/c;->a:Lcom/coloros/anim/a;

    .line 53
    iput-object p1, p0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lcom/coloros/anim/g/c;->c:Landroid/view/animation/Interpolator;

    .line 56
    iput v1, p0, Lcom/coloros/anim/g/c;->d:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 57
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 92
    invoke-virtual {p0}, Lcom/coloros/anim/g/c;->b()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/g/c;->c()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()F
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/coloros/anim/g/c;->a:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    iget v1, p0, Lcom/coloros/anim/g/c;->m:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 65
    iget v1, p0, Lcom/coloros/anim/g/c;->d:F

    .line 1133
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    sub-float/2addr v1, v0

    .line 65
    iget-object v0, p0, Lcom/coloros/anim/g/c;->a:Lcom/coloros/anim/a;

    invoke-virtual {v0}, Lcom/coloros/anim/a;->b()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/coloros/anim/g/c;->m:F

    .line 67
    :cond_1
    iget v0, p0, Lcom/coloros/anim/g/c;->m:F

    return v0
.end method

.method public final c()F
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/coloros/anim/g/c;->a:Lcom/coloros/anim/a;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget v0, p0, Lcom/coloros/anim/g/c;->n:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 76
    iput v1, p0, Lcom/coloros/anim/g/c;->n:F

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/g/c;->b()F

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/coloros/anim/g/c;->d:F

    sub-float/2addr v1, v2

    .line 80
    iget-object v2, p0, Lcom/coloros/anim/g/c;->a:Lcom/coloros/anim/a;

    invoke-virtual {v2}, Lcom/coloros/anim/a;->b()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/coloros/anim/g/c;->n:F

    .line 84
    :cond_2
    :goto_0
    iget v0, p0, Lcom/coloros/anim/g/c;->n:F

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/coloros/anim/g/c;->c:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyframe{startValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/g/c;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/anim/g/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/g/c;->f:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/g/c;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
