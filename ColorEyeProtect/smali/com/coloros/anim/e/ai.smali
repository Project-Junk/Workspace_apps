.class Lcom/coloros/anim/e/ai;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/q;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x65

    if-eq v9, v10, :cond_5

    const/16 v10, 0x6d

    if-eq v9, v10, :cond_4

    const/16 v10, 0x6f

    if-eq v9, v10, :cond_3

    const/16 v10, 0x73

    if-eq v9, v10, :cond_2

    const/16 v10, 0xcfc

    if-eq v9, v10, :cond_1

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "nm"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :cond_1
    const-string v9, "hd"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    const-string v9, "s"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_3
    const-string v9, "o"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const-string v9, "m"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    const-string v9, "e"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    move v8, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Lcom/coloros/anim/c/b/q$a;->a(I)Lcom/coloros/anim/c/b/q$a;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v1

    move-object v7, v1

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v1

    move-object v6, v1

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Z)Lcom/coloros/anim/c/a/b;

    move-result-object v1

    move-object v5, v1

    goto/16 :goto_0

    :cond_7
    new-instance p0, Lcom/coloros/anim/c/b/q;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/coloros/anim/c/b/q;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/b/q$a;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;Z)V

    return-object p0

    nop

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
