.class final Lcom/coloros/anim/e/ad;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/p;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v12, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 34
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const-string v2, "o"

    const-string v4, "d"

    move/from16 v17, v13

    const/16 v18, -0x1

    const/16 v13, 0x63

    if-eq v15, v13, :cond_8

    const/16 v13, 0x64

    if-eq v15, v13, :cond_7

    const/16 v13, 0x6f

    if-eq v15, v13, :cond_6

    const/16 v13, 0x77

    if-eq v15, v13, :cond_5

    const/16 v13, 0xcfc

    if-eq v15, v13, :cond_4

    const/16 v13, 0xd77

    if-eq v15, v13, :cond_3

    const/16 v13, 0xd7e

    if-eq v15, v13, :cond_2

    const/16 v13, 0xd9f

    if-eq v15, v13, :cond_1

    const/16 v13, 0xdbf

    if-eq v15, v13, :cond_0

    goto :goto_1

    :cond_0
    const-string v13, "nm"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    const-string v13, "ml"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x6

    goto :goto_2

    :cond_2
    const-string v13, "lj"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x5

    goto :goto_2

    :cond_3
    const-string v13, "lc"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x4

    goto :goto_2

    :cond_4
    const-string v13, "hd"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x7

    goto :goto_2

    :cond_5
    const-string v13, "w"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x2

    goto :goto_2

    :cond_6
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x3

    goto :goto_2

    :cond_7
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x8

    goto :goto_2

    :cond_8
    const-string v13, "c"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_2

    :cond_9
    :goto_1
    move/from16 v13, v18

    :goto_2
    packed-switch v13, :pswitch_data_0

    move/from16 v19, v12

    const/4 v2, 0x0

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_d

    .line 61
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 62
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 67
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v6

    move/from16 v19, v12

    const/16 v12, 0x6e

    if-eq v6, v12, :cond_b

    const/16 v12, 0x76

    if-eq v6, v12, :cond_a

    goto :goto_5

    :cond_a
    const-string v6, "v"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const-string v6, "n"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    move/from16 v6, v18

    :goto_6
    if-eqz v6, :cond_e

    const/4 v12, 0x1

    if-eq v6, v12, :cond_d

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_7
    move-object/from16 v6, v16

    move/from16 v12, v19

    goto :goto_4

    .line 2028
    :cond_d
    invoke-static {v0, v1, v12}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v14

    goto :goto_7

    .line 70
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_f
    move-object/from16 v16, v6

    move/from16 v19, v12

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 81
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v12, 0x64

    if-eq v6, v12, :cond_12

    const/16 v15, 0x67

    if-eq v6, v15, :cond_11

    const/16 v15, 0x6f

    if-eq v6, v15, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    goto :goto_9

    :cond_11
    const/16 v15, 0x6f

    const-string v6, "g"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x2

    goto :goto_9

    :cond_12
    const/16 v15, 0x6f

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    :goto_8
    move/from16 v6, v18

    :goto_9
    if-eqz v6, :cond_16

    const/4 v13, 0x1

    if-eq v6, v13, :cond_14

    const/4 v12, 0x2

    if-eq v6, v12, :cond_15

    goto :goto_a

    :cond_14
    const/4 v12, 0x2

    .line 2084
    :cond_15
    iput-boolean v13, v1, Lcom/coloros/anim/a;->m:Z

    .line 88
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    move-object/from16 v6, v16

    :goto_b
    move/from16 v12, v19

    goto/16 :goto_3

    :cond_16
    move-object v6, v14

    goto :goto_b

    :cond_17
    move-object/from16 v16, v6

    move/from16 v19, v12

    const/4 v13, 0x1

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 94
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v13, :cond_18

    const/4 v2, 0x0

    .line 96
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    move-object/from16 v6, v16

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    :pswitch_1
    move/from16 v19, v12

    const/4 v2, 0x0

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v13

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x0

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v12, v12

    goto :goto_e

    :pswitch_3
    move/from16 v19, v12

    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/coloros/anim/c/b/p$b;->values()[Lcom/coloros/anim/c/b/p$b;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-object v11, v4, v11

    goto :goto_d

    :pswitch_4
    move/from16 v19, v12

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 49
    invoke-static {}, Lcom/coloros/anim/c/b/p$a;->values()[Lcom/coloros/anim/c/b/p$a;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    sub-int/2addr v10, v12

    aget-object v10, v4, v10

    goto :goto_d

    :pswitch_5
    move/from16 v19, v12

    const/4 v2, 0x0

    .line 46
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/d;

    move-result-object v8

    goto :goto_e

    :pswitch_6
    move/from16 v19, v12

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 1028
    invoke-static {v0, v1, v12}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v9

    :goto_d
    move/from16 v13, v17

    move/from16 v12, v19

    goto/16 :goto_0

    :pswitch_7
    move/from16 v19, v12

    const/4 v2, 0x0

    .line 40
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/d;->e(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/a;

    move-result-object v7

    goto :goto_e

    :pswitch_8
    move/from16 v19, v12

    const/4 v2, 0x0

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    :goto_e
    move/from16 v13, v17

    goto/16 :goto_0

    :cond_19
    move/from16 v19, v12

    move/from16 v17, v13

    .line 104
    new-instance v12, Lcom/coloros/anim/c/b/p;

    move-object v0, v12

    move-object v1, v5

    move-object v2, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move/from16 v9, v19

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/coloros/anim/c/b/p;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/a/b;Ljava/util/List;Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/d;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/b/p$a;Lcom/coloros/anim/c/b/p$b;FZ)V

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
