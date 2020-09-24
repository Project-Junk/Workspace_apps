.class public final Lcom/coloros/anim/e/i;
.super Ljava/lang/Object;
.source "EffectiveCompositionParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Landroidx/collection/SparseArrayCompat;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/a;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/coloros/anim/c/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 216
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7025
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7027
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v8, v0

    move-object v9, v8

    move-wide v6, v3

    move-wide v4, v6

    move v3, v1

    .line 7028
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7029
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v10, 0x1

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v11, "style"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_3

    :sswitch_1
    const-string v11, "size"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_3

    :sswitch_2
    const-string v11, "data"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_3

    :sswitch_3
    const-string v11, "ch"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_3

    :sswitch_4
    const-string v11, "w"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_3

    :sswitch_5
    const-string v11, "fFamily"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_3

    :cond_0
    :goto_2
    const/4 v0, -0x1

    :goto_3
    if-eqz v0, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v15, :cond_7

    if-eq v0, v14, :cond_6

    if-eq v0, v13, :cond_5

    if-eq v0, v12, :cond_1

    .line 7061
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 7046
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 7047
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7048
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "shapes"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7049
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 7050
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7051
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/g;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/b;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/c/b/n;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 7053
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_4

    .line 7055
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 7058
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1

    .line 7043
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 7040
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 7037
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    goto/16 :goto_1

    .line 7034
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    goto/16 :goto_1

    .line 7031
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto/16 :goto_1

    .line 7064
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 7066
    new-instance v0, Lcom/coloros/anim/c/e;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/coloros/anim/c/e;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Lcom/coloros/anim/c/e;->hashCode()I

    move-result v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 220
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f471c96 -> :sswitch_5
        0x77 -> :sswitch_4
        0xc65 -> :sswitch_3
        0x2eefaa -> :sswitch_2
        0x35e001 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/List;Landroid/util/LongSparseArray;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {p0, p1}, Lcom/coloros/anim/e/r;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/d;

    move-result-object v1

    .line 1118
    iget-object v2, v1, Lcom/coloros/anim/c/c/d;->e:Lcom/coloros/anim/c/c/d$a;

    .line 122
    sget-object v3, Lcom/coloros/anim/c/c/d$a;->c:Lcom/coloros/anim/c/c/d$a;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    iget-wide v2, v1, Lcom/coloros/anim/c/c/d;->d:J

    .line 126
    invoke-virtual {p3, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images. EffectiveAnimation should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/k;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 140
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v3, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 151
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x42252abe

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v2, 0x1

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

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const-string v10, "w"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v15

    goto :goto_2

    :cond_2
    const-string v10, "u"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v12

    goto :goto_2

    :cond_3
    const-string v10, "p"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v13

    goto :goto_2

    :cond_4
    const-string v10, "h"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v14

    goto :goto_2

    :cond_5
    const-string v10, "layers"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v2

    :cond_6
    :goto_2
    if-eqz v4, :cond_d

    if-eq v4, v2, :cond_b

    if-eq v4, v15, :cond_a

    if-eq v4, v14, :cond_9

    if-eq v4, v13, :cond_8

    if-eq v4, v12, :cond_7

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 175
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 172
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 169
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto/16 :goto_1

    .line 166
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto/16 :goto_1

    .line 157
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 158
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 159
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/r;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/d;

    move-result-object v2

    .line 3093
    iget-wide v3, v2, Lcom/coloros/anim/c/c/d;->d:J

    .line 160
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 163
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_1

    .line 154
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 181
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v8, :cond_f

    .line 183
    new-instance v0, Lcom/coloros/anim/h;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/h;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    iget-object v1, v0, Lcom/coloros/anim/h;->a:Ljava/lang/String;

    move-object/from16 v2, p3

    .line 185
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 187
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/h;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 226
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    move v2, v1

    .line 231
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 232
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xc6a

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_2

    const/16 v6, 0xc8e

    if-eq v5, v6, :cond_1

    const/16 v6, 0xe79

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "tm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v8

    goto :goto_2

    :cond_1
    const-string v5, "dr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v7

    goto :goto_2

    :cond_2
    const-string v5, "cm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :cond_3
    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_4

    .line 243
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 240
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_1

    .line 237
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_1

    .line 234
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 246
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 247
    new-instance v3, Lcom/coloros/anim/c/h;

    invoke-direct {v3, v0, v1, v2}, Lcom/coloros/anim/c/h;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Ljava/util/Map;)V
    .locals 11
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 196
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x32b09e

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v4

    :goto_2
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 199
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 5020
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    move v5, v0

    move-object v0, v1

    move-object v2, v0

    .line 5021
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5022
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v7, "fName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v10

    goto :goto_6

    :sswitch_1
    const-string v7, "fStyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v9

    goto :goto_6

    :sswitch_2
    const-string v7, "ascent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    goto :goto_6

    :sswitch_3
    const-string v7, "fFamily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_6

    :cond_3
    :goto_5
    move v6, v4

    :goto_6
    if-eqz v6, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_4

    .line 5036
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 5033
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_4

    .line 5030
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 5027
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 5024
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 5039
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 5041
    new-instance v6, Lcom/coloros/anim/c/d;

    invoke-direct {v6, v1, v0, v2, v5}, Lcom/coloros/anim/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 6023
    iget-object v0, v6, Lcom/coloros/anim/c/d;->b:Ljava/lang/String;

    .line 201
    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 203
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 209
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f471c96 -> :sswitch_3
        -0x53f6d326 -> :sswitch_2
        -0x4d298315 -> :sswitch_1
        0x5c24c11 -> :sswitch_0
    .end sparse-switch
.end method
