.class final Lcom/coloros/anim/e/m;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/e;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 39
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v14, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 41
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v18, v15

    const-string v15, "o"

    move/from16 v20, v14

    const-string v14, "g"

    move-object/from16 v21, v13

    const-string v13, "d"

    const/16 v22, -0x1

    move-object/from16 v23, v12

    const/16 v12, 0x64

    if-eq v2, v12, :cond_b

    const/16 v12, 0x65

    if-eq v2, v12, :cond_a

    const/16 v12, 0x67

    if-eq v2, v12, :cond_9

    const/16 v12, 0x6f

    if-eq v2, v12, :cond_8

    const/16 v12, 0x77

    if-eq v2, v12, :cond_7

    const/16 v12, 0xcfc

    if-eq v2, v12, :cond_6

    const/16 v12, 0xd77

    if-eq v2, v12, :cond_5

    const/16 v12, 0xd7e

    if-eq v2, v12, :cond_4

    const/16 v12, 0xd9f

    if-eq v2, v12, :cond_3

    const/16 v12, 0xdbf

    if-eq v2, v12, :cond_2

    const/16 v12, 0x73

    if-eq v2, v12, :cond_1

    const/16 v12, 0x74

    if-eq v2, v12, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    goto/16 :goto_2

    :cond_1
    const-string v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    goto/16 :goto_2

    :cond_2
    const-string v2, "nm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const-string v2, "ml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x9

    goto :goto_2

    :cond_4
    const-string v2, "lj"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    goto :goto_2

    :cond_5
    const-string v2, "lc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x7

    goto :goto_2

    :cond_6
    const-string v2, "hd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xa

    goto :goto_2

    :cond_7
    const-string v2, "w"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x6

    goto :goto_2

    :cond_8
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    goto :goto_2

    :cond_9
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const-string v2, "e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    goto :goto_2

    :cond_b
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xb

    goto :goto_2

    :cond_c
    :goto_1
    move/from16 v2, v22

    :goto_2
    packed-switch v2, :pswitch_data_0

    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_11

    .line 91
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 92
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    move-object/from16 v24, v9

    const/16 v9, 0x6e

    if-eq v10, v9, :cond_e

    const/16 v9, 0x76

    if-eq v10, v9, :cond_d

    goto :goto_5

    :cond_d
    const-string v9, "v"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    const-string v9, "n"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    move/from16 v9, v22

    :goto_6
    if-eqz v9, :cond_11

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_7
    move-object/from16 v10, v19

    move-object/from16 v9, v24

    goto :goto_4

    .line 2028
    :cond_10
    invoke-static {v0, v1, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v2

    goto :goto_7

    .line 99
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_12
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 110
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    move-object/from16 v18, v2

    :goto_8
    move-object/from16 v10, v19

    move-object/from16 v9, v24

    goto :goto_3

    .line 112
    :cond_13
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_9

    :cond_14
    const/4 v3, 0x1

    goto :goto_8

    :cond_15
    :goto_9
    const/4 v3, 0x1

    .line 2084
    iput-boolean v3, v1, Lcom/coloros/anim/a;->m:Z

    .line 114
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v3, 0x1

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 118
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_17

    const/4 v2, 0x0

    .line 120
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_11

    :pswitch_1
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v16

    goto/16 :goto_12

    :pswitch_2
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v9

    double-to-float v14, v9

    move-object/from16 v15, v18

    move-object/from16 v10, v19

    :goto_a
    move-object/from16 v13, v21

    goto :goto_b

    :pswitch_3
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Lcom/coloros/anim/c/b/p$b;->values()[Lcom/coloros/anim/c/b/p$b;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v13, v3, v9

    move-object/from16 v15, v18

    move-object/from16 v10, v19

    move/from16 v14, v20

    :goto_b
    move-object/from16 v12, v23

    goto :goto_c

    :pswitch_4
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 79
    invoke-static {}, Lcom/coloros/anim/c/b/p$a;->values()[Lcom/coloros/anim/c/b/p$a;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    sub-int/2addr v9, v10

    aget-object v12, v3, v9

    move-object/from16 v15, v18

    move-object/from16 v10, v19

    move/from16 v14, v20

    move-object/from16 v13, v21

    :goto_c
    move-object/from16 v9, v24

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v24, v9

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 1028
    invoke-static {v0, v1, v10}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v10

    goto/16 :goto_12

    :pswitch_6
    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 73
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/f;

    move-result-object v9

    goto/16 :goto_12

    :pswitch_7
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 70
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/f;

    move-result-object v8

    goto/16 :goto_12

    :pswitch_8
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    if-ne v3, v10, :cond_18

    sget v3, Lcom/coloros/anim/c/b/f;->a:I

    goto :goto_d

    :cond_18
    sget v3, Lcom/coloros/anim/c/b/f;->b:I

    :goto_d
    move v5, v3

    goto :goto_11

    :pswitch_9
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 64
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/d;

    move-result-object v7

    goto :goto_12

    :pswitch_a
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move/from16 v3, v22

    .line 49
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v12, 0x6b

    if-eq v10, v12, :cond_1a

    const/16 v12, 0x70

    if-eq v10, v12, :cond_19

    goto :goto_f

    :cond_19
    const-string v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v9, v2

    goto :goto_10

    :cond_1a
    const-string v10, "k"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_10

    :cond_1b
    :goto_f
    move/from16 v9, v22

    :goto_10
    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1c

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_e

    .line 55
    :cond_1c
    invoke-static {v0, v1, v3}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;I)Lcom/coloros/anim/c/a/c;

    move-result-object v6

    goto :goto_e

    :cond_1d
    const/4 v10, 0x1

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_e

    .line 61
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    :goto_11
    move-object/from16 v15, v18

    goto :goto_13

    :pswitch_b
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    const/4 v2, 0x0

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    :goto_12
    move-object/from16 v15, v18

    move/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v23

    goto/16 :goto_0

    :goto_13
    move-object/from16 v10, v19

    move/from16 v14, v20

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    move/from16 v20, v14

    move-object/from16 v18, v15

    .line 128
    new-instance v14, Lcom/coloros/anim/c/b/e;

    move-object v0, v14

    move-object v1, v4

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object/from16 v6, v24

    move-object/from16 v7, v19

    move-object/from16 v8, v23

    move-object/from16 v9, v21

    move/from16 v10, v20

    move-object/from16 v12, v18

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/coloros/anim/c/b/e;-><init>(Ljava/lang/String;ILcom/coloros/anim/c/a/c;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/b/p$a;Lcom/coloros/anim/c/b/p$b;FLjava/util/List;Lcom/coloros/anim/c/a/b;Z)V

    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
