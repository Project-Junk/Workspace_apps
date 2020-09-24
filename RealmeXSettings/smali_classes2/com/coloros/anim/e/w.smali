.class final Lcom/coloros/anim/e/w;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/i;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    const/4 v14, 0x0

    .line 31
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v4, 0x70

    const/4 v2, 0x1

    if-eq v15, v4, :cond_9

    const/16 v4, 0x72

    if-eq v15, v4, :cond_8

    const/16 v4, 0xcfc

    if-eq v15, v4, :cond_7

    const/16 v4, 0xdbf

    if-eq v15, v4, :cond_6

    const/16 v4, 0xe04

    if-eq v15, v4, :cond_5

    const/16 v4, 0xe66

    if-eq v15, v4, :cond_4

    const/16 v4, 0xd29

    if-eq v15, v4, :cond_3

    const/16 v4, 0xd2a

    if-eq v15, v4, :cond_2

    const/16 v4, 0xde3

    if-eq v15, v4, :cond_1

    const/16 v4, 0xde4

    if-eq v15, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "os"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x6

    goto :goto_2

    :cond_1
    const-string v4, "or"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x8

    goto :goto_2

    :cond_3
    const-string v4, "ir"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x7

    goto :goto_2

    :cond_4
    const-string v4, "sy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_2

    :cond_5
    const-string v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x2

    goto :goto_2

    :cond_6
    const-string v4, "nm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const-string v4, "hd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x9

    goto :goto_2

    :cond_8
    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x4

    goto :goto_2

    :cond_9
    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x3

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 61
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v14

    goto/16 :goto_0

    :pswitch_1
    const/4 v3, 0x0

    .line 58
    invoke-static {v0, v1, v3}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_2
    const/4 v3, 0x0

    .line 2028
    invoke-static {v0, v1, v2}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_3
    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v1, v3}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v13

    goto/16 :goto_0

    :pswitch_4
    const/4 v3, 0x0

    .line 1028
    invoke-static {v0, v1, v2}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_5
    const/4 v3, 0x0

    .line 46
    invoke-static {v0, v1, v3}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_6
    const/4 v3, 0x0

    .line 43
    invoke-static/range {p0 .. p1}, Lcom/coloros/anim/e/a;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/m;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_7
    const/4 v3, 0x0

    .line 40
    invoke-static {v0, v1, v3}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_8
    const/4 v3, 0x0

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Lcom/coloros/anim/c/b/i$a;->a(I)Lcom/coloros/anim/c/b/i$a;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_9
    const/4 v3, 0x0

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 68
    :cond_b
    new-instance v0, Lcom/coloros/anim/c/b/i;

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/coloros/anim/c/b/i;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/b/i$a;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
