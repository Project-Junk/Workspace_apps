.class public final Lcom/color/eyeprotect/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:F

.field private c:Z

.field private d:Z

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const v18, 0xffff

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/color/eyeprotect/e/b;-><init>(ZFZZFZZZIIIIZLjava/lang/String;IJILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>(ZFZZFZZZIIIIZLjava/lang/String;IJ)V
    .locals 3

    move-object v0, p0

    move-object/from16 v1, p14

    const-string v2, "activeTime"

    invoke-static {v1, v2}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->a:Z

    move v2, p2

    iput v2, v0, Lcom/color/eyeprotect/e/b;->b:F

    move v2, p3

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->c:Z

    move v2, p4

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->d:Z

    move v2, p5

    iput v2, v0, Lcom/color/eyeprotect/e/b;->e:F

    move v2, p6

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->f:Z

    move v2, p7

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->g:Z

    move v2, p8

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->h:Z

    move v2, p9

    iput v2, v0, Lcom/color/eyeprotect/e/b;->i:I

    move v2, p10

    iput v2, v0, Lcom/color/eyeprotect/e/b;->j:I

    move v2, p11

    iput v2, v0, Lcom/color/eyeprotect/e/b;->k:I

    move v2, p12

    iput v2, v0, Lcom/color/eyeprotect/e/b;->l:I

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/color/eyeprotect/e/b;->m:Z

    iput-object v1, v0, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/color/eyeprotect/e/b;->o:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/color/eyeprotect/e/b;->p:J

    return-void
.end method

.method public synthetic constructor <init>(ZFZZFZZZIIIIZLjava/lang/String;IJILa/d/b/e;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const v4, 0x3f3051ca

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v4, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/16 v10, 0x16

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v2

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x7

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move v13, v2

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v2, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_d

    const-string v14, ""

    goto :goto_d

    :cond_d
    move-object/from16 v14, p14

    :goto_d
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    const-wide/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-wide/from16 v16, p16

    :goto_f
    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v4

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v2

    move-object/from16 p14, v14

    move/from16 p15, v15

    move-wide/from16 p16, v16

    invoke-direct/range {p0 .. p17}, Lcom/color/eyeprotect/e/b;-><init>(ZFZZFZZZIIIIZLjava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->b:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->i:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/color/eyeprotect/e/b;->p:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->a:Z

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->b:F

    return p0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->e:F

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->j:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->c:Z

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->k:I

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->d:Z

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->c:Z

    return p0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->l:I

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->f:Z

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->d:Z

    return p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->e:F

    return p0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/e/b;->o:I

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->g:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_e

    instance-of v1, p1, Lcom/color/eyeprotect/e/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    check-cast p1, Lcom/color/eyeprotect/e/b;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->a:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->a:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->b:F

    iget v3, p1, Lcom/color/eyeprotect/e/b;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->c:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->c:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->d:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->d:Z

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->e:F

    iget v3, p1, Lcom/color/eyeprotect/e/b;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->f:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->f:Z

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->g:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->g:Z

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->h:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->h:Z

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->i:I

    iget v3, p1, Lcom/color/eyeprotect/e/b;->i:I

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->j:I

    iget v3, p1, Lcom/color/eyeprotect/e/b;->j:I

    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->k:I

    iget v3, p1, Lcom/color/eyeprotect/e/b;->k:I

    if-ne v1, v3, :cond_8

    move v1, v0

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->l:I

    iget v3, p1, Lcom/color/eyeprotect/e/b;->l:I

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->m:Z

    iget-boolean v3, p1, Lcom/color/eyeprotect/e/b;->m:Z

    if-ne v1, v3, :cond_a

    move v1, v0

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/color/eyeprotect/e/b;->o:I

    iget v3, p1, Lcom/color/eyeprotect/e/b;->o:I

    if-ne v1, v3, :cond_b

    move v1, v0

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    if-eqz v1, :cond_d

    iget-wide v3, p0, Lcom/color/eyeprotect/e/b;->p:J

    iget-wide p0, p1, Lcom/color/eyeprotect/e/b;->p:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_c

    move p0, v0

    goto :goto_c

    :cond_c
    move p0, v2

    :goto_c
    if-eqz p0, :cond_d

    goto :goto_d

    :cond_d
    return v2

    :cond_e
    :goto_d
    return v0
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->h:Z

    return-void
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->f:Z

    return p0
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/e/b;->m:Z

    return-void
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->g:Z

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->h:Z

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/color/eyeprotect/e/b;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/e/b;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/e/b;->c:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/e/b;->d:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/e/b;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/e/b;->f:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/e/b;->g:Z

    if-eqz v2, :cond_4

    move v2, v1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/e/b;->h:Z

    if-eqz v2, :cond_5

    move v2, v1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/e/b;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/e/b;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/e/b;->k:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/color/eyeprotect/e/b;->l:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/eyeprotect/e/b;->m:Z

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/color/eyeprotect/e/b;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/color/eyeprotect/e/b;->p:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->i:I

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->j:I

    return p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->k:I

    return p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->l:I

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/e/b;->m:Z

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/e/b;->o:I

    return p0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/color/eyeprotect/e/b;->p:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EyeProtectRestoreData(autoColorTemperatureEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", colorEyeProtectSaveLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", eyeProtectEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayModeChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", normalEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", grayEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fixTimeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", beginTimeHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", beginTimeMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fixTimeChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/eyeprotect/e/b;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/e/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showGuidDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/eyeprotect/e/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eyeProtectEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/color/eyeprotect/e/b;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
