.class final Lcom/coloros/anim/e/ae;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/q;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move-object v5, v2

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 25
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x65

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eq v11, v12, :cond_5

    const/16 v12, 0x6d

    if-eq v11, v12, :cond_4

    const/16 v12, 0x6f

    if-eq v11, v12, :cond_3

    const/16 v12, 0x73

    if-eq v11, v12, :cond_2

    const/16 v12, 0xcfc

    if-eq v11, v12, :cond_1

    const/16 v12, 0xdbf

    if-eq v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const-string v11, "nm"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v15

    goto :goto_2

    :cond_1
    const-string v11, "hd"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v13

    goto :goto_2

    :cond_2
    const-string v11, "s"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const-string v11, "o"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_2

    :cond_4
    const-string v11, "m"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v14

    goto :goto_2

    :cond_5
    const-string v11, "e"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eqz v2, :cond_c

    if-eq v2, v3, :cond_b

    if-eq v2, v4, :cond_a

    if-eq v2, v15, :cond_9

    if-eq v2, v14, :cond_8

    if-eq v2, v13, :cond_7

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 43
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    goto :goto_0

    .line 40
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Lcom/coloros/anim/c/b/q$a;->a(I)I

    move-result v6

    goto/16 :goto_0

    .line 37
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v1, v2}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v9

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v1, v2}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v1, v2}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v7

    goto/16 :goto_0

    .line 50
    :cond_d
    new-instance v0, Lcom/coloros/anim/c/b/q;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/coloros/anim/c/b/q;-><init>(Ljava/lang/String;ILcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Z)V

    return-object v0
.end method
