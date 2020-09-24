.class public Lcom/coloros/anim/e/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/util/JsonReader;)Lcom/coloros/anim/a;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v1

    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroidx/b/h;

    invoke-direct {v11}, Landroidx/b/h;-><init>()V

    new-instance v14, Lcom/coloros/anim/a;

    invoke-direct {v14}, Lcom/coloros/anim/a;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    move v5, v2

    move v6, v5

    move v15, v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/16 v16, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, 0x2

    const/16 v19, 0x1

    sparse-switch v17, :sswitch_data_0

    move/from16 v20, v15

    goto/16 :goto_1

    :sswitch_0
    move/from16 v20, v15

    const-string v15, "markers"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_1
    move/from16 v20, v15

    const-string v15, "fonts"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_2
    move/from16 v20, v15

    const-string v15, "chars"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_3
    move/from16 v20, v15

    const-string v15, "op"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    move/from16 v20, v15

    const-string v15, "ip"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v18

    goto :goto_2

    :sswitch_5
    move/from16 v20, v15

    const-string v15, "fr"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_6
    move/from16 v20, v15

    const-string v15, "w"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_7
    move/from16 v20, v15

    const-string v15, "v"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_8
    move/from16 v20, v15

    const-string v15, "h"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v19

    goto :goto_2

    :sswitch_9
    move/from16 v20, v15

    const-string v15, "layers"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_a
    move/from16 v20, v15

    const-string v15, "assets"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v3, v16

    :goto_2
    packed-switch v3, :pswitch_data_0

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_5

    :pswitch_0
    const-string v3, "parseMarkers start!!!"

    invoke-static {v3}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {v0, v14, v13}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/List;)V

    const-string v3, "parseMarkers end!!!"

    goto :goto_3

    :pswitch_1
    const-string v3, "parseChars start!!!"

    invoke-static {v3}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {v0, v14, v11}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Landroidx/b/h;)V

    const-string v3, "parseChars end!!!"

    goto :goto_3

    :pswitch_2
    const-string v3, "parseFonts start!!!"

    invoke-static {v3}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {v0, v12}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Ljava/util/Map;)V

    const-string v3, "parseFonts end!!!"

    goto :goto_3

    :pswitch_3
    const-string v3, "parseAssets start!!!"

    invoke-static {v3}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {v0, v14, v9, v10}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/Map;Ljava/util/Map;)V

    const-string v3, "parseAssets end!!!"

    goto :goto_3

    :pswitch_4
    const-string v3, "parseLayers start!!!"

    invoke-static {v3}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {v0, v14, v7, v8}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/List;Landroid/util/LongSparseArray;)V

    const-string v3, "parseLayers end!!!"

    :goto_3
    invoke-static {v3}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    const-string v15, "\\."

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    aget-object v16, v3, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    aget-object v15, v3, v19

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aget-object v3, v3, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x4

    const/16 v25, 0x4

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lcom/coloros/anim/f/g;->a(IIIIII)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "EffectiveAnimation only supports bodymovin >= 4.4.0"

    invoke-virtual {v14, v3}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_4
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    goto :goto_5

    :pswitch_6
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v15, v12

    goto :goto_6

    :pswitch_7
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v3, v12

    const v6, 0x3c23d70a    # 0.01f

    sub-float v6, v3, v6

    goto :goto_5

    :pswitch_8
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v5, v12

    goto :goto_5

    :pswitch_9
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    move v4, v3

    goto :goto_5

    :pswitch_a
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    :goto_5
    move/from16 v15, v20

    :goto_6
    move-object/from16 v12, v27

    move-object/from16 v13, v28

    goto/16 :goto_0

    :cond_2
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v20, v15

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    int-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v2, v4

    mul-float/2addr v2, v1

    float-to-int v1, v2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v14

    move v4, v5

    move v5, v6

    move/from16 v6, v20

    invoke-virtual/range {v2 .. v13}, Lcom/coloros/anim/a;->a(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/b/h;Ljava/util/Map;Ljava/util/List;)V

    const-string v0, "CompositionParser::parse end!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    return-object v14

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_a
        -0x42252abe -> :sswitch_9
        0x68 -> :sswitch_8
        0x76 -> :sswitch_7
        0x77 -> :sswitch_6
        0xccc -> :sswitch_5
        0xd27 -> :sswitch_4
        0xde1 -> :sswitch_3
        0x5a3d7dd -> :sswitch_2
        0x5d17e04 -> :sswitch_1
        0x3205f379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Landroidx/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/a;",
            "Landroidx/b/h<",
            "Lcom/coloros/anim/c/e;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/coloros/anim/e/k;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/e;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/a;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xc6a

    if-eq v4, v5, :cond_2

    const/16 v5, 0xc8e

    if-eq v4, v5, :cond_1

    const/16 v5, 0xe79

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, "tm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "dr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    const-string v4, "cm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    :goto_2
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v2, Lcom/coloros/anim/c/h;

    invoke-direct {v2, p1, v0, v1}, Lcom/coloros/anim/c/h;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/a;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/coloros/anim/c/c/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/coloros/anim/e/t;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/c/c/d;->k()Lcom/coloros/anim/c/c/d$a;

    move-result-object v2

    sget-object v3, Lcom/coloros/anim/c/c/d$a;->c:Lcom/coloros/anim/c/c/d$a;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/coloros/anim/c/c/d;->e()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images. EffectiveAnimation should primarily be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/k;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/c/d;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x42252abe

    if-eq v10, v11, :cond_5

    const/16 v11, 0x68

    if-eq v10, v11, :cond_4

    const/16 v11, 0x70

    if-eq v10, v11, :cond_3

    const/16 v11, 0x75

    if-eq v10, v11, :cond_2

    const/16 v11, 0x77

    if-eq v10, v11, :cond_1

    const/16 v11, 0xd1b

    if-eq v10, v11, :cond_0

    goto :goto_2

    :cond_0
    const-string v10, "id"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_1
    const-string v10, "w"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_3

    :cond_2
    const-string v10, "u"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    goto :goto_3

    :cond_3
    const-string v10, "p"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    const-string v10, "h"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    goto :goto_3

    :cond_5
    const-string v10, "layers"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v4

    :goto_3
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    move v6, v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    move v5, v3

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0, p1}, Lcom/coloros/anim/e/t;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/anim/c/c/d;->e()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v8, :cond_9

    new-instance v0, Lcom/coloros/anim/h;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/h;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/anim/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/util/JsonReader;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/c/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/coloros/anim/e/l;->a(Landroid/util/JsonReader;)Lcom/coloros/anim/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method
