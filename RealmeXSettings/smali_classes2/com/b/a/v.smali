.class public final Lcom/b/a/v;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final a:[B

.field private static b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xff

    .line 45
    new-array v1, v0, [B

    sput-object v1, Lcom/b/a/v;->b:[B

    const-string v1, "\r\n"

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/b/a/v;->a:[B

    const/16 v1, 0x40

    .line 82
    new-array v1, v1, [B

    sput-object v1, Lcom/b/a/v;->c:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    sget-object v3, Lcom/b/a/v;->b:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 109
    sget-object v2, Lcom/b/a/v;->b:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    .line 112
    sget-object v3, Lcom/b/a/v;->b:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    .line 115
    sget-object v4, Lcom/b/a/v;->b:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 118
    :cond_3
    sget-object v0, Lcom/b/a/v;->b:[B

    const/16 v4, 0x3e

    const/16 v5, 0x2b

    aput-byte v4, v0, v5

    const/16 v6, 0x3f

    const/16 v7, 0x2f

    .line 119
    aput-byte v6, v0, v7

    move v0, v1

    :goto_4
    const/16 v8, 0x19

    if-gt v0, v8, :cond_4

    .line 122
    sget-object v8, Lcom/b/a/v;->c:[B

    add-int/lit8 v9, v0, 0x41

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_5
    const/16 v8, 0x33

    if-gt v2, v8, :cond_5

    .line 126
    sget-object v8, Lcom/b/a/v;->c:[B

    add-int/lit8 v9, v0, 0x61

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_6

    .line 130
    sget-object v0, Lcom/b/a/v;->c:[B

    add-int/lit8 v2, v1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 133
    :cond_6
    sget-object v0, Lcom/b/a/v;->c:[B

    aput-byte v5, v0, v4

    .line 134
    aput-byte v7, v0, v6

    return-void
.end method

.method public static a([B)[B
    .locals 13

    .line 1278
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    .line 1279
    rem-int/lit8 v2, v0, 0x18

    .line 1280
    div-int/lit8 v0, v0, 0x18

    if-eqz v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v0, 0x4

    .line 1302
    :goto_0
    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_4

    mul-int/lit8 v6, v4, 0x3

    .line 1315
    aget-byte v7, p0, v6

    add-int/lit8 v8, v6, 0x1

    .line 1316
    aget-byte v8, p0, v8

    add-int/lit8 v6, v6, 0x2

    .line 1317
    aget-byte v6, p0, v6

    and-int/lit8 v9, v8, 0xf

    int-to-byte v9, v9

    and-int/lit8 v10, v7, 0x3

    int-to-byte v10, v10

    and-int/lit8 v11, v7, -0x80

    if-nez v11, :cond_1

    shr-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_1
    shr-int/lit8 v7, v7, 0x2

    xor-int/lit16 v7, v7, 0xc0

    :goto_2
    int-to-byte v7, v7

    and-int/lit8 v11, v8, -0x80

    if-nez v11, :cond_2

    shr-int/lit8 v8, v8, 0x4

    goto :goto_3

    :cond_2
    shr-int/lit8 v8, v8, 0x4

    xor-int/lit16 v8, v8, 0xf0

    :goto_3
    int-to-byte v8, v8

    and-int/lit8 v11, v6, -0x80

    if-nez v11, :cond_3

    shr-int/lit8 v11, v6, 0x6

    goto :goto_4

    :cond_3
    shr-int/lit8 v11, v6, 0x6

    xor-int/lit16 v11, v11, 0xfc

    :goto_4
    int-to-byte v11, v11

    .line 1328
    sget-object v12, Lcom/b/a/v;->c:[B

    aget-byte v7, v12, v7

    aput-byte v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v8, v10

    .line 1332
    aget-byte v8, v12, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x2

    shl-int/lit8 v8, v9, 0x2

    or-int/2addr v8, v11

    .line 1333
    aget-byte v8, v12, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x3

    and-int/lit8 v6, v6, 0x3f

    .line 1334
    aget-byte v6, v12, v6

    aput-byte v6, v3, v7

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    mul-int/lit8 v4, v4, 0x3

    const/16 v0, 0x3d

    if-ne v2, v1, :cond_6

    .line 1354
    aget-byte p0, p0, v4

    and-int/lit8 v1, p0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, p0, -0x80

    if-nez v2, :cond_5

    shr-int/lit8 p0, p0, 0x2

    goto :goto_5

    :cond_5
    shr-int/lit8 p0, p0, 0x2

    xor-int/lit16 p0, p0, 0xc0

    :goto_5
    int-to-byte p0, p0

    .line 1359
    sget-object v2, Lcom/b/a/v;->c:[B

    aget-byte p0, v2, p0

    aput-byte p0, v3, v5

    add-int/lit8 p0, v5, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 1360
    aget-byte v1, v2, v1

    aput-byte v1, v3, p0

    add-int/lit8 p0, v5, 0x2

    .line 1361
    aput-byte v0, v3, p0

    add-int/lit8 v5, v5, 0x3

    .line 1362
    aput-byte v0, v3, v5

    goto :goto_8

    :cond_6
    const/16 v1, 0x10

    if-ne v2, v1, :cond_9

    .line 1365
    aget-byte v1, p0, v4

    add-int/lit8 v4, v4, 0x1

    .line 1366
    aget-byte p0, p0, v4

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    and-int/lit8 v4, v1, 0x3

    int-to-byte v4, v4

    and-int/lit8 v6, v1, -0x80

    if-nez v6, :cond_7

    shr-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_7
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    :goto_6
    int-to-byte v1, v1

    and-int/lit8 v6, p0, -0x80

    if-nez v6, :cond_8

    shr-int/lit8 p0, p0, 0x4

    goto :goto_7

    :cond_8
    shr-int/lit8 p0, p0, 0x4

    xor-int/lit16 p0, p0, 0xf0

    :goto_7
    int-to-byte p0, p0

    .line 1373
    sget-object v6, Lcom/b/a/v;->c:[B

    aget-byte v1, v6, v1

    aput-byte v1, v3, v5

    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr p0, v4

    .line 1374
    aget-byte p0, v6, p0

    aput-byte p0, v3, v1

    add-int/lit8 p0, v5, 0x2

    shl-int/lit8 v1, v2, 0x2

    .line 1375
    aget-byte v1, v6, v1

    aput-byte v1, v3, p0

    add-int/lit8 v5, v5, 0x3

    .line 1376
    aput-byte v0, v3, v5

    :cond_9
    :goto_8
    return-object v3
.end method
