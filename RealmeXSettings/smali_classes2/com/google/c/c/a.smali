.class public final Lcom/google/c/c/a;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/c/m;


# static fields
.field private static final a:[Lcom/google/c/q;


# instance fields
.field private final b:Lcom/google/c/c/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [Lcom/google/c/q;

    sput-object v0, Lcom/google/c/c/a;->a:[Lcom/google/c/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/c/c/a/d;

    invoke-direct {v0}, Lcom/google/c/c/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/c/c/a;->b:Lcom/google/c/c/a/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/c;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 67
    sget-object v4, Lcom/google/c/e;->b:Lcom/google/c/e;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Lcom/google/c/b/b;->b()[I

    move-result-object v4

    .line 1105
    invoke-virtual {v1}, Lcom/google/c/b/b;->c()[I

    move-result-object v5

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 1259
    iget v6, v1, Lcom/google/c/b/b;->a:I

    .line 1145
    aget v7, v4, v2

    .line 1146
    aget v8, v4, v3

    :goto_0
    if-ge v7, v6, :cond_0

    .line 1147
    invoke-virtual {v1, v7, v8}, Lcom/google/c/b/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eq v7, v6, :cond_6

    .line 1154
    aget v6, v4, v2

    sub-int/2addr v7, v6

    if-eqz v7, :cond_5

    .line 1112
    aget v6, v4, v3

    .line 1113
    aget v8, v5, v3

    .line 1114
    aget v4, v4, v2

    .line 1115
    aget v5, v5, v2

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    .line 1117
    div-int/2addr v5, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v3

    .line 1118
    div-int/2addr v8, v7

    if-lez v5, :cond_4

    if-lez v8, :cond_4

    shr-int/lit8 v3, v7, 0x1

    add-int/2addr v6, v3

    add-int/2addr v4, v3

    .line 1131
    new-instance v3, Lcom/google/c/b/b;

    invoke-direct {v3, v5, v8}, Lcom/google/c/b/b;-><init>(II)V

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_3

    mul-int v10, v9, v7

    add-int/2addr v10, v6

    move v11, v2

    :goto_2
    if-ge v11, v5, :cond_2

    mul-int v12, v11, v7

    add-int/2addr v12, v4

    .line 1135
    invoke-virtual {v1, v12, v10}, Lcom/google/c/b/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1136
    invoke-virtual {v3, v11, v9}, Lcom/google/c/b/b;->b(II)V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 69
    :cond_3
    iget-object v1, v0, Lcom/google/c/c/a;->b:Lcom/google/c/c/a/d;

    invoke-virtual {v1, v3}, Lcom/google/c/c/a/d;->a(Lcom/google/c/b/b;)Lcom/google/c/b/e;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/google/c/c/a;->a:[Lcom/google/c/q;

    goto/16 :goto_c

    .line 1120
    :cond_4
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1156
    :cond_5
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1151
    :cond_6
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1107
    :cond_7
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 72
    :cond_8
    new-instance v1, Lcom/google/c/c/b/a;

    invoke-virtual/range {p1 .. p1}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/c/c/b/a;-><init>(Lcom/google/c/b/b;)V

    .line 2059
    iget-object v4, v1, Lcom/google/c/c/b/a;->b:Lcom/google/c/b/a/b;

    invoke-virtual {v4}, Lcom/google/c/b/a/b;->a()[Lcom/google/c/q;

    move-result-object v4

    .line 2060
    aget-object v5, v4, v2

    .line 2061
    aget-object v6, v4, v3

    const/4 v7, 0x2

    .line 2062
    aget-object v8, v4, v7

    const/4 v9, 0x3

    .line 2063
    aget-object v4, v4, v9

    .line 2068
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2069
    invoke-virtual {v1, v5, v6}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    invoke-virtual {v1, v5, v8}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    invoke-virtual {v1, v6, v4}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    invoke-virtual {v1, v8, v4}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    new-instance v12, Lcom/google/c/c/b/a$b;

    invoke-direct {v12, v2}, Lcom/google/c/c/b/a$b;-><init>(B)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2077
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/c/c/b/a$a;

    .line 2078
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/c/c/b/a$a;

    .line 2082
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2412
    iget-object v14, v12, Lcom/google/c/c/b/a$a;->a:Lcom/google/c/q;

    .line 2083
    invoke-static {v13, v14}, Lcom/google/c/c/b/a;->a(Ljava/util/Map;Lcom/google/c/q;)V

    .line 2416
    iget-object v12, v12, Lcom/google/c/c/b/a$a;->b:Lcom/google/c/q;

    .line 2084
    invoke-static {v13, v12}, Lcom/google/c/c/b/a;->a(Ljava/util/Map;Lcom/google/c/q;)V

    .line 3412
    iget-object v12, v10, Lcom/google/c/c/b/a$a;->a:Lcom/google/c/q;

    .line 2085
    invoke-static {v13, v12}, Lcom/google/c/c/b/a;->a(Ljava/util/Map;Lcom/google/c/q;)V

    .line 3416
    iget-object v10, v10, Lcom/google/c/c/b/a$a;->b:Lcom/google/c/q;

    .line 2086
    invoke-static {v13, v10}, Lcom/google/c/c/b/a;->a(Ljava/util/Map;Lcom/google/c/q;)V

    .line 2091
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 2092
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/c/q;

    .line 2093
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2094
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v7, :cond_9

    move-object/from16 v15, v18

    goto :goto_3

    :cond_9
    if-nez v14, :cond_a

    move-object/from16 v14, v18

    goto :goto_3

    :cond_a
    move-object/from16 v16, v18

    goto :goto_3

    :cond_b
    if-eqz v14, :cond_20

    if-eqz v15, :cond_20

    if-eqz v16, :cond_20

    .line 2111
    new-array v10, v9, [Lcom/google/c/q;

    aput-object v14, v10, v2

    aput-object v15, v10, v3

    aput-object v16, v10, v7

    .line 2113
    invoke-static {v10}, Lcom/google/c/q;->a([Lcom/google/c/q;)V

    .line 2116
    aget-object v12, v10, v2

    .line 2117
    aget-object v14, v10, v3

    .line 2118
    aget-object v10, v10, v7

    .line 2122
    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    move-object v4, v5

    goto :goto_4

    .line 2124
    :cond_c
    invoke-interface {v13, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object v4, v6

    goto :goto_4

    .line 2126
    :cond_d
    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object v4, v8

    .line 2141
    :cond_e
    :goto_4
    invoke-virtual {v1, v10, v4}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v5

    .line 3420
    iget v5, v5, Lcom/google/c/c/b/a$a;->c:I

    .line 2142
    invoke-virtual {v1, v12, v4}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v6

    .line 4420
    iget v6, v6, Lcom/google/c/c/b/a$a;->c:I

    and-int/lit8 v8, v5, 0x1

    if-ne v8, v3, :cond_f

    add-int/lit8 v5, v5, 0x1

    :cond_f
    add-int/2addr v5, v7

    and-int/lit8 v8, v6, 0x1

    if-ne v8, v3, :cond_10

    add-int/lit8 v6, v6, 0x1

    :cond_10
    add-int/2addr v6, v7

    mul-int/lit8 v8, v5, 0x4

    mul-int/lit8 v13, v6, 0x7

    if-ge v8, v13, :cond_17

    mul-int/lit8 v8, v6, 0x4

    mul-int/lit8 v13, v5, 0x7

    if-lt v8, v13, :cond_11

    goto/16 :goto_8

    .line 2189
    :cond_11
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 19273
    invoke-static {v14, v12}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 19274
    invoke-static {v10, v4}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v8

    .line 20038
    iget v13, v4, Lcom/google/c/q;->a:F

    .line 21038
    iget v15, v10, Lcom/google/c/q;->a:F

    sub-float/2addr v13, v15

    int-to-float v8, v8

    div-float/2addr v13, v8

    .line 21042
    iget v15, v4, Lcom/google/c/q;->b:F

    .line 22042
    iget v9, v10, Lcom/google/c/q;->b:F

    sub-float/2addr v15, v9

    div-float/2addr v15, v8

    .line 19278
    new-instance v8, Lcom/google/c/q;

    .line 23038
    iget v9, v4, Lcom/google/c/q;->a:F

    mul-float/2addr v13, v6

    add-float/2addr v9, v13

    .line 23042
    iget v13, v4, Lcom/google/c/q;->b:F

    mul-float/2addr v6, v15

    add-float/2addr v13, v6

    .line 19278
    invoke-direct {v8, v9, v13}, Lcom/google/c/q;-><init>(FF)V

    .line 19280
    invoke-static {v14, v10}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 19281
    invoke-static {v12, v4}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v5

    .line 24038
    iget v9, v4, Lcom/google/c/q;->a:F

    .line 25038
    iget v13, v12, Lcom/google/c/q;->a:F

    sub-float/2addr v9, v13

    int-to-float v5, v5

    div-float/2addr v9, v5

    .line 25042
    iget v13, v4, Lcom/google/c/q;->b:F

    .line 26042
    iget v15, v12, Lcom/google/c/q;->b:F

    sub-float/2addr v13, v15

    div-float/2addr v13, v5

    .line 19285
    new-instance v5, Lcom/google/c/q;

    .line 27038
    iget v15, v4, Lcom/google/c/q;->a:F

    mul-float/2addr v9, v6

    add-float/2addr v15, v9

    .line 27042
    iget v9, v4, Lcom/google/c/q;->b:F

    mul-float/2addr v6, v13

    add-float/2addr v9, v6

    .line 19285
    invoke-direct {v5, v15, v9}, Lcom/google/c/q;-><init>(FF)V

    .line 19287
    invoke-virtual {v1, v8}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 19288
    invoke-virtual {v1, v5}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;)Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v5, 0x0

    goto :goto_6

    .line 19293
    :cond_12
    invoke-virtual {v1, v5}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_5

    .line 19297
    :cond_13
    invoke-virtual {v1, v10, v8}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v6

    .line 27420
    iget v6, v6, Lcom/google/c/c/b/a$a;->c:I

    .line 19297
    invoke-virtual {v1, v12, v8}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v9

    .line 28420
    iget v9, v9, Lcom/google/c/c/b/a$a;->c:I

    sub-int/2addr v6, v9

    .line 19297
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 19299
    invoke-virtual {v1, v10, v5}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v9

    .line 29420
    iget v9, v9, Lcom/google/c/c/b/a$a;->c:I

    .line 19299
    invoke-virtual {v1, v12, v5}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v13

    .line 30420
    iget v13, v13, Lcom/google/c/c/b/a$a;->c:I

    sub-int/2addr v9, v13

    .line 19299
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v6, v9, :cond_14

    :goto_5
    move-object v5, v8

    :cond_14
    :goto_6
    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    move-object v4, v5

    .line 2197
    :goto_7
    invoke-virtual {v1, v10, v4}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v5

    .line 31420
    iget v5, v5, Lcom/google/c/c/b/a$a;->c:I

    .line 2197
    invoke-virtual {v1, v12, v4}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v6

    .line 32420
    iget v6, v6, Lcom/google/c/c/b/a$a;->c:I

    .line 2197
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    and-int/lit8 v6, v5, 0x1

    if-ne v6, v3, :cond_16

    add-int/lit8 v5, v5, 0x1

    :cond_16
    move/from16 v23, v5

    .line 2204
    iget-object v1, v1, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    move-object/from16 v17, v1

    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v20, v12

    move-object/from16 v21, v4

    move/from16 v22, v23

    invoke-static/range {v17 .. v23}, Lcom/google/c/c/b/a;->a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;II)Lcom/google/c/b/b;

    move-result-object v1

    move-object v2, v4

    goto/16 :goto_b

    .line 5227
    :cond_17
    :goto_8
    invoke-static {v14, v12}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    .line 5228
    invoke-static {v10, v4}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v9

    .line 6038
    iget v13, v4, Lcom/google/c/q;->a:F

    .line 7038
    iget v15, v10, Lcom/google/c/q;->a:F

    sub-float/2addr v13, v15

    int-to-float v9, v9

    div-float/2addr v13, v9

    .line 7042
    iget v15, v4, Lcom/google/c/q;->b:F

    .line 8042
    iget v7, v10, Lcom/google/c/q;->b:F

    sub-float/2addr v15, v7

    div-float/2addr v15, v9

    .line 5232
    new-instance v7, Lcom/google/c/q;

    .line 9038
    iget v9, v4, Lcom/google/c/q;->a:F

    mul-float/2addr v13, v8

    add-float/2addr v9, v13

    .line 9042
    iget v13, v4, Lcom/google/c/q;->b:F

    mul-float/2addr v8, v15

    add-float/2addr v13, v8

    .line 5232
    invoke-direct {v7, v9, v13}, Lcom/google/c/q;-><init>(FF)V

    .line 5234
    invoke-static {v14, v10}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 5235
    invoke-static {v12, v4}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v9

    .line 10038
    iget v13, v4, Lcom/google/c/q;->a:F

    .line 11038
    iget v15, v12, Lcom/google/c/q;->a:F

    sub-float/2addr v13, v15

    int-to-float v9, v9

    div-float/2addr v13, v9

    .line 11042
    iget v15, v4, Lcom/google/c/q;->b:F

    .line 12042
    iget v2, v12, Lcom/google/c/q;->b:F

    sub-float/2addr v15, v2

    div-float/2addr v15, v9

    .line 5239
    new-instance v2, Lcom/google/c/q;

    .line 13038
    iget v9, v4, Lcom/google/c/q;->a:F

    mul-float/2addr v13, v8

    add-float/2addr v9, v13

    .line 13042
    iget v13, v4, Lcom/google/c/q;->b:F

    mul-float/2addr v8, v15

    add-float/2addr v13, v8

    .line 5239
    invoke-direct {v2, v9, v13}, Lcom/google/c/q;-><init>(FF)V

    .line 5241
    invoke-virtual {v1, v7}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 5242
    invoke-virtual {v1, v2}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;)Z

    move-result v5

    if-nez v5, :cond_1a

    const/4 v2, 0x0

    goto :goto_a

    .line 5247
    :cond_18
    invoke-virtual {v1, v2}, Lcom/google/c/c/b/a;->a(Lcom/google/c/q;)Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_9

    .line 5251
    :cond_19
    invoke-virtual {v1, v10, v7}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v8

    .line 13420
    iget v8, v8, Lcom/google/c/c/b/a$a;->c:I

    sub-int v8, v5, v8

    .line 5251
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v1, v12, v7}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v9

    .line 14420
    iget v9, v9, Lcom/google/c/c/b/a$a;->c:I

    sub-int v9, v6, v9

    .line 5251
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 5253
    invoke-virtual {v1, v10, v2}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v9

    .line 15420
    iget v9, v9, Lcom/google/c/c/b/a$a;->c:I

    sub-int/2addr v5, v9

    .line 5253
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v1, v12, v2}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v9

    .line 16420
    iget v9, v9, Lcom/google/c/c/b/a$a;->c:I

    sub-int/2addr v6, v9

    .line 5253
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-gt v8, v5, :cond_1a

    :goto_9
    move-object v2, v7

    :cond_1a
    :goto_a
    if-nez v2, :cond_1b

    move-object v2, v4

    .line 2171
    :cond_1b
    invoke-virtual {v1, v10, v2}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v4

    .line 17420
    iget v4, v4, Lcom/google/c/c/b/a$a;->c:I

    .line 2172
    invoke-virtual {v1, v12, v2}, Lcom/google/c/c/b/a;->b(Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/c/b/a$a;

    move-result-object v5

    .line 18420
    iget v5, v5, Lcom/google/c/c/b/a$a;->c:I

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v3, :cond_1c

    add-int/lit8 v4, v4, 0x1

    :cond_1c
    move/from16 v22, v4

    and-int/lit8 v4, v5, 0x1

    if-ne v4, v3, :cond_1d

    add-int/lit8 v5, v5, 0x1

    :cond_1d
    move/from16 v23, v5

    .line 2184
    iget-object v1, v1, Lcom/google/c/c/b/a;->a:Lcom/google/c/b/b;

    move-object/from16 v17, v1

    move-object/from16 v18, v10

    move-object/from16 v19, v14

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    invoke-static/range {v17 .. v23}, Lcom/google/c/c/b/a;->a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;II)Lcom/google/c/b/b;

    move-result-object v1

    .line 2213
    :goto_b
    new-instance v4, Lcom/google/c/b/g;

    new-array v5, v11, [Lcom/google/c/q;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    aput-object v14, v5, v3

    const/4 v3, 0x2

    aput-object v12, v5, v3

    const/4 v3, 0x3

    aput-object v2, v5, v3

    invoke-direct {v4, v1, v5}, Lcom/google/c/b/g;-><init>(Lcom/google/c/b/b;[Lcom/google/c/q;)V

    .line 73
    iget-object v1, v0, Lcom/google/c/c/a;->b:Lcom/google/c/c/a/d;

    .line 33039
    iget-object v2, v4, Lcom/google/c/b/g;->d:Lcom/google/c/b/b;

    .line 73
    invoke-virtual {v1, v2}, Lcom/google/c/c/a/d;->a(Lcom/google/c/b/b;)Lcom/google/c/b/e;

    move-result-object v1

    .line 33043
    iget-object v2, v4, Lcom/google/c/b/g;->e:[Lcom/google/c/q;

    .line 76
    :goto_c
    new-instance v3, Lcom/google/c/o;

    .line 33053
    iget-object v4, v1, Lcom/google/c/b/e;->b:Ljava/lang/String;

    .line 34049
    iget-object v5, v1, Lcom/google/c/b/e;->a:[B

    .line 76
    sget-object v6, Lcom/google/c/a;->f:Lcom/google/c/a;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 34057
    iget-object v2, v1, Lcom/google/c/b/e;->c:Ljava/util/List;

    if-eqz v2, :cond_1e

    .line 80
    sget-object v4, Lcom/google/c/p;->c:Lcom/google/c/p;

    invoke-virtual {v3, v4, v2}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 34061
    :cond_1e
    iget-object v1, v1, Lcom/google/c/b/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 84
    sget-object v2, Lcom/google/c/p;->d:Lcom/google/c/p;

    invoke-virtual {v3, v2, v1}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    :cond_1f
    return-object v3

    .line 2107
    :cond_20
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1
.end method

.method public final a()V
    .locals 0

    return-void
.end method
