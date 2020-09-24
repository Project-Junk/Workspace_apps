.class public Lcom/coloros/anim/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/l;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

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

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "so"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_3

    :sswitch_1
    const-string v4, "sk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_3

    :sswitch_2
    const-string v4, "sa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    goto :goto_3

    :sswitch_3
    const-string v4, "rz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const-string v4, "eo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_3

    :sswitch_5
    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_6
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_7
    const-string v4, "p"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_8
    const-string v4, "o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_9
    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v3

    :goto_3
    packed-switch v2, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :pswitch_0
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v2

    move-object/from16 v17, v2

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v2

    move-object/from16 v16, v2

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v2

    move-object/from16 v25, v2

    goto/16 :goto_1

    :pswitch_3
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v2

    move-object/from16 v24, v2

    goto/16 :goto_1

    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/d;

    move-result-object v2

    move-object/from16 v23, v2

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "EffectiveAnimation doesn\'t support 3D layers."

    invoke-virtual {v8, v1}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    :pswitch_6
    invoke-static {v0, v8, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lcom/coloros/anim/g/c;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v9, v6

    move/from16 v6, v19

    move-object v12, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/g/c;-><init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/g/c;

    iget-object v1, v1, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    if-nez v1, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object v9

    new-instance v12, Lcom/coloros/anim/g/c;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/coloros/anim/a;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/coloros/anim/g/c;-><init>(Lcom/coloros/anim/a;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    move-object/from16 v1, v18

    goto/16 :goto_1

    :pswitch_7
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->d(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/g;

    move-result-object v2

    move-object v15, v2

    goto/16 :goto_1

    :pswitch_8
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/a;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/m;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/a;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/e;

    move-result-object v13

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :cond_8
    invoke-static {v13}, Lcom/coloros/anim/e/c;->a(Lcom/coloros/anim/c/a/e;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v19, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v19, v13

    :goto_6
    invoke-static {v14}, Lcom/coloros/anim/e/c;->a(Lcom/coloros/anim/c/a/m;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v20, 0x0

    goto :goto_7

    :cond_a
    move-object/from16 v20, v14

    :goto_7
    invoke-static {v1}, Lcom/coloros/anim/e/c;->a(Lcom/coloros/anim/c/a/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v22, 0x0

    goto :goto_8

    :cond_b
    move-object/from16 v22, v1

    :goto_8
    invoke-static {v15}, Lcom/coloros/anim/e/c;->a(Lcom/coloros/anim/c/a/g;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v21, 0x0

    goto :goto_9

    :cond_c
    move-object/from16 v21, v15

    :goto_9
    invoke-static/range {v16 .. v16}, Lcom/coloros/anim/e/c;->b(Lcom/coloros/anim/c/a/b;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v26, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 v26, v16

    :goto_a
    invoke-static/range {v17 .. v17}, Lcom/coloros/anim/e/c;->c(Lcom/coloros/anim/c/a/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v27, 0x0

    goto :goto_b

    :cond_e
    move-object/from16 v27, v17

    :goto_b
    new-instance v0, Lcom/coloros/anim/c/a/l;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v27}, Lcom/coloros/anim/c/a/l;-><init>(Lcom/coloros/anim/c/a/e;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/g;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_9
        0x6f -> :sswitch_8
        0x70 -> :sswitch_7
        0x72 -> :sswitch_6
        0x73 -> :sswitch_5
        0xcaa -> :sswitch_4
        0xe48 -> :sswitch_3
        0xe4e -> :sswitch_2
        0xe58 -> :sswitch_1
        0xe5c -> :sswitch_0
    .end sparse-switch

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

.method private static a(Lcom/coloros/anim/c/a/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/g/c;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static a(Lcom/coloros/anim/c/a/e;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/e;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/g/c;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static a(Lcom/coloros/anim/c/a/g;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/g;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/g/c;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Lcom/coloros/anim/g/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1}, Lcom/coloros/anim/g/d;->b(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static a(Lcom/coloros/anim/c/a/m;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/coloros/anim/c/a/i;

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/coloros/anim/c/a/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/coloros/anim/c/a/m;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/g/c;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static b(Lcom/coloros/anim/c/a/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/g/c;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static c(Lcom/coloros/anim/c/a/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/anim/c/a/b;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/g/c;

    iget-object p0, p0, Lcom/coloros/anim/g/c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
