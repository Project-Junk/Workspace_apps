.class public final Lcom/android/a/a/a/a;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# instance fields
.field final a:[B

.field b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>([BI)V
    .locals 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 405
    iput v0, p0, Lcom/android/a/a/a/a;->g:I

    const/16 v0, 0x40

    .line 409
    iput v0, p0, Lcom/android/a/a/a/a;->i:I

    const/high16 v0, 0x4000000

    .line 412
    iput v0, p0, Lcom/android/a/a/a/a;->j:I

    .line 418
    iput-object p1, p0, Lcom/android/a/a/a/a;->a:[B

    const/4 p1, 0x0

    .line 419
    iput p1, p0, Lcom/android/a/a/a/a;->b:I

    add-int/2addr p2, p1

    .line 420
    iput p2, p0, Lcom/android/a/a/a/a;->c:I

    .line 421
    iput p1, p0, Lcom/android/a/a/a/a;->e:I

    return-void
.end method

.method private f()V
    .locals 2

    .line 495
    iget v0, p0, Lcom/android/a/a/a/a;->c:I

    iget v1, p0, Lcom/android/a/a/a/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/a/a/a/a;->c:I

    .line 496
    iget v0, p0, Lcom/android/a/a/a/a;->c:I

    .line 497
    iget v1, p0, Lcom/android/a/a/a/a;->g:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 499
    iput v1, p0, Lcom/android/a/a/a/a;->d:I

    .line 500
    iget v1, p0, Lcom/android/a/a/a/a;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/a/a/a/a;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 502
    iput v0, p0, Lcom/android/a/a/a/a;->d:I

    return-void
.end method

.method private f(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 643
    iget v0, p0, Lcom/android/a/a/a/a;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/a/a/a/a;->g:I

    if-gt v1, v2, :cond_1

    .line 650
    iget v1, p0, Lcom/android/a/a/a/a;->c:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 652
    iput v0, p0, Lcom/android/a/a/a/a;->e:I

    return-void

    .line 654
    :cond_0
    invoke-static {}, Lcom/android/a/a/a/h;->a()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 645
    invoke-direct {p0, v2}, Lcom/android/a/a/a/a;->f(I)V

    .line 647
    invoke-static {}, Lcom/android/a/a/a/h;->a()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1

    .line 640
    :cond_2
    invoke-static {}, Lcom/android/a/a/a/h;->b()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1
.end method

.method private g()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget v0, p0, Lcom/android/a/a/a/a;->e:I

    iget v1, p0, Lcom/android/a/a/a/a;->c:I

    if-eq v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/a/a/a/a;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/a/a/a/a;->e:I

    aget-byte v0, v1, v0

    return v0

    .line 598
    :cond_0
    invoke-static {}, Lcom/android/a/a/a/h;->a()Lcom/android/a/a/a/h;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1535
    iget v0, p0, Lcom/android/a/a/a/a;->e:I

    iget v1, p0, Lcom/android/a/a/a/a;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 72
    iput v2, p0, Lcom/android/a/a/a/a;->f:I

    return v2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/android/a/a/a/a;->f:I

    .line 77
    iget v0, p0, Lcom/android/a/a/a/a;->f:I

    if-eqz v0, :cond_2

    return v0

    .line 79
    :cond_2
    invoke-static {}, Lcom/android/a/a/a/h;->d()Lcom/android/a/a/a/h;

    move-result-object v0

    throw v0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/a/a/a/h;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/android/a/a/a/a;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/a/a/a/h;->e()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/android/a/a/a/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->c()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/android/a/a/a/a;->h:I

    iget v2, p0, Lcom/android/a/a/a/a;->i:I

    if-ge v1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/a/a/a/a;->c(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/android/a/a/a/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/a/a/a/a;->h:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/android/a/a/a/i;->a(Lcom/android/a/a/a/a;)Lcom/android/a/a/a/i;

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/a/a/a/a;->a(I)V

    .line 225
    iget p1, p0, Lcom/android/a/a/a/a;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/a/a/a/a;->h:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/a/a/a/a;->d(I)V

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/android/a/a/a/h;->g()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->c()I

    move-result v0

    .line 190
    iget v1, p0, Lcom/android/a/a/a/a;->c:I

    iget v2, p0, Lcom/android/a/a/a/a;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/a/a/a/a;->a:[B

    sget-object v4, Lcom/android/a/a/a/g;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    iget v2, p0, Lcom/android/a/a/a/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/a/a/a/a;->e:I

    return-object v1

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/String;

    if-ltz v0, :cond_3

    .line 3614
    iget v2, p0, Lcom/android/a/a/a/a;->e:I

    add-int v3, v2, v0

    iget v4, p0, Lcom/android/a/a/a/a;->g:I

    if-gt v3, v4, :cond_2

    .line 3621
    iget v3, p0, Lcom/android/a/a/a/a;->c:I

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_1

    .line 3623
    new-array v3, v0, [B

    .line 3624
    iget-object v4, p0, Lcom/android/a/a/a/a;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3625
    iget v2, p0, Lcom/android/a/a/a/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/a/a/a/a;->e:I

    .line 198
    sget-object v0, Lcom/android/a/a/a/g;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 3628
    :cond_1
    invoke-static {}, Lcom/android/a/a/a/h;->a()Lcom/android/a/a/a/h;

    move-result-object v0

    throw v0

    :cond_2
    sub-int/2addr v4, v2

    .line 3616
    invoke-direct {p0, v4}, Lcom/android/a/a/a/a;->f(I)V

    .line 3618
    invoke-static {}, Lcom/android/a/a/a/h;->a()Lcom/android/a/a/a/h;

    move-result-object v0

    throw v0

    .line 3611
    :cond_3
    invoke-static {}, Lcom/android/a/a/a/h;->b()Lcom/android/a/a/a/h;

    move-result-object v0

    throw v0
.end method

.method public final b(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/android/a/a/a/m;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 3337
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 3338
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 3339
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 3340
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    return v1

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/a/a/a/h;->f()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3138
    :cond_2
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->a()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3139
    invoke-virtual {p0, v0}, Lcom/android/a/a/a/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    :cond_3
    invoke-static {p1}, Lcom/android/a/a/a/m;->b(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/android/a/a/a/m;->a(II)I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/a/a/a/a;->a(I)V

    return v1

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/a/a/a/a;->f(I)V

    return v1

    .line 2349
    :cond_5
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2350
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2351
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2352
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2353
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2354
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2355
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    .line 2356
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    return v1

    .line 2169
    :cond_6
    invoke-virtual {p0}, Lcom/android/a/a/a/a;->c()I

    return v1
.end method

.method public final c()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 292
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 296
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 300
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 304
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 308
    invoke-direct {p0}, Lcom/android/a/a/a/a;->g()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_5
    invoke-static {}, Lcom/android/a/a/a/h;->c()Lcom/android/a/a/a/h;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final c(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/a/a/a/h;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 482
    iget v0, p0, Lcom/android/a/a/a/a;->e:I

    add-int/2addr p1, v0

    .line 483
    iget v0, p0, Lcom/android/a/a/a/a;->g:I

    if-gt p1, v0, :cond_0

    .line 487
    iput p1, p0, Lcom/android/a/a/a/a;->g:I

    .line 489
    invoke-direct {p0}, Lcom/android/a/a/a/a;->f()V

    return v0

    .line 485
    :cond_0
    invoke-static {}, Lcom/android/a/a/a/h;->a()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1

    .line 480
    :cond_1
    invoke-static {}, Lcom/android/a/a/a/h;->b()Lcom/android/a/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public final d()I
    .locals 2

    .line 521
    iget v0, p0, Lcom/android/a/a/a/a;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 525
    :cond_0
    iget v1, p0, Lcom/android/a/a/a/a;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/android/a/a/a/a;->g:I

    .line 513
    invoke-direct {p0}, Lcom/android/a/a/a/a;->f()V

    return-void
.end method

.method public final e()I
    .locals 2

    .line 542
    iget v0, p0, Lcom/android/a/a/a/a;->e:I

    iget v1, p0, Lcom/android/a/a/a/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e(I)V
    .locals 3

    .line 580
    iget v0, p0, Lcom/android/a/a/a/a;->e:I

    iget v1, p0, Lcom/android/a/a/a/a;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 587
    iput v1, p0, Lcom/android/a/a/a/a;->e:I

    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bad position "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/a/a/a/a;->e:I

    iget v2, p0, Lcom/android/a/a/a/a;->b:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
