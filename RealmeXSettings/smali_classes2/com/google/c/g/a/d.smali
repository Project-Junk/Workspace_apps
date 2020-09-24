.class final Lcom/google/c/g/a/d;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2d

    .line 45
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/g/a/d;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method private static a(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/c/g/a/d;->a:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 245
    aget-char p0, v0, p0

    return p0

    .line 243
    :cond_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method static a([BLcom/google/c/g/a/j;Lcom/google/c/g/a/f;Ljava/util/Map;)Lcom/google/c/b/e;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/c/g/a/j;",
            "Lcom/google/c/g/a/f;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/b/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 60
    new-instance v8, Lcom/google/c/b/c;

    invoke-direct {v8, v0}, Lcom/google/c/b/c;-><init>([B)V

    .line 61
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    move v13, v2

    move-object v14, v12

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Lcom/google/c/b/c;->a()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 71
    sget-object v2, Lcom/google/c/g/a/h;->a:Lcom/google/c/g/a/h;

    :goto_0
    move-object v15, v2

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v8, v3}, Lcom/google/c/b/c;->a(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/c/g/a/h;->a(I)Lcom/google/c/g/a/h;

    move-result-object v2

    goto :goto_0

    .line 75
    :goto_1
    sget-object v2, Lcom/google/c/g/a/h;->a:Lcom/google/c/g/a/h;

    if-eq v15, v2, :cond_10

    .line 76
    sget-object v2, Lcom/google/c/g/a/h;->h:Lcom/google/c/g/a/h;

    if-eq v15, v2, :cond_f

    sget-object v2, Lcom/google/c/g/a/h;->i:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_2

    goto/16 :goto_3

    .line 79
    :cond_2
    sget-object v2, Lcom/google/c/g/a/h;->d:Lcom/google/c/g/a/h;

    const/16 v4, 0x10

    if-ne v15, v2, :cond_4

    .line 80
    invoke-virtual {v8}, Lcom/google/c/b/c;->a()I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 85
    invoke-virtual {v8, v4}, Lcom/google/c/b/c;->a(I)I

    goto/16 :goto_4

    .line 81
    :cond_3
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v0

    throw v0

    .line 86
    :cond_4
    sget-object v2, Lcom/google/c/g/a/h;->f:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_9

    const/16 v2, 0x8

    .line 1330
    invoke-virtual {v8, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v3

    and-int/lit16 v5, v3, 0x80

    if-nez v5, :cond_5

    and-int/lit8 v2, v3, 0x7f

    goto :goto_2

    :cond_5
    and-int/lit16 v5, v3, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_6

    .line 1337
    invoke-virtual {v8, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v4

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v2, v4

    goto :goto_2

    :cond_6
    and-int/lit16 v2, v3, 0xe0

    const/16 v5, 0xc0

    if-ne v2, v5, :cond_8

    .line 1342
    invoke-virtual {v8, v4}, Lcom/google/c/b/c;->a(I)I

    move-result v2

    and-int/lit8 v3, v3, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 89
    :goto_2
    invoke-static {v2}, Lcom/google/c/b/d;->a(I)Lcom/google/c/b/d;

    move-result-object v14

    if-eqz v14, :cond_7

    goto :goto_4

    .line 91
    :cond_7
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v0

    throw v0

    .line 1345
    :cond_8
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v0

    throw v0

    .line 95
    :cond_9
    sget-object v2, Lcom/google/c/g/a/h;->j:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_a

    .line 97
    invoke-virtual {v8, v3}, Lcom/google/c/b/c;->a(I)I

    move-result v2

    .line 98
    invoke-virtual {v15, v1}, Lcom/google/c/g/a/h;->a(Lcom/google/c/g/a/j;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/google/c/b/c;->a(I)I

    move-result v3

    if-ne v2, v11, :cond_10

    .line 100
    invoke-static {v8, v9, v3}, Lcom/google/c/g/a/d;->a(Lcom/google/c/b/c;Ljava/lang/StringBuilder;I)V

    goto :goto_4

    .line 105
    :cond_a
    invoke-virtual {v15, v1}, Lcom/google/c/g/a/h;->a(Lcom/google/c/g/a/j;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v4

    .line 106
    sget-object v2, Lcom/google/c/g/a/h;->b:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_b

    .line 107
    invoke-static {v8, v9, v4}, Lcom/google/c/g/a/d;->c(Lcom/google/c/b/c;Ljava/lang/StringBuilder;I)V

    goto :goto_4

    .line 108
    :cond_b
    sget-object v2, Lcom/google/c/g/a/h;->c:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_c

    .line 109
    invoke-static {v8, v9, v4, v13}, Lcom/google/c/g/a/d;->a(Lcom/google/c/b/c;Ljava/lang/StringBuilder;IZ)V

    goto :goto_4

    .line 110
    :cond_c
    sget-object v2, Lcom/google/c/g/a/h;->e:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_d

    move-object v2, v8

    move-object v3, v9

    move-object v5, v14

    move-object v6, v10

    move-object/from16 v7, p3

    .line 111
    invoke-static/range {v2 .. v7}, Lcom/google/c/g/a/d;->a(Lcom/google/c/b/c;Ljava/lang/StringBuilder;ILcom/google/c/b/d;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_4

    .line 112
    :cond_d
    sget-object v2, Lcom/google/c/g/a/h;->g:Lcom/google/c/g/a/h;

    if-ne v15, v2, :cond_e

    .line 113
    invoke-static {v8, v9, v4}, Lcom/google/c/g/a/d;->b(Lcom/google/c/b/c;Ljava/lang/StringBuilder;I)V

    goto :goto_4

    .line 115
    :cond_e
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v0

    throw v0

    :cond_f
    :goto_3
    move v13, v11

    .line 120
    :cond_10
    :goto_4
    sget-object v2, Lcom/google/c/g/a/h;->a:Lcom/google/c/g/a/h;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v15, v2, :cond_0

    .line 126
    new-instance v1, Lcom/google/c/b/e;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v10, v12

    :cond_11
    if-nez p2, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/google/c/g/a/f;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-direct {v1, v0, v2, v10, v12}, Lcom/google/c/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 123
    :catch_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/google/c/b/c;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 139
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    .line 145
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    .line 149
    invoke-virtual {p0, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v2

    .line 150
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_0

    const v3, 0xa1a1

    goto :goto_1

    :cond_0
    const v3, 0xa6a1

    :goto_1
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 158
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 159
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 165
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 167
    :catch_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 140
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/c/b/c;Ljava/lang/StringBuilder;ILcom/google/c/b/d;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/c;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/c/b/d;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    .line 214
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 218
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 v2, 0x8

    .line 220
    invoke-virtual {p0, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 229
    invoke-static {v0, p5}, Lcom/google/c/b/l;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {p3}, Lcom/google/c/b/d;->name()Ljava/lang/String;

    move-result-object p0

    .line 234
    :goto_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 236
    :catch_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 215
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/google/c/b/c;Ljava/lang/StringBuilder;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 258
    invoke-virtual {p0, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v1

    .line 259
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/c/g/a/d;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/c/g/a/d;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_2

    .line 268
    invoke-virtual {p0, v2}, Lcom/google/c/b/c;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/c/g/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 273
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_6

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_5

    .line 275
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_4

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_4

    .line 277
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 p0, 0x1d

    .line 280
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static b(Lcom/google/c/b/c;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 175
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    .line 181
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    .line 185
    invoke-virtual {p0, v2}, Lcom/google/c/b/c;->a(I)I

    move-result v2

    .line 186
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_0

    const v3, 0x8140

    goto :goto_1

    :cond_0
    const v3, 0xc140

    :goto_1
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 194
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 195
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 201
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 203
    :catch_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 176
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method private static c(Lcom/google/c/b/c;Ljava/lang/StringBuilder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 296
    invoke-virtual {p0, v1}, Lcom/google/c/b/c;->a(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    .line 300
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/google/c/g/a/d;->a(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/c/g/a/d;->a(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/c/g/a/d;->a(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 294
    :cond_1
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 307
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_4

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/c/b/c;->a(I)I

    move-result p0

    const/16 p2, 0x64

    if-ge p0, p2, :cond_3

    .line 314
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/google/c/g/a/d;->a(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/google/c/g/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 312
    :cond_3
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 308
    :cond_4
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 318
    invoke-virtual {p0}, Lcom/google/c/b/c;->a()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_7

    .line 321
    invoke-virtual {p0, v0}, Lcom/google/c/b/c;->a(I)I

    move-result p0

    if-ge p0, v1, :cond_6

    .line 325
    invoke-static {p0}, Lcom/google/c/g/a/d;->a(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :cond_6
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 319
    :cond_7
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    return-void
.end method
