.class public final Lcom/b/a/x;
.super Ljava/lang/Object;
.source "Enc.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/b/a/x;->b(Ljava/lang/String;)[B

    move-result-object p0

    .line 28
    new-instance v0, Lcom/b/a/u;

    invoke-direct {v0}, Lcom/b/a/u;-><init>()V

    const-string v1, "7U727ALEWH8"

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/w;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/w;->a([B)[B

    move-result-object v1

    .line 29
    invoke-virtual {v0, p0, v1}, Lcom/b/a/u;->a([B[B)[B

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/b/a/v;->a([B)[B

    move-result-object p0

    .line 1084
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/b/a/x;->a([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 97
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "UTF-8"

    invoke-direct {v1, p0, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 46
    new-array p0, v0, [B

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 56
    :catch_0
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 60
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 61
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 62
    array-length v1, p0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 63
    array-length v3, v1

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 66
    :catch_1
    new-array p0, v0, [B

    return-object p0
.end method
