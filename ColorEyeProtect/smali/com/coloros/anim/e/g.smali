.class Lcom/coloros/anim/e/g;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/b;
    .locals 9

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_1

    const/16 v8, 0xe85

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "ty"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_1
    const-string v7, "d"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v5

    :goto_2
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v6

    :goto_3
    if-nez v2, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto/16 :goto_5

    :sswitch_1
    const-string v0, "tm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto/16 :goto_5

    :sswitch_2
    const-string v0, "st"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto/16 :goto_5

    :sswitch_3
    const-string v0, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    goto :goto_5

    :sswitch_4
    const-string v0, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_5

    :sswitch_5
    const-string v0, "rp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    goto :goto_5

    :sswitch_6
    const-string v0, "rc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    goto :goto_5

    :sswitch_7
    const-string v0, "mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xb

    goto :goto_5

    :sswitch_8
    const-string v3, "gs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :sswitch_9
    const-string v0, "gr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :sswitch_a
    const-string v0, "gf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_5

    :sswitch_b
    const-string v0, "fl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_5

    :sswitch_c
    const-string v0, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v5

    :goto_5
    packed-switch v0, :pswitch_data_1

    const-string p1, "EffectiveAnimation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown shape type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_2
    const-string v0, "ContentModeParser::case rp: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/ab;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/k;

    move-result-object v6

    const-string p1, "ContentModeParser::case rp: end!!!"

    goto/16 :goto_6

    :pswitch_3
    const-string v0, "ContentModeParser::case mm: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/anim/e/v;->a(Landroid/util/JsonReader;)Lcom/coloros/anim/c/b/h;

    move-result-object v6

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {p1, v0}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    const-string p1, "ContentModeParser::case mm: end!!!"

    goto/16 :goto_6

    :pswitch_4
    const-string v0, "ContentModeParser::case sr: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/z;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/i;

    move-result-object v6

    const-string p1, "ContentModeParser::case sr: end!!!"

    goto/16 :goto_6

    :pswitch_5
    const-string v0, "ContentModeParser::case tm: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/ai;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/q;

    move-result-object v6

    const-string p1, "ContentModeParser::case tm: end!!!"

    goto :goto_6

    :pswitch_6
    const-string v0, "ContentModeParser::case rc: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/aa;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/j;

    move-result-object v6

    const-string p1, "ContentModeParser::case rc: end!!!"

    goto :goto_6

    :pswitch_7
    const-string v0, "ContentModeParser::case el: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/coloros/anim/e/e;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;I)Lcom/coloros/anim/c/b/a;

    move-result-object v6

    const-string p1, "ContentModeParser::case el: end!!!"

    goto :goto_6

    :pswitch_8
    const-string v0, "ContentModeParser::case sh: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/ag;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/o;

    move-result-object v6

    const-string p1, "ContentModeParser::case sh: end!!!"

    goto :goto_6

    :pswitch_9
    const-string v0, "ContentModeParser::case tr: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/c;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/l;

    move-result-object v6

    const-string p1, "ContentModeParser::case tr: end!!!"

    goto :goto_6

    :pswitch_a
    const-string v0, "ContentModeParser::case gf: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/n;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/d;

    move-result-object v6

    const-string p1, "ContentModeParser::case gf: end!!!"

    goto :goto_6

    :pswitch_b
    const-string v0, "ContentModeParser::case fl: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/ae;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/m;

    move-result-object v6

    const-string p1, "ContentModeParser::case fl: end!!!"

    goto :goto_6

    :pswitch_c
    const-string v0, "ContentModeParser::case gs: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/o;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/e;

    move-result-object v6

    const-string p1, "ContentModeParser::case gs: end!!!"

    goto :goto_6

    :pswitch_d
    const-string v0, "ContentModeParser::case st: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/ah;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/p;

    move-result-object v6

    const-string p1, "ContentModeParser::case st: end!!!"

    goto :goto_6

    :pswitch_e
    const-string v0, "ContentModeParser::case gr: start!!!"

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/anim/e/af;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/n;

    move-result-object v6

    const-string p1, "ContentModeParser::case gr: end!!!"

    :goto_6
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
