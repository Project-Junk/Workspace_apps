.class Lcom/coloros/anim/e/k;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/e;
    .locals 13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v9, v0

    move-object v10, v9

    move-wide v5, v2

    move-wide v7, v5

    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x6f471c96

    if-eq v11, v12, :cond_5

    const/16 v12, 0x77

    if-eq v11, v12, :cond_4

    const/16 v12, 0xc65

    if-eq v11, v12, :cond_3

    const v12, 0x2eefaa

    if-eq v11, v12, :cond_2

    const v12, 0x35e001

    if-eq v11, v12, :cond_1

    const v12, 0x68b1db1

    if-eq v11, v12, :cond_0

    goto :goto_1

    :cond_0
    const-string v11, "style"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    const-string v11, "size"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const-string v11, "data"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_2

    :cond_3
    const-string v11, "ch"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_4
    const-string v11, "w"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    const-string v11, "fFamily"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "shapes"

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/coloros/anim/e/g;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/b;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/c/b/n;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance p0, Lcom/coloros/anim/c/e;

    move-object v0, p0

    move-wide v3, v5

    move-wide v5, v7

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/coloros/anim/c/e;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    return-object p0

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
