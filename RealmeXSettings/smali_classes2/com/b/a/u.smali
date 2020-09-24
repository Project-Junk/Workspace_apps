.class public final Lcom/b/a/u;
.super Ljava/lang/Object;
.source "Crypter.java"


# static fields
.field private static a:Ljava/util/Random;


# instance fields
.field private b:Ljava/io/ByteArrayOutputStream;

.field private c:I

.field private d:I

.field private e:Z

.field private f:[B

.field private g:[B

.field private h:I

.field private i:[B

.field private j:I

.field private k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/b/a/u;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/b/a/u;->e:Z

    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private static a([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x4

    const-wide/16 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    .line 79
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide p0, 0xffffffffL

    and-long/2addr p0, v1

    const/16 v0, 0x20

    ushr-long v0, v1, v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private a()V
    .locals 7

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lcom/b/a/u;->j:I

    :goto_0
    iget v1, p0, Lcom/b/a/u;->j:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 458
    iget-boolean v2, p0, Lcom/b/a/u;->e:Z

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/b/a/u;->i:[B

    aget-byte v3, v2, v1

    iget-object v4, p0, Lcom/b/a/u;->k:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_1

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/b/a/u;->i:[B

    aget-byte v3, v2, v1

    iget-object v4, p0, Lcom/b/a/u;->g:[B

    iget v5, p0, Lcom/b/a/u;->d:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 457
    :goto_1
    iget v1, p0, Lcom/b/a/u;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/u;->j:I

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/b/a/u;->i:[B

    invoke-direct {p0, v1}, Lcom/b/a/u;->a([B)[B

    move-result-object v1

    .line 466
    iget-object v3, p0, Lcom/b/a/u;->g:[B

    iget v4, p0, Lcom/b/a/u;->c:I

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iput v0, p0, Lcom/b/a/u;->j:I

    :goto_2
    iget v1, p0, Lcom/b/a/u;->j:I

    if-ge v1, v2, :cond_2

    .line 470
    iget-object v3, p0, Lcom/b/a/u;->g:[B

    iget v4, p0, Lcom/b/a/u;->c:I

    add-int/2addr v4, v1

    aget-byte v5, v3, v4

    iget-object v6, p0, Lcom/b/a/u;->k:[B

    aget-byte v6, v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    .line 469
    iput v1, p0, Lcom/b/a/u;->j:I

    goto :goto_2

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/b/a/u;->i:[B

    iget-object v3, p0, Lcom/b/a/u;->k:[B

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget v1, p0, Lcom/b/a/u;->c:I

    iput v1, p0, Lcom/b/a/u;->d:I

    add-int/2addr v1, v2

    .line 475
    iput v1, p0, Lcom/b/a/u;->c:I

    .line 476
    iput v0, p0, Lcom/b/a/u;->j:I

    .line 477
    iput-boolean v0, p0, Lcom/b/a/u;->e:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 496
    iget-object v0, p0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 497
    iget-object v0, p0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 498
    iget-object v0, p0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private a([B)[B
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 331
    invoke-static {v1, v2}, Lcom/b/a/u;->a([BI)J

    move-result-wide v3

    const/4 v5, 0x4

    .line 332
    invoke-static {v1, v5}, Lcom/b/a/u;->a([BI)J

    move-result-wide v6

    .line 333
    iget-object v1, v0, Lcom/b/a/u;->f:[B

    invoke-static {v1, v2}, Lcom/b/a/u;->a([BI)J

    move-result-wide v1

    .line 334
    iget-object v8, v0, Lcom/b/a/u;->f:[B

    invoke-static {v8, v5}, Lcom/b/a/u;->a([BI)J

    move-result-wide v8

    .line 335
    iget-object v10, v0, Lcom/b/a/u;->f:[B

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lcom/b/a/u;->a([BI)J

    move-result-wide v10

    .line 336
    iget-object v12, v0, Lcom/b/a/u;->f:[B

    const/16 v13, 0xc

    invoke-static {v12, v13}, Lcom/b/a/u;->a([BI)J

    move-result-wide v12

    const/16 v14, 0x10

    const-wide/16 v15, 0x0

    :goto_0
    add-int/lit8 v17, v14, -0x1

    if-lez v14, :cond_0

    const-wide v18, 0x9e3779b9L

    add-long v15, v15, v18

    const-wide v18, 0xffffffffL

    and-long v15, v15, v18

    shl-long v20, v6, v5

    add-long v20, v20, v1

    add-long v22, v6, v15

    xor-long v20, v20, v22

    const/4 v14, 0x5

    ushr-long v22, v6, v14

    add-long v22, v22, v8

    xor-long v20, v20, v22

    add-long v3, v3, v20

    and-long v3, v3, v18

    shl-long v20, v3, v5

    add-long v20, v20, v10

    add-long v22, v3, v15

    xor-long v20, v20, v22

    ushr-long v22, v3, v14

    add-long v22, v22, v12

    xor-long v20, v20, v22

    add-long v6, v6, v20

    and-long v6, v6, v18

    move/from16 v14, v17

    goto :goto_0

    .line 354
    :cond_0
    iget-object v1, v0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    long-to-int v1, v3

    .line 355
    invoke-direct {v0, v1}, Lcom/b/a/u;->a(I)V

    long-to-int v1, v6

    .line 356
    invoke-direct {v0, v1}, Lcom/b/a/u;->a(I)V

    .line 357
    iget-object v1, v0, Lcom/b/a/u;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 7

    .line 368
    array-length v0, p1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/16 v1, 0x8

    .line 1389
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/b/a/u;->i:[B

    .line 1390
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/b/a/u;->k:[B

    const/4 v2, 0x1

    .line 1391
    iput v2, p0, Lcom/b/a/u;->j:I

    const/4 v3, 0x0

    .line 1392
    iput v3, p0, Lcom/b/a/u;->h:I

    .line 1393
    iput v3, p0, Lcom/b/a/u;->d:I

    iput v3, p0, Lcom/b/a/u;->c:I

    .line 1394
    iput-object p2, p0, Lcom/b/a/u;->f:[B

    .line 1395
    iput-boolean v2, p0, Lcom/b/a/u;->e:Z

    add-int/lit8 p2, v0, 0xa

    .line 1398
    rem-int/2addr p2, v1

    iput p2, p0, Lcom/b/a/u;->j:I

    .line 1399
    iget p2, p0, Lcom/b/a/u;->j:I

    if-eqz p2, :cond_1

    rsub-int/lit8 p2, p2, 0x8

    .line 1400
    iput p2, p0, Lcom/b/a/u;->j:I

    .line 1402
    :cond_1
    iget p2, p0, Lcom/b/a/u;->j:I

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0xa

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/b/a/u;->g:[B

    .line 1405
    iget-object p2, p0, Lcom/b/a/u;->i:[B

    .line 1486
    sget-object v4, Lcom/b/a/u;->a:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xf8

    .line 1405
    iget v5, p0, Lcom/b/a/u;->j:I

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    move p2, v2

    .line 1408
    :goto_0
    iget v4, p0, Lcom/b/a/u;->j:I

    if-gt p2, v4, :cond_2

    .line 1409
    iget-object v4, p0, Lcom/b/a/u;->i:[B

    .line 2486
    sget-object v5, Lcom/b/a/u;->a:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1409
    aput-byte v5, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v4, v2

    .line 1410
    iput v4, p0, Lcom/b/a/u;->j:I

    move p2, v3

    :goto_1
    if-ge p2, v1, :cond_3

    .line 1413
    iget-object v4, p0, Lcom/b/a/u;->k:[B

    aput-byte v3, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1416
    :cond_3
    iput v2, p0, Lcom/b/a/u;->h:I

    .line 1417
    :cond_4
    :goto_2
    iget p2, p0, Lcom/b/a/u;->h:I

    const/4 v4, 0x2

    if-gt p2, v4, :cond_6

    .line 1418
    iget p2, p0, Lcom/b/a/u;->j:I

    if-ge p2, v1, :cond_5

    .line 1419
    iget-object v4, p0, Lcom/b/a/u;->i:[B

    add-int/lit8 v5, p2, 0x1

    iput v5, p0, Lcom/b/a/u;->j:I

    .line 3486
    sget-object v5, Lcom/b/a/u;->a:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1419
    aput-byte v5, v4, p2

    .line 1420
    iget p2, p0, Lcom/b/a/u;->h:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/b/a/u;->h:I

    .line 1422
    :cond_5
    iget p2, p0, Lcom/b/a/u;->j:I

    if-ne p2, v1, :cond_4

    .line 1423
    invoke-direct {p0}, Lcom/b/a/u;->a()V

    goto :goto_2

    :cond_6
    move p2, v3

    :cond_7
    :goto_3
    if-lez v0, :cond_9

    .line 1429
    iget v4, p0, Lcom/b/a/u;->j:I

    if-ge v4, v1, :cond_8

    .line 1430
    iget-object v5, p0, Lcom/b/a/u;->i:[B

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/b/a/u;->j:I

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    aput-byte p2, v5, v4

    add-int/lit8 v0, v0, -0x1

    move p2, v6

    .line 1433
    :cond_8
    iget v4, p0, Lcom/b/a/u;->j:I

    if-ne v4, v1, :cond_7

    .line 1434
    invoke-direct {p0}, Lcom/b/a/u;->a()V

    goto :goto_3

    .line 1438
    :cond_9
    iput v2, p0, Lcom/b/a/u;->h:I

    .line 1439
    :cond_a
    :goto_4
    iget p1, p0, Lcom/b/a/u;->h:I

    const/4 p2, 0x7

    if-gt p1, p2, :cond_c

    .line 1440
    iget p2, p0, Lcom/b/a/u;->j:I

    if-ge p2, v1, :cond_b

    .line 1441
    iget-object v0, p0, Lcom/b/a/u;->i:[B

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/b/a/u;->j:I

    aput-byte v3, v0, p2

    add-int/lit8 p1, p1, 0x1

    .line 1442
    iput p1, p0, Lcom/b/a/u;->h:I

    .line 1444
    :cond_b
    iget p1, p0, Lcom/b/a/u;->j:I

    if-ne p1, v1, :cond_a

    .line 1445
    invoke-direct {p0}, Lcom/b/a/u;->a()V

    goto :goto_4

    .line 1448
    :cond_c
    iget-object p1, p0, Lcom/b/a/u;->g:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
