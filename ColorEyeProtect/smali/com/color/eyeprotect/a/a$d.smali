.class Lcom/color/eyeprotect/a/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/a/a;

.field private b:[Lcom/color/eyeprotect/a/e;

.field private c:[Lcom/color/eyeprotect/a/e;

.field private d:[Lcom/color/eyeprotect/a/e;


# direct methods
.method private constructor <init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/e;)V
    .locals 13

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->e(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StablePoints "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->e(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$a;

    move-result-object v2

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$a;->b(Lcom/color/eyeprotect/a/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "AICurveModel"

    const-string v1, "StablePoints has no dragSplineLine"

    goto :goto_0

    :goto_1
    iget v0, p2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v0}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v0

    iget p2, p2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->f(Lcom/color/eyeprotect/a/a;)F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/color/eyeprotect/a/e;

    iput-object v3, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    new-array v3, v2, [Lcom/color/eyeprotect/a/e;

    iput-object v3, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    new-array v2, v2, [Lcom/color/eyeprotect/a/e;

    iput-object v2, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->g(Lcom/color/eyeprotect/a/a;)F

    move-result v2

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/eyeprotect/a/c;->h()F

    move-result v5

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->i(Lcom/color/eyeprotect/a/a;)F

    move-result v6

    mul-float/2addr v5, v6

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/eyeprotect/a/c;->h()F

    move-result v5

    :goto_3
    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/color/eyeprotect/a/c;->f()F

    move-result v6

    mul-float/2addr v6, v1

    sub-float v6, p2, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/color/eyeprotect/a/c;->g()F

    move-result v8

    mul-float/2addr v8, p2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->j(Lcom/color/eyeprotect/a/a;)F

    move-result v10

    sub-float/2addr v9, p2

    mul-float/2addr v10, v9

    add-float/2addr v10, p2

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    :cond_3
    iget-object v10, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    invoke-static {p1, v9}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v11

    aput-object v11, v10, v3

    iget-object v10, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    sub-float v11, v9, p2

    mul-float v12, v5, v11

    add-float/2addr v12, p2

    invoke-static {p1, v12}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v12

    aput-object v12, v10, v3

    iget-object v10, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/color/eyeprotect/a/c;->i()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v12, p2

    invoke-static {p1, v12}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v10, "AICurveModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StablePoints y1Left:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", y2Left:"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", leftY:"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/color/eyeprotect/a/c;->d()F

    move-result v6

    mul-float/2addr v6, v1

    add-float/2addr v6, p2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/color/eyeprotect/a/c;->e()F

    move-result v8

    mul-float/2addr v8, p2

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->k(Lcom/color/eyeprotect/a/a;)F

    move-result v8

    sub-float/2addr v6, p2

    mul-float/2addr v8, v6

    add-float/2addr v8, p2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->l(Lcom/color/eyeprotect/a/a;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result v6

    invoke-static {p1, v6}, Lcom/color/eyeprotect/a/a;->e(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v6

    iget v6, v6, Lcom/color/eyeprotect/a/e;->b:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_4
    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    invoke-static {p1, v6}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v8

    aput-object v8, v1, v4

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    sub-float/2addr v6, p2

    mul-float/2addr v5, v6

    add-float/2addr v5, p2

    invoke-static {p1, v5}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v5

    aput-object v5, v1, v4

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->m(Lcom/color/eyeprotect/a/a;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v4

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->m(Lcom/color/eyeprotect/a/a;)F

    move-result v2

    invoke-static {p1, v2}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result v2

    iput v2, v1, Lcom/color/eyeprotect/a/e;->a:F

    :cond_5
    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/color/eyeprotect/a/c;->i()F

    move-result v2

    mul-float/2addr v2, v6

    add-float/2addr v2, p2

    invoke-static {p1, v2}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v2

    const-string v5, "AICurveModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StablePoints, leftX:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", rightX:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", currentX:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", y:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float p2, v0, v1

    if-lez p2, :cond_6

    cmpg-float p2, v0, v2

    if-gez p2, :cond_6

    iget-object p2, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object p2, p2, v3

    iget p2, p2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result p2

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->n(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$b;

    move-result-object v6

    invoke-static {v6}, Lcom/color/eyeprotect/a/a$b;->a(Lcom/color/eyeprotect/a/a$b;)[F

    move-result-object v6

    sub-float v1, v0, v1

    aget v8, v6, v3

    mul-float/2addr v1, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float p2, v0, p2

    aget v9, v6, v3

    mul-float/2addr p2, v9

    invoke-static {v8, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float p2, v0, p2

    invoke-static {v7, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float/2addr v2, v0

    aget v7, v6, v4

    mul-float/2addr v2, v7

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v0

    sub-float/2addr v5, v0

    aget v7, v6, v4

    mul-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v3

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    iput v1, v5, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v4

    invoke-static {p1, v2}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result v2

    iput v2, v1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v3

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result p2

    iput p2, v1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object p2, p2, v4

    invoke-static {p1, v0}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result v0

    iput v0, p2, Lcom/color/eyeprotect/a/e;->a:F

    const-string p2, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StablePoints, DAMPING_DIRECTION_DOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v6, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", DAMPING_DIRECTION_UP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v6, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StablePoints, leftX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rightX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", smallLeftX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", smallRightX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object p0, p0, v4

    iget p0, p0, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, p0}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p0, "AICurveModel"

    const-string p1, "StablePoints, target point is not in line, do not use ShockAbsorber."

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method synthetic constructor <init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a$d;-><init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$d;Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;
    .locals 6

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/color/eyeprotect/a/e;->a:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextPoint isLargeChange, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget v2, p1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p0, v2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/color/eyeprotect/a/e;

    iget v0, p1, Lcom/color/eyeprotect/a/e;->a:F

    iget p1, p1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-direct {p0, v0, p1}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    if-eqz v0, :cond_3

    const-string v0, "AICurveModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextPoint point.x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget v5, p1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v4, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", smallLeftX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v4, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", smallRightX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v4, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "AICurveModel"

    const-string v3, "mSmallChangeStablePoints == null"

    invoke-static {v0, v3}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    if-eqz v3, :cond_5

    iget p1, p1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/color/eyeprotect/a/e;->a:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_5

    move p1, v1

    goto :goto_4

    :cond_5
    move p1, v2

    :goto_4
    if-eqz v0, :cond_6

    const-string p1, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextPoint isSmallChangeLeft, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v3}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/color/eyeprotect/a/e;

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/color/eyeprotect/a/e;->a:F

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object p0, p0, v2

    iget p0, p0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-direct {p1, v0, p0}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    return-object p1

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextPoint isSmallChangeRight, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v2, v3}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/color/eyeprotect/a/e;

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/color/eyeprotect/a/e;->a:F

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object p0, p0, v1

    iget p0, p0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-direct {p1, v0, p0}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$d;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;)Z
    .locals 7

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget v0, v0, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/color/eyeprotect/a/e;->b:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/color/eyeprotect/a/e;->b:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v4, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/color/eyeprotect/a/e;->b:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v4, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/color/eyeprotect/a/e;->b:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "AICurveModel"

    const-string p1, "verifyPoint ok"

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", leftSmall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", leftSmallTarget:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", right:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", rightSmall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", rightSmallTarget:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$d;->d:[Lcom/color/eyeprotect/a/e;

    aget-object v1, v5, v1

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string v1, ", lastPoint:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget v5, p1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string p1, ", lastPoint:null"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz p2, :cond_5

    const-string p1, ", currPoint:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget v1, p2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string p1, ", currPoint:null"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz p3, :cond_6

    const-string p1, ", nextPoint:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    iget p2, p3, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string p1, ", nextPoint:null"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget-object p1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->o(Lcom/color/eyeprotect/a/a;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->e(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a;->e(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$a;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/a/a$a;->b(Lcom/color/eyeprotect/a/a$a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AICurveModel"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "verifyPoint error, verifyLeft:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", verifyRight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/color/eyeprotect/a/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8
    :goto_6
    return v1
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->b:[Lcom/color/eyeprotect/a/e;

    return-object p0
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$d;->c:[Lcom/color/eyeprotect/a/e;

    return-object p0
.end method
