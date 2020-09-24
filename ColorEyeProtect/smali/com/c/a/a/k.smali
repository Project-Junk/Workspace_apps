.class Lcom/c/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/a/p;


# instance fields
.field private c:Lcom/c/a/a/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    sget-object p3, Lcom/c/a/a/p;->a:Lcom/c/a/a/o;

    :cond_0
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/c/a/a/p;->b:I

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-nez p4, :cond_1

    invoke-static {p1, v0, v1, p3}, Lcom/c/a/a/k;->a(Ljava/lang/String;[BILcom/c/a/a/o;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {p4}, Lcom/c/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/c/a/a/h; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v6, Lcom/c/a/a/l;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/c/a/a/l;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V

    iput-object v6, p0, Lcom/c/a/a/k;->c:Lcom/c/a/a/l;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/c/a/a/h; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_0
    :try_start_2
    const-string v5, "euc-jp"

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Problem reading with assumed encoding of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " so restarting with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1, v7}, Lcom/c/a/a/o;->c(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Lcom/c/a/a/h; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {v5}, Lcom/c/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/c/a/a/h; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v6, Lcom/c/a/a/l;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/c/a/a/l;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V

    iput-object v6, p0, Lcom/c/a/a/k;->c:Lcom/c/a/a/l;

    goto :goto_0

    :catch_1
    new-instance v8, Lcom/c/a/a/m;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" is not a supported encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/o;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Lcom/c/a/a/h; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/c/a/a/h;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Encoding declaration of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " is different that assumed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " so restarting the parsing with the new encoding"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p1, v7}, Lcom/c/a/a/o;->c(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    :try_start_5
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {v5}, Lcom/c/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    new-instance p2, Lcom/c/a/a/l;

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/c/a/a/l;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/c/a/a/o;Ljava/lang/String;Lcom/c/a/a/n;)V

    iput-object p2, p0, Lcom/c/a/a/k;->c:Lcom/c/a/a/l;

    :goto_0
    return-void

    :catch_3
    new-instance p0, Lcom/c/a/a/m;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "\""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "\" is not a supported encoding"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/o;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Precondition violation: the InputStream passed to ParseByteStream must support mark"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(B)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :pswitch_0
    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UTF-8"

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;[BILcom/c/a/a/o;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    if-gtz p2, :cond_0

    const-string p2, "no characters in input"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "less than 4 characters in input: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p3, p2, p0, v1}, Lcom/c/a/a/o;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    const-string p2, "UTF-8"

    goto/16 :goto_3

    :cond_2
    const p2, 0xfeff

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, -0x20000

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const p2, 0xfffe

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, -0x1010000

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/16 p2, 0x3c

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, 0x3c000000    # 0.0078125f

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/16 p2, 0x3c00

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, 0x3c0000

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const p2, 0x3c003f

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "UTF-16BE"

    goto :goto_3

    :cond_4
    const p2, 0x3c003f00

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "UTF-16LE"

    goto :goto_3

    :cond_5
    const p2, 0x3c3f786d

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const p2, 0x4c6fa794    # 6.2824016E7f

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BI)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "EBCDIC"

    goto :goto_3

    :cond_7
    const/4 p2, -0x2

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BS)Z

    move-result p2

    if-nez p2, :cond_8

    const/16 p2, -0x101

    invoke-static {p1, p2}, Lcom/c/a/a/k;->a([BS)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_8
    const-string p2, "UTF-16"

    goto :goto_3

    :cond_9
    :goto_2
    const-string p2, "UCS-4"

    :goto_3
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "From start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/c/a/a/k;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v0, p1, v1

    invoke-static {v0}, Lcom/c/a/a/k;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/c/a/a/k;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    invoke-static {p1}, Lcom/c/a/a/k;->a(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " deduced encoding = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p0, v1}, Lcom/c/a/a/o;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    return-object p2
.end method

.method private static a([BI)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private static a([BS)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte p0, p0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/k;->c:Lcom/c/a/a/l;

    invoke-virtual {p0}, Lcom/c/a/a/l;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
