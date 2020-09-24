.class public final Lcom/coloros/anim/e/c;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/l;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    if-eqz v11, :cond_1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 40
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_b

    const/16 v6, 0xcaa

    if-eq v5, v6, :cond_a

    const/16 v6, 0xe48

    if-eq v5, v6, :cond_9

    const/16 v6, 0xe4e

    if-eq v5, v6, :cond_8

    const/16 v6, 0xe58

    if-eq v5, v6, :cond_7

    const/16 v6, 0xe5c

    if-eq v5, v6, :cond_6

    const/16 v6, 0x6f

    if-eq v5, v6, :cond_5

    const/16 v6, 0x70

    if-eq v5, v6, :cond_4

    const/16 v6, 0x72

    if-eq v5, v6, :cond_3

    const/16 v6, 0x73

    if-eq v5, v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    const-string v5, "r"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    goto :goto_3

    :cond_4
    const-string v5, "p"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const-string v5, "o"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    goto :goto_3

    :cond_6
    const-string v5, "so"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x6

    goto :goto_3

    :cond_7
    const-string v5, "sk"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    goto :goto_3

    :cond_8
    const-string v5, "sa"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x9

    goto :goto_3

    :cond_9
    const-string v5, "rz"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    goto :goto_3

    :cond_a
    const-string v5, "eo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x7

    goto :goto_3

    :cond_b
    const-string v5, "a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v10

    goto :goto_3

    :cond_c
    :goto_2
    move v2, v4

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 93
    :pswitch_0
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v17

    goto/16 :goto_1

    .line 90
    :pswitch_1
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v16

    goto/16 :goto_1

    .line 87
    :pswitch_2
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v25

    goto/16 :goto_1

    .line 84
    :pswitch_3
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v24

    goto/16 :goto_1

    .line 81
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/d;

    move-result-object v23

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "EffectiveAnimation doesn\'t support 3D layers."

    .line 61
    invoke-virtual {v8, v1}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    .line 73
    :pswitch_6
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v18

    .line 74
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 75
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lcom/coloros/anim/g/c;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1137
    iget v1, v8, Lcom/coloros/anim/a;->k:F

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v19

    move-object v9, v6

    move/from16 v6, v20

    move-object v12, v7

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/g/c;-><init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 76
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/g/c;

    iget-object v1, v1, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    if-nez v1, :cond_e

    .line 77
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v9

    new-instance v12, Lcom/coloros/anim/g/c;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2137
    iget v1, v8, Lcom/coloros/anim/a;->k:F

    .line 77
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/g/c;-><init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_4
    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 1050
    :pswitch_7
    new-instance v15, Lcom/coloros/anim/c/a/g;

    sget-object v2, Lcom/coloros/anim/e/z;->a:Lcom/coloros/anim/e/z;

    invoke-static {v0, v8, v2}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Lcom/coloros/anim/e/af;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/coloros/anim/c/a/g;-><init>(Ljava/util/List;)V

    goto/16 :goto_1

    .line 55
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/a;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/m;

    move-result-object v14

    goto/16 :goto_1

    .line 43
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 44
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 46
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/a;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/e;

    move-result-object v13

    goto :goto_5

    .line 48
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 51
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1

    :cond_11
    if-eqz v11, :cond_12

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :cond_12
    if-eqz v13, :cond_14

    .line 3125
    invoke-virtual {v13}, Lcom/coloros/anim/c/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Lcom/coloros/anim/c/a/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    iget-object v0, v0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    move v0, v10

    goto :goto_7

    :cond_14
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_15

    const/4 v13, 0x0

    :cond_15
    if-eqz v14, :cond_17

    .line 3129
    instance-of v0, v14, Lcom/coloros/anim/c/a/i;

    if-nez v0, :cond_16

    .line 3131
    invoke-interface {v14}, Lcom/coloros/anim/c/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v14}, Lcom/coloros/anim/c/a/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    iget-object v0, v0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    move v0, v10

    goto :goto_9

    :cond_17
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_18

    const/4 v14, 0x0

    :cond_18
    if-eqz v1, :cond_1a

    .line 3135
    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    iget-object v0, v0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_19

    goto :goto_a

    :cond_19
    move v0, v10

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_1b

    const/16 v22, 0x0

    goto :goto_c

    :cond_1b
    move-object/from16 v22, v1

    :goto_c
    if-eqz v15, :cond_1e

    .line 3139
    invoke-virtual {v15}, Lcom/coloros/anim/c/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v15}, Lcom/coloros/anim/c/a/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    iget-object v0, v0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/anim/g/d;

    .line 4030
    iget v1, v0, Lcom/coloros/anim/g/d;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1c

    iget v0, v0, Lcom/coloros/anim/g/d;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    move v0, v10

    :goto_d
    if-eqz v0, :cond_1d

    goto :goto_e

    :cond_1d
    move v0, v10

    goto :goto_f

    :cond_1e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_1f

    const/16 v21, 0x0

    goto :goto_10

    :cond_1f
    move-object/from16 v21, v15

    :goto_10
    if-eqz v16, :cond_21

    .line 4143
    invoke-virtual/range {v16 .. v16}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual/range {v16 .. v16}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    iget-object v0, v0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_20

    goto :goto_11

    :cond_20
    move v0, v10

    goto :goto_12

    :cond_21
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_22

    const/16 v26, 0x0

    goto :goto_13

    :cond_22
    move-object/from16 v26, v16

    :goto_13
    if-eqz v17, :cond_24

    .line 4147
    invoke-virtual/range {v17 .. v17}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {v17 .. v17}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/g/c;

    iget-object v0, v0, Lcom/coloros/anim/g/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_23

    goto :goto_14

    :cond_23
    move/from16 v19, v10

    goto :goto_15

    :cond_24
    :goto_14
    const/16 v19, 0x1

    :goto_15
    if-eqz v19, :cond_25

    const/16 v27, 0x0

    goto :goto_16

    :cond_25
    move-object/from16 v27, v17

    .line 121
    :goto_16
    new-instance v0, Lcom/coloros/anim/c/a/l;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-direct/range {v18 .. v27}, Lcom/coloros/anim/c/a/l;-><init>(Lcom/coloros/anim/c/a/e;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/g;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
