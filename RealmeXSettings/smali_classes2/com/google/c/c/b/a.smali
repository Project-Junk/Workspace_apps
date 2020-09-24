.class public final Lcom/google/c/c/b/a;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/c/b/a$b;,
        Lcom/google/c/c/b/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/c/b/b;

.field public final b:Lcom/google/c/b/a/b;


# direct methods
.method public constructor <init>(Lcom/google/c/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    .line 48
    new-instance v0, Lcom/google/c/b/a/b;

    invoke-direct {v0, p1}, Lcom/google/c/b/a/b;-><init>(Lcom/google/c/b/b;)V

    iput-object v0, p0, Lcom/google/c/c/b/a;->b:Lcom/google/c/b/a/b;

    return-void
.end method

.method public static a(Lcom/google/c/q;Lcom/google/c/q;)I
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcom/google/c/q;->a(Lcom/google/c/q;Lcom/google/c/q;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;II)Lcom/google/c/b/b;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p0

    move/from16 v6, p5

    move/from16 v7, p6

    .line 329
    invoke-static {}, Lcom/google/c/b/i;->a()Lcom/google/c/b/i;

    move-result-object v4

    move/from16 v8, p5

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    move v12, v8

    move v10, v8

    move/from16 v8, p6

    int-to-float v8, v8

    sub-float v15, v8, v9

    move v13, v15

    .line 5038
    iget v8, v0, Lcom/google/c/q;->a:F

    move/from16 v16, v8

    .line 5042
    iget v0, v0, Lcom/google/c/q;->b:F

    move/from16 v17, v0

    .line 6038
    iget v0, v3, Lcom/google/c/q;->a:F

    move/from16 v18, v0

    .line 6042
    iget v0, v3, Lcom/google/c/q;->b:F

    move/from16 v19, v0

    .line 7038
    iget v0, v2, Lcom/google/c/q;->a:F

    move/from16 v20, v0

    .line 7042
    iget v0, v2, Lcom/google/c/q;->b:F

    move/from16 v21, v0

    .line 8038
    iget v0, v1, Lcom/google/c/q;->a:F

    move/from16 v22, v0

    .line 8042
    iget v0, v1, Lcom/google/c/q;->b:F

    move/from16 v23, v0

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    .line 331
    invoke-virtual/range {v4 .. v23}, Lcom/google/c/b/i;->a(Lcom/google/c/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/c/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lcom/google/c/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/c/q;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/c/q;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/q;)Z
    .locals 3

    .line 1038
    iget v0, p1, Lcom/google/c/q;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2038
    iget v0, p1, Lcom/google/c/q;->a:F

    .line 306
    iget-object v2, p0, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    .line 2259
    iget v2, v2, Lcom/google/c/b/b;->a:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 3042
    iget v0, p1, Lcom/google/c/q;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 4042
    iget p1, p1, Lcom/google/c/q;->b:F

    .line 306
    iget-object v0, p0, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    .line 4266
    iget v0, v0, Lcom/google/c/b/b;->b:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 9038
    iget v3, v1, Lcom/google/c/q;->a:F

    float-to-int v3, v3

    .line 9042
    iget v4, v1, Lcom/google/c/q;->b:F

    float-to-int v4, v4

    .line 10038
    iget v5, v2, Lcom/google/c/q;->a:F

    float-to-int v5, v5

    .line 10042
    iget v6, v2, Lcom/google/c/q;->b:F

    float-to-int v6, v6

    sub-int v7, v6, v4

    .line 361
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v5, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v10, 0x1

    if-le v7, v8, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    :cond_1
    sub-int v8, v5, v3

    .line 371
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v11, v6, v4

    .line 372
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    neg-int v12, v8

    shr-int/2addr v12, v10

    const/4 v13, -0x1

    if-ge v4, v6, :cond_2

    move v14, v10

    goto :goto_1

    :cond_2
    move v14, v13

    :goto_1
    if-ge v3, v5, :cond_3

    move v13, v10

    .line 377
    :cond_3
    iget-object v10, v0, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    if-eqz v7, :cond_4

    move v15, v4

    goto :goto_2

    :cond_4
    move v15, v3

    :goto_2
    if-eqz v7, :cond_5

    move v9, v3

    goto :goto_3

    :cond_5
    move v9, v4

    :goto_3
    invoke-virtual {v10, v15, v9}, Lcom/google/c/b/b;->a(II)Z

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-eq v3, v5, :cond_a

    .line 379
    iget-object v15, v0, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    if-eqz v7, :cond_6

    move v0, v4

    goto :goto_5

    :cond_6
    move v0, v3

    :goto_5
    if-eqz v7, :cond_7

    move/from16 v16, v5

    move v5, v3

    goto :goto_6

    :cond_7
    move/from16 v16, v5

    move v5, v4

    :goto_6
    invoke-virtual {v15, v0, v5}, Lcom/google/c/b/b;->a(II)Z

    move-result v0

    if-eq v0, v9, :cond_8

    add-int/lit8 v10, v10, 0x1

    move v9, v0

    :cond_8
    add-int/2addr v12, v11

    if-lez v12, :cond_9

    if-eq v4, v6, :cond_a

    add-int/2addr v4, v14

    sub-int/2addr v12, v8

    :cond_9
    add-int/2addr v3, v13

    move-object/from16 v0, p0

    move/from16 v5, v16

    goto :goto_4

    .line 393
    :cond_a
    new-instance v0, Lcom/google/c/c/b/a$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/google/c/c/b/a$a;-><init>(Lcom/google/c/q;Lcom/google/c/q;IB)V

    return-object v0
.end method
