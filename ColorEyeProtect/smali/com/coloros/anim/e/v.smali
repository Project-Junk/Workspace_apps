.class Lcom/coloros/anim/e/v;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;)Lcom/coloros/anim/c/b/h;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move-object v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xcfc

    if-eq v6, v7, :cond_2

    const/16 v7, 0xda0

    if-eq v6, v7, :cond_1

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_1
    const-string v6, "mm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const-string v6, "hd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Lcom/coloros/anim/c/b/h$a;->a(I)Lcom/coloros/anim/c/b/h$a;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/coloros/anim/c/b/h;

    invoke-direct {p0, v1, v2, v3}, Lcom/coloros/anim/c/b/h;-><init>(Ljava/lang/String;Lcom/coloros/anim/c/b/h$a;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
