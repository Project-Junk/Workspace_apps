.class Lcom/coloros/anim/e/e;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;I)Lcom/coloros/anim/c/b/a;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move v9, v2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v10, 0x64

    if-eq v4, v10, :cond_5

    const/16 v10, 0x70

    if-eq v4, v10, :cond_4

    const/16 v10, 0x73

    if-eq v4, v10, :cond_3

    const/16 v10, 0xcfc

    if-eq v4, v10, :cond_2

    const/16 v10, 0xdbf

    if-eq v4, v10, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "nm"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v2

    goto :goto_3

    :cond_2
    const-string v4, "hd"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_3

    :cond_3
    const-string v4, "s"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    goto :goto_3

    :cond_4
    const-string v4, "p"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_3

    :cond_5
    const-string v4, "d"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x4

    goto :goto_3

    :cond_6
    :goto_2
    move p2, v3

    :goto_3
    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result p2

    if-ne p2, v1, :cond_7

    move p2, v0

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    move v8, p2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p2

    move v9, p2

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->c(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/f;

    move-result-object p2

    move-object v7, p2

    goto :goto_1

    :pswitch_3
    invoke-static {p0, p1}, Lcom/coloros/anim/e/a;->b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/m;

    move-result-object p2

    move-object v6, p2

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto/16 :goto_1

    :cond_8
    new-instance p0, Lcom/coloros/anim/c/b/a;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/c/b/a;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/a/m;Lcom/coloros/anim/c/a/f;ZZ)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
