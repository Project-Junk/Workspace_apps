.class Lcom/android/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mBuffer:[B

.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 47
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_4

    :cond_1
    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v5, v1, 0x1

    int-to-byte v3, v3

    :try_start_1
    aput-byte v3, v4, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v5

    goto :goto_0

    :catch_0
    move v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_0

    .line 108
    :catch_1
    :goto_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ATChannel: buffer overflow"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/test/LineReader;->mBuffer:[B

    const-string v4, "US-ASCII"

    invoke-direct {p1, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 114
    :catch_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "ATChannel: implausable UnsupportedEncodingException"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :catch_3
    return-object v2
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
