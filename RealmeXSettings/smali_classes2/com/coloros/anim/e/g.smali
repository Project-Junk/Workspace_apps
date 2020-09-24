.class final Lcom/coloros/anim/e/g;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/b;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x2

    move v1, v0

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 31
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

    move v2, v4

    goto :goto_2

    :cond_1
    const-string v7, "d"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v5

    :goto_3
    if-nez v2, :cond_6

    return-object v5

    .line 48
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v7, "tr"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x5

    goto/16 :goto_5

    :sswitch_1
    const-string v7, "tm"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x9

    goto/16 :goto_5

    :sswitch_2
    const-string v7, "st"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v6

    goto/16 :goto_5

    :sswitch_3
    const-string v7, "sr"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0xa

    goto/16 :goto_5

    :sswitch_4
    const-string v7, "sh"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x6

    goto :goto_5

    :sswitch_5
    const-string v7, "rp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0xc

    goto :goto_5

    :sswitch_6
    const-string v7, "rc"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x8

    goto :goto_5

    :sswitch_7
    const-string v7, "mm"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0xb

    goto :goto_5

    :sswitch_8
    const-string v7, "gs"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v0

    goto :goto_5

    :sswitch_9
    const-string v7, "gr"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_5

    :sswitch_a
    const-string v7, "gf"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x4

    goto :goto_5

    :sswitch_b
    const-string v7, "fl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x3

    goto :goto_5

    :sswitch_c
    const-string v7, "el"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x7

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v3

    :goto_5
    packed-switch v7, :pswitch_data_0

    .line 118
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown shape type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EffectiveAnimation"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_0
    const-string v0, "ContentModeParser::case rp: start!!!"

    .line 113
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1}, Lcom/coloros/anim/e/y;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/k;

    move-result-object v5

    const-string p1, "ContentModeParser::case rp: end!!!"

    .line 115
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_1
    const-string v0, "ContentModeParser::case mm: start!!!"

    .line 105
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/coloros/anim/e/t;->a(Landroid/util/JsonReader;)Lcom/coloros/anim/c/b/h;

    move-result-object v5

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 107
    invoke-virtual {p1, v0}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    const-string p1, "ContentModeParser::case mm: end!!!"

    .line 110
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_2
    const-string v0, "ContentModeParser::case sr: start!!!"

    .line 100
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 101
    invoke-static {p0, p1}, Lcom/coloros/anim/e/w;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/i;

    move-result-object v5

    const-string p1, "ContentModeParser::case sr: end!!!"

    .line 102
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_3
    const-string v0, "ContentModeParser::case tm: start!!!"

    .line 95
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 96
    invoke-static {p0, p1}, Lcom/coloros/anim/e/ae;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/q;

    move-result-object v5

    const-string p1, "ContentModeParser::case tm: end!!!"

    .line 97
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_4
    const-string v0, "ContentModeParser::case rc: start!!!"

    .line 90
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1}, Lcom/coloros/anim/e/x;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/j;

    move-result-object v5

    const-string p1, "ContentModeParser::case rc: end!!!"

    .line 92
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_5
    const-string v0, "ContentModeParser::case el: start!!!"

    .line 85
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 86
    invoke-static {p0, p1, v1}, Lcom/coloros/anim/e/e;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;I)Lcom/coloros/anim/c/b/a;

    move-result-object v5

    const-string p1, "ContentModeParser::case el: end!!!"

    .line 87
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6
    const-string v0, "ContentModeParser::case sh: start!!!"

    .line 80
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1}, Lcom/coloros/anim/e/ac;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/o;

    move-result-object v5

    const-string p1, "ContentModeParser::case sh: end!!!"

    .line 82
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_7
    const-string v0, "ContentModeParser::case tr: start!!!"

    .line 75
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 76
    invoke-static {p0, p1}, Lcom/coloros/anim/e/c;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/a/l;

    move-result-object v5

    const-string p1, "ContentModeParser::case tr: end!!!"

    .line 77
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_8
    const-string v0, "ContentModeParser::case gf: start!!!"

    .line 70
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {p0, p1}, Lcom/coloros/anim/e/l;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/d;

    move-result-object v5

    const-string p1, "ContentModeParser::case gf: end!!!"

    .line 72
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_9
    const-string v0, "ContentModeParser::case fl: start!!!"

    .line 65
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1}, Lcom/coloros/anim/e/ab;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/m;

    move-result-object v5

    const-string p1, "ContentModeParser::case fl: end!!!"

    .line 67
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_a
    const-string v0, "ContentModeParser::case gs: start!!!"

    .line 60
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1}, Lcom/coloros/anim/e/m;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/e;

    move-result-object v5

    const-string p1, "ContentModeParser::case gs: end!!!"

    .line 62
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_b
    const-string v0, "ContentModeParser::case st: start!!!"

    .line 55
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {p0, p1}, Lcom/coloros/anim/e/ad;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/p;

    move-result-object v5

    const-string p1, "ContentModeParser::case st: end!!!"

    .line 57
    invoke-static {p1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_c
    const-string v1, "ContentModeParser::case gr: start!!!"

    .line 50
    invoke-static {v1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1022
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v4

    .line 1024
    :goto_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1025
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xcfc

    if-eq v8, v9, :cond_a

    const/16 v9, 0xd2b

    if-eq v8, v9, :cond_9

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_8

    goto :goto_7

    :cond_8
    const-string v8, "nm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v4

    goto :goto_8

    :cond_9
    const-string v8, "it"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v0

    goto :goto_8

    :cond_a
    const-string v8, "hd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v6

    goto :goto_8

    :cond_b
    :goto_7
    move v7, v3

    :goto_8
    if-eqz v7, :cond_10

    if-eq v7, v6, :cond_f

    if-eq v7, v0, :cond_c

    .line 1043
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 1033
    :cond_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 1034
    :cond_d
    :goto_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1035
    invoke-static {p0, p1}, Lcom/coloros/anim/e/g;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;)Lcom/coloros/anim/c/b/b;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 1037
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1040
    :cond_e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_6

    .line 1030
    :cond_f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    goto :goto_6

    .line 1027
    :cond_10
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1047
    :cond_11
    new-instance p1, Lcom/coloros/anim/c/b/n;

    invoke-direct {p1, v5, v1, v2}, Lcom/coloros/anim/c/b/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    const-string v0, "ContentModeParser::case gr: end!!!"

    .line 52
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    move-object v5, p1

    .line 121
    :goto_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 122
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    .line 124
    :cond_12
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v5

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

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
