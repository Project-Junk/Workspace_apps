.class Lcom/coloros/anim/e/ae;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/m;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v1

    move v9, v5

    move-object v4, v2

    move-object v7, v4

    move-object v8, v7

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x179b7bc2

    if-eq v10, v11, :cond_5

    const/16 v11, 0x63

    if-eq v10, v11, :cond_4

    const/16 v11, 0x6f

    if-eq v10, v11, :cond_3

    const/16 v11, 0x72

    if-eq v10, v11, :cond_2

    const/16 v11, 0xcfc

    if-eq v10, v11, :cond_1

    const/16 v11, 0xdbf

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "nm"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_1
    const-string v10, "hd"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    const-string v10, "r"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_2

    :cond_3
    const-string v10, "o"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_2

    :cond_4
    const-string v10, "c"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_2

    :cond_5
    const-string v10, "fillEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    goto :goto_2

    :cond_6
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    move v9, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    move v5, v3

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/d;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->g(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/a;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    :cond_7
    if-ne v2, v0, :cond_8

    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v6, p0

    goto :goto_4

    :cond_8
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    :goto_4
    new-instance p0, Lcom/coloros/anim/c/b/m;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/coloros/anim/c/b/m;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/d;Z)V

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
