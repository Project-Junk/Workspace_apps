.class public final Lcom/coloros/anim/g;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 282
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectiveCompositionFactory::fromJsonReaderSync cacheKey = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 285
    invoke-static {p0, p1, v0}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/e;
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1030
    :try_start_0
    invoke-static {}, Lcom/coloros/anim/f/g;->a()F

    move-result v0

    .line 1034
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 1035
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1039
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1040
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1041
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 1044
    new-instance v9, Lcom/coloros/anim/a;

    invoke-direct {v9}, Lcom/coloros/anim/a;-><init>()V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v10, 0x0

    move v13, v10

    move v14, v13

    move v15, v14

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 1047
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    const/16 v17, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x2

    const/16 v20, 0x1

    sparse-switch v18, :sswitch_data_0

    move/from16 v18, v15

    goto/16 :goto_1

    :sswitch_0
    move/from16 v18, v15

    const-string v15, "markers"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0xa

    goto/16 :goto_2

    :sswitch_1
    move/from16 v18, v15

    const-string v15, "fonts"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x8

    goto/16 :goto_2

    :sswitch_2
    move/from16 v18, v15

    const-string v15, "chars"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x9

    goto/16 :goto_2

    :sswitch_3
    move/from16 v18, v15

    const-string v15, "op"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    goto :goto_2

    :sswitch_4
    move/from16 v18, v15

    const-string v15, "ip"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move/from16 v11, v19

    goto :goto_2

    :sswitch_5
    move/from16 v18, v15

    const-string v15, "fr"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    goto :goto_2

    :sswitch_6
    move/from16 v18, v15

    const-string v15, "w"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto :goto_2

    :sswitch_7
    move/from16 v18, v15

    const-string v15, "v"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x5

    goto :goto_2

    :sswitch_8
    move/from16 v18, v15

    const-string v15, "h"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move/from16 v11, v20

    goto :goto_2

    :sswitch_9
    move/from16 v18, v15

    const-string v15, "layers"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x6

    goto :goto_2

    :sswitch_a
    move/from16 v18, v15

    const-string v15, "assets"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x7

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v11, v17

    :goto_2
    packed-switch v11, :pswitch_data_0

    move-object v1, v6

    move-object v11, v7

    .line 1101
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_4

    :pswitch_0
    const-string v11, "parseMarkers start!!!"

    .line 1096
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1097
    invoke-static {v1, v7}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Ljava/util/List;)V

    const-string v11, "parseMarkers end!!!"

    .line 1098
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v11, "parseChars start!!!"

    .line 1091
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1092
    invoke-static {v1, v9, v8}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Landroidx/collection/SparseArrayCompat;)V

    const-string v11, "parseChars end!!!"

    .line 1093
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const-string v11, "parseFonts start!!!"

    .line 1086
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1087
    invoke-static {v1, v6}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Ljava/util/Map;)V

    const-string v11, "parseFonts end!!!"

    .line 1088
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    const-string v11, "parseAssets start!!!"

    .line 1081
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1082
    invoke-static {v1, v9, v4, v5}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/Map;Ljava/util/Map;)V

    const-string v11, "parseAssets end!!!"

    .line 1083
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    const-string v11, "parseLayers start!!!"

    .line 1076
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1077
    invoke-static {v1, v9, v3, v2}, Lcom/coloros/anim/e/i;->a(Landroid/util/JsonReader;Lcom/coloros/anim/a;Ljava/util/List;Landroid/util/LongSparseArray;)V

    const-string v11, "parseLayers end!!!"

    .line 1078
    invoke-static {v11}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    :cond_1
    :goto_3
    move-object v1, v6

    move-object v11, v7

    goto :goto_4

    .line 1065
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "\\."

    .line 1066
    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    .line 1067
    aget-object v17, v11, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1068
    aget-object v17, v11, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1069
    aget-object v11, v11, v19

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1070
    invoke-static {v15, v1, v11}, Lcom/coloros/anim/f/g;->a(III)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EffectiveAnimation only supports bodymovin >= 4.4.0"

    .line 1072
    invoke-virtual {v9, v1}, Lcom/coloros/anim/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    move-object v1, v6

    move-object v11, v7

    .line 1062
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v15, v6

    move-object v6, v1

    move-object v7, v11

    goto :goto_5

    :pswitch_7
    move-object v1, v6

    move-object v11, v7

    .line 1059
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3c23d70a    # 0.01f

    sub-float v14, v6, v7

    goto :goto_4

    :pswitch_8
    move-object v1, v6

    move-object v11, v7

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v13, v6

    goto :goto_4

    :pswitch_9
    move-object v1, v6

    move-object v11, v7

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    goto :goto_4

    :pswitch_a
    move-object v1, v6

    move-object v11, v7

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    :goto_4
    move-object v6, v1

    move-object v7, v11

    move/from16 v15, v18

    :goto_5
    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_2
    move-object v1, v6

    move-object v11, v7

    move/from16 v18, v15

    .line 1104
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    int-to-float v6, v10

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-float v7, v12

    mul-float/2addr v7, v0

    float-to-int v0, v7

    .line 1108
    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2065
    iput-object v7, v9, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 2066
    iput v13, v9, Lcom/coloros/anim/a;->j:F

    .line 2067
    iput v14, v9, Lcom/coloros/anim/a;->k:F

    move/from16 v15, v18

    .line 2068
    iput v15, v9, Lcom/coloros/anim/a;->l:F

    .line 2069
    iput-object v3, v9, Lcom/coloros/anim/a;->h:Ljava/util/List;

    .line 2070
    iput-object v2, v9, Lcom/coloros/anim/a;->g:Landroid/util/LongSparseArray;

    .line 2071
    iput-object v4, v9, Lcom/coloros/anim/a;->b:Ljava/util/Map;

    .line 2072
    iput-object v5, v9, Lcom/coloros/anim/a;->c:Ljava/util/Map;

    .line 2073
    iput-object v8, v9, Lcom/coloros/anim/a;->f:Landroidx/collection/SparseArrayCompat;

    .line 2074
    iput-object v1, v9, Lcom/coloros/anim/a;->d:Ljava/util/Map;

    .line 2075
    iput-object v11, v9, Lcom/coloros/anim/a;->e:Ljava/util/List;

    const-string v0, "CompositionParser::parse end!!!"

    .line 1112
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;Lcom/coloros/anim/a;)V

    .line 293
    new-instance v0, Lcom/coloros/anim/e;

    invoke-direct {v0, v9}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 298
    invoke-static/range {p0 .. p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 295
    :try_start_1
    new-instance v1, Lcom/coloros/anim/e;

    invoke-direct {v1, v0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 298
    invoke-static/range {p0 .. p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_4
    return-object v1

    :goto_6
    if-eqz p2, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    :cond_5
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_a
        -0x42252abe -> :sswitch_9
        0x68 -> :sswitch_8
        0x76 -> :sswitch_7
        0x77 -> :sswitch_6
        0xccc -> :sswitch_5
        0xd27 -> :sswitch_4
        0xde1 -> :sswitch_3
        0x5a3d7dd -> :sswitch_2
        0x5d17e04 -> :sswitch_1
        0x3205f379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 196
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectiveCompositionFactory::fromJsonInputStreamSync cacheKey = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/anim/g;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 322
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectiveCompositionFactory::fromZipStreamSync cacheKey = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 326
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/coloros/anim/g;->b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/coloros/anim/f;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 140
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectiveCompositionFactory::fromRawRes."

    .line 141
    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 145
    invoke-static {p1}, Lcom/coloros/anim/g;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coloros/anim/g$5;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/g$5;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 65
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveCompositionFactory::fromUrl url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/coloros/anim/g$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/util/JsonReader;)Lcom/coloros/anim/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 266
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EffectiveCompositionFactory::fromJsonReader cacheKey = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 269
    :cond_0
    new-instance v0, Lcom/coloros/anim/g$6;

    invoke-direct {v0, p0}, Lcom/coloros/anim/g$6;-><init>(Landroid/util/JsonReader;)V

    invoke-static {v1, v0}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;>;)",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;)Lcom/coloros/anim/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 409
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EffectiveCompositionFactory::cachdComposition isn\'t null, cacheKey is "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 410
    new-instance p0, Lcom/coloros/anim/f;

    new-instance p1, Lcom/coloros/anim/g$7;

    invoke-direct {p1, v0}, Lcom/coloros/anim/g$7;-><init>(Lcom/coloros/anim/a;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/f;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 417
    sget-object v0, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    sget-object p1, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/f;

    return-object p0

    .line 421
    :cond_2
    new-instance v0, Lcom/coloros/anim/f;

    invoke-direct {v0, p1}, Lcom/coloros/anim/f;-><init>(Ljava/util/concurrent/Callable;)V

    .line 422
    new-instance p1, Lcom/coloros/anim/g$2;

    invoke-direct {p1, p0}, Lcom/coloros/anim/g$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f;->a(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    .line 431
    new-instance p1, Lcom/coloros/anim/g$3;

    invoke-direct {p1, p0}, Lcom/coloros/anim/g$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f;->c(Lcom/coloros/anim/c;)Lcom/coloros/anim/f;

    .line 437
    sget-object p1, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Lcom/coloros/anim/a;Ljava/lang/String;)Lcom/coloros/anim/h;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5183
    iget-object p0, p0, Lcom/coloros/anim/a;->c:Ljava/util/Map;

    .line 392
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/h;

    .line 6043
    iget-object v1, v0, Lcom/coloros/anim/h;->b:Ljava/lang/String;

    .line 393
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 171
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "rawRes_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Lcom/coloros/anim/g;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/coloros/anim/e;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 160
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectiveCompositionFactory::fromRawResSync."

    .line 161
    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lcom/coloros/anim/g;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, p0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 205
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/coloros/anim/f/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    sget-boolean v1, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v1, :cond_0

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EffectiveCompositionFactory::fromZipStreamSyncInternal cacheKey = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 340
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 341
    sget-boolean v2, Lcom/coloros/anim/f/b;->b:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry == null ? "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 345
    sget-boolean v6, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v6, :cond_3

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry.getName() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 348
    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "__MACOSX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 350
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 351
    new-instance v1, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 352
    invoke-static {v1, v2, v4}, Lcom/coloros/anim/g;->a(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/coloros/anim/e;

    move-result-object v1

    .line 3031
    iget-object v1, v1, Lcom/coloros/anim/e;->a:Ljava/lang/Object;

    .line 352
    check-cast v1, Lcom/coloros/anim/a;

    move-object v5, v1

    goto :goto_2

    .line 353
    :cond_4
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 354
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 355
    array-length v6, v1

    sub-int/2addr v6, v3

    aget-object v1, v1, v6

    .line 356
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 358
    :cond_5
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 361
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    if-nez v5, :cond_7

    .line 369
    new-instance p0, Lcom/coloros/anim/e;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 372
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/coloros/anim/g;->a(Lcom/coloros/anim/a;Ljava/lang/String;)Lcom/coloros/anim/h;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3063
    iput-object v0, v1, Lcom/coloros/anim/h;->c:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 3183
    :cond_9
    iget-object p0, v5, Lcom/coloros/anim/a;->c:Ljava/util/Map;

    .line 380
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/h;

    .line 4056
    iget-object v1, v1, Lcom/coloros/anim/h;->c:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    .line 382
    new-instance p0, Lcom/coloros/anim/e;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no image for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/h;

    .line 5043
    iget-object v0, v0, Lcom/coloros/anim/h;->b:Ljava/lang/String;

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 386
    :cond_b
    invoke-static {}, Lcom/coloros/anim/c/c;->a()Lcom/coloros/anim/c/c;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Lcom/coloros/anim/c/c;->a(Ljava/lang/String;Lcom/coloros/anim/a;)V

    .line 387
    new-instance p0, Lcom/coloros/anim/e;

    invoke-direct {p0, v5}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 364
    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, p0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/f<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 98
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveCompositionFactory::fromAsset fileName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 103
    new-instance v0, Lcom/coloros/anim/g$4;

    invoke-direct {v0, p0, p1}, Lcom/coloros/anim/g$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/coloros/anim/g;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/coloros/anim/f;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 120
    sget-boolean v0, Lcom/coloros/anim/f/b;->b:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveCompositionFactory::fromAssetSync fileName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/f/b;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v0, "asset_"

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/coloros/anim/g;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0

    return-object p0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Lcom/coloros/anim/e;

    invoke-direct {p1, p0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
