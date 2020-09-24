.class Lcom/coloros/anim/e/ag;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/o;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xcfc

    if-eq v7, v8, :cond_3

    const/16 v8, 0xd68

    if-eq v7, v8, :cond_2

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_1

    const v8, 0x197df

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "ind"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const-string v7, "nm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_2
    const-string v7, "ks"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const-string v7, "hd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->e(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/h;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/coloros/anim/c/b/o;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/coloros/anim/c/b/o;-><init>(Ljava/lang/String;ILcom/coloros/anim/c/a/h;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
