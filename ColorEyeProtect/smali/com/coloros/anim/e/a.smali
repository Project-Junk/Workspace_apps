.class public Lcom/coloros/anim/e/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/e;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/coloros/anim/e/w;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/a/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    invoke-static {v0}, Lcom/coloros/anim/e/s;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/coloros/anim/g/c;

    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v1

    invoke-static {p0, v1}, Lcom/coloros/anim/e/q;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/coloros/anim/g/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance p0, Lcom/coloros/anim/c/a/e;

    invoke-direct {p0, v0}, Lcom/coloros/anim/c/a/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static b(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/m;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/coloros/anim/a;",
            ")",
            "Lcom/coloros/anim/c/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    sget-object v6, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x6b

    const/4 v9, 0x1

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "y"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :pswitch_1
    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    goto :goto_2

    :cond_0
    const-string v7, "k"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    sget-object v6, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/b;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    sget-object v6, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_3

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    move v1, v9

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/coloros/anim/e/d;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/b;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/coloros/anim/e/a;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/e;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v1, :cond_5

    const-string p0, "EffectiveAnimation doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    new-instance p0, Lcom/coloros/anim/c/a/i;

    invoke-direct {p0, v3, v4}, Lcom/coloros/anim/c/a/i;-><init>(Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
