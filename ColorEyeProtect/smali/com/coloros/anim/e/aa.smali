.class Lcom/coloros/anim/e/aa;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/j;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x70

    if-eq v8, v9, :cond_2

    const/16 v9, 0xcfc

    if-eq v8, v9, :cond_1

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_0

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v8, "s"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :pswitch_1
    const-string v8, "r"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    :cond_0
    const-string v8, "nm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_1
    const-string v8, "hd"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_2
    const-string v8, "p"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    move v7, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/b;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->c(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/f;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Lcom/coloros/anim/e/a;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/m;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/coloros/anim/c/b/j;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/anim/c/b/j;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/f;Lcom/coloros/anim/c/a/b;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
