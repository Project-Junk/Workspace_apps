.class public final Lcom/heytap/baselib/utils/IdIOUtilKt;
.super Ljava/lang/Object;
.source "idIOUtil.kt"


# direct methods
.method public static final decryptTo(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$decryptTo"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.defaultCharset()"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, La/c/b;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, La/h/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 77
    aget-byte v3, p0, v2

    int-to-byte v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    const-string v0, "readText(Charset.default\u2026it, Base64.DEFAULT)\n    }"

    .line 79
    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/String;

    sget-object v1, La/h/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final encryptTo([BLjava/io/File;)Z
    .locals 6

    const-string v0, "$this$encryptTo"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 48
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 50
    aget-byte v4, p0, v3

    int-to-byte v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 62
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    .line 57
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 61
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 64
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    return v1

    :goto_6
    if-eqz v0, :cond_4

    .line 61
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz v0, :cond_5

    .line 62
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 64
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :cond_5
    :goto_9
    throw p0
.end method

.method private static final getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 20
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    return-object p0

    .line 24
    :cond_2
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "File.separator"

    invoke-static {v3, v4}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2032
    invoke-static {v0}, La/h/e;->a(Ljava/lang/CharSequence;)I

    move-result v4

    const-string v5, "$this$lastIndexOf"

    invoke-static {v0, v5}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "string"

    invoke-static {v3, v5}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    instance-of v5, v0, Ljava/lang/String;

    const/4 v6, -0x1

    if-nez v5, :cond_e

    .line 2034
    check-cast v3, Ljava/lang/CharSequence;

    .line 2878
    invoke-static {v0}, La/h/e;->a(Ljava/lang/CharSequence;)I

    move-result v7

    if-le v4, v7, :cond_3

    move v4, v7

    .line 4439
    :cond_3
    sget-object v7, La/e/b;->d:La/e/b$a;

    .line 5122
    new-instance v7, La/e/b;

    invoke-direct {v7, v4, v6}, La/e/b;-><init>(II)V

    const-string v4, "other"

    if-eqz v5, :cond_6

    .line 2880
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 6087
    iget v1, v7, La/e/b;->a:I

    .line 6092
    iget v5, v7, La/e/b;->b:I

    .line 6097
    iget v7, v7, La/e/b;->c:I

    if-ltz v7, :cond_4

    if-gt v1, v5, :cond_d

    goto :goto_2

    :cond_4
    if-lt v1, v5, :cond_d

    .line 2882
    :goto_2
    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-string v11, "$this$regionMatches"

    invoke-static {v8, v11}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v4}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6527
    invoke-virtual {v8, v2, v9, v1, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    move v0, v1

    goto/16 :goto_7

    :cond_5
    if-eq v1, v5, :cond_d

    add-int/2addr v1, v7

    goto :goto_2

    .line 7087
    :cond_6
    iget v5, v7, La/e/b;->a:I

    .line 7092
    iget v8, v7, La/e/b;->b:I

    .line 7097
    iget v7, v7, La/e/b;->c:I

    if-ltz v7, :cond_7

    if-gt v5, v8, :cond_d

    goto :goto_3

    :cond_7
    if-lt v5, v8, :cond_d

    .line 2887
    :goto_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-string v10, "$this$regionMatchesImpl"

    invoke-static {v3, v10}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v5, :cond_b

    .line 7723
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v9

    if-ltz v10, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v9

    if-le v5, v10, :cond_8

    goto :goto_5

    :cond_8
    move v10, v2

    :goto_4
    if-ge v10, v9, :cond_a

    add-int/lit8 v11, v10, 0x0

    .line 7728
    invoke-interface {v3, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int v12, v5, v10

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v11, v12}, La/h/a;->a(CC)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    move v9, v1

    goto :goto_6

    :cond_b
    :goto_5
    move v9, v2

    :goto_6
    if-eqz v9, :cond_c

    move v0, v5

    goto :goto_7

    :cond_c
    if-eq v5, v8, :cond_d

    add-int/2addr v5, v7

    goto :goto_3

    :cond_d
    move v0, v6

    goto :goto_7

    .line 2036
    :cond_e
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_7
    if-ne v0, v6, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    if-eqz p0, :cond_10

    .line 25
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_10
    new-instance p0, La/e;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, La/e;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final makeDirs(Ljava/lang/String;)Z
    .locals 3

    .line 29
    invoke-static {p0}, Lcom/heytap/baselib/utils/IdIOUtilKt;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v1

    .line 34
    :cond_2
    new-instance v0, Ljava/io/File;

    if-nez p0, :cond_3

    invoke-static {}, La/d/b/d;->a()V

    :cond_3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_4

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public static final readFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "filePath"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charsetName"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    const-string v0, "Charset.defaultCharset()"

    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, La/c/b;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
