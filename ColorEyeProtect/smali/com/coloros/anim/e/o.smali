.class Lcom/coloros/anim/e/o;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/e;
    .locals 21

    move-object/from16 v0, p1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v13, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, -0x1

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "nm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "ml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "lj"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_3
    const-string v1, "lc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_4
    const-string v1, "hd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_2

    :sswitch_5
    const-string v1, "w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_6
    const-string v1, "t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_7
    const-string v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_8
    const-string v1, "o"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_9
    const-string v1, "g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_a
    const-string v1, "e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_b
    const-string v1, "d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v1, v17

    :goto_2
    packed-switch v1, :pswitch_data_0

    move-object/from16 v2, p0

    move/from16 v20, v13

    move/from16 v19, v15

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v18, v14

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v15

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    move/from16 v20, v13

    const/16 v13, 0x6e

    if-eq v15, v13, :cond_2

    const/16 v13, 0x76

    if-eq v15, v13, :cond_1

    goto :goto_5

    :cond_1
    const-string v13, "v"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_6

    :cond_2
    const-string v13, "n"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_6

    :cond_3
    :goto_5
    move/from16 v13, v17

    :goto_6
    packed-switch v13, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/b;

    move-result-object v2

    goto :goto_7

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object/from16 v14, v18

    move/from16 v15, v19

    move/from16 v13, v20

    goto :goto_4

    :cond_4
    move/from16 v20, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const-string v13, "o"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v14, v2

    const/4 v1, 0x1

    goto :goto_a

    :cond_5
    const-string v13, "d"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "g"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v1, 0x1

    goto :goto_9

    :cond_7
    :goto_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/anim/a;->a(Z)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v14, v18

    :goto_a
    move/from16 v15, v19

    move/from16 v13, v20

    goto/16 :goto_3

    :cond_8
    move/from16 v20, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_9

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    :goto_b
    move-object/from16 v2, p0

    move-object/from16 v14, v18

    goto/16 :goto_15

    :pswitch_3
    move/from16 v20, v13

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v15

    goto/16 :goto_10

    :pswitch_4
    move/from16 v19, v15

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v13, v1

    goto/16 :goto_10

    :pswitch_5
    move/from16 v20, v13

    move/from16 v19, v15

    invoke-static {}, Lcom/coloros/anim/c/b/p$b;->values()[Lcom/coloros/anim/c/b/p$b;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    aget-object v12, v1, v2

    goto :goto_c

    :pswitch_6
    move/from16 v20, v13

    move/from16 v19, v15

    const/4 v13, 0x1

    invoke-static {}, Lcom/coloros/anim/c/b/p$a;->values()[Lcom/coloros/anim/c/b/p$a;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    sub-int/2addr v2, v13

    aget-object v10, v1, v2

    :goto_c
    move-object/from16 v2, p0

    :goto_d
    move/from16 v13, v20

    goto/16 :goto_0

    :pswitch_7
    move/from16 v20, v13

    move/from16 v19, v15

    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/b;

    move-result-object v9

    goto :goto_10

    :pswitch_8
    move/from16 v20, v13

    move/from16 v19, v15

    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->c(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/f;

    move-result-object v8

    goto :goto_10

    :pswitch_9
    move/from16 v20, v13

    move/from16 v19, v15

    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->c(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/f;

    move-result-object v7

    goto :goto_10

    :pswitch_a
    move/from16 v20, v13

    move/from16 v19, v15

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v13, :cond_a

    sget-object v1, Lcom/coloros/anim/c/b/f;->a:Lcom/coloros/anim/c/b/f;

    :goto_e
    move-object v4, v1

    goto :goto_f

    :cond_a
    sget-object v1, Lcom/coloros/anim/c/b/f;->b:Lcom/coloros/anim/c/b/f;

    goto :goto_e

    :goto_f
    move-object/from16 v2, p0

    goto/16 :goto_15

    :pswitch_b
    move/from16 v20, v13

    move/from16 v19, v15

    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/d;

    move-result-object v6

    :goto_10
    move-object/from16 v2, p0

    goto/16 :goto_0

    :pswitch_c
    move/from16 v20, v13

    move/from16 v19, v15

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move/from16 v1, v17

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v13, 0x6b

    if-eq v15, v13, :cond_c

    const/16 v13, 0x70

    if-eq v15, v13, :cond_b

    goto :goto_12

    :cond_b
    const-string v13, "p"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_13

    :cond_c
    const-string v13, "k"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_13

    :cond_d
    :goto_12
    move/from16 v2, v17

    :goto_13
    packed-switch v2, :pswitch_data_2

    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_14

    :pswitch_d
    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;I)Lcom/coloros/anim/c/a/c;

    move-result-object v5

    goto :goto_14

    :pswitch_e
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    :goto_14
    const/4 v13, 0x1

    goto :goto_11

    :cond_e
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :goto_15
    move/from16 v15, v19

    goto/16 :goto_d

    :pswitch_f
    move-object/from16 v2, p0

    move/from16 v20, v13

    move/from16 v19, v15

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_f
    move/from16 v20, v13

    move/from16 v19, v15

    new-instance v15, Lcom/coloros/anim/c/b/e;

    move-object v0, v15

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v12

    move/from16 v10, v20

    move-object v12, v14

    move/from16 v13, v19

    invoke-direct/range {v0 .. v13}, Lcom/coloros/anim/c/b/e;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/b/f;Lcom/coloros/anim/c/a/c;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/b/p$a;Lcom/coloros/anim/c/b/p$b;FLjava/util/List;Lcom/coloros/anim/c/a/b;Z)V

    return-object v15

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x67 -> :sswitch_9
        0x6f -> :sswitch_8
        0x73 -> :sswitch_7
        0x74 -> :sswitch_6
        0x77 -> :sswitch_5
        0xcfc -> :sswitch_4
        0xd77 -> :sswitch_3
        0xd7e -> :sswitch_2
        0xd9f -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
