.class public final Lcom/google/android/a/a/b;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    .line 37
    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/a/a/b;->a:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    sget-object v2, Lcom/google/android/a/a/b;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 45
    sget-object v1, Lcom/google/android/a/a/b;->a:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 48
    sget-object v1, Lcom/google/android/a/a/b;->a:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 51
    sget-object v1, Lcom/google/android/a/a/b;->a:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 54
    :cond_3
    sget-object v0, Lcom/google/android/a/a/b;->a:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    .line 55
    aput-byte v2, v0, v1

    return-void
.end method

.method public static a([B)[B
    .locals 11

    .line 1152
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 1155
    :goto_0
    array-length v4, p0

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ge v2, v4, :cond_2

    .line 1156
    aget-byte v4, p0, v2

    if-eq v4, v5, :cond_0

    .line 2135
    sget-object v5, Lcom/google/android/a/a/b;->a:[B

    aget-byte v4, v5, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move v6, v1

    :cond_0
    if-eqz v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 1157
    aget-byte v5, p0, v2

    aput-byte v5, v0, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    :cond_2
    new-array p0, v3, [B

    .line 1163
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length v0, p0

    if-nez v0, :cond_3

    .line 70
    new-array p0, v1, [B

    return-object p0

    .line 73
    :cond_3
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 83
    array-length v2, p0

    :cond_4
    add-int/lit8 v3, v2, -0x1

    .line 85
    aget-byte v3, p0, v3

    if-ne v3, v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    .line 87
    new-array p0, v1, [B

    return-object p0

    :cond_5
    sub-int/2addr v2, v0

    .line 90
    new-array v2, v2, [B

    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_9

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v7, v4, 0x2

    .line 95
    aget-byte v7, p0, v7

    add-int/lit8 v8, v4, 0x3

    .line 96
    aget-byte v8, p0, v8

    .line 98
    sget-object v9, Lcom/google/android/a/a/b;->a:[B

    aget-byte v10, p0, v4

    aget-byte v10, v9, v10

    add-int/2addr v4, v6

    .line 99
    aget-byte v4, p0, v4

    aget-byte v4, v9, v4

    if-eq v7, v5, :cond_6

    if-eq v8, v5, :cond_6

    .line 103
    aget-byte v7, v9, v7

    .line 104
    aget-byte v8, v9, v8

    shl-int/lit8 v9, v10, 0x2

    shr-int/lit8 v10, v4, 0x4

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .line 106
    aput-byte v9, v2, v3

    add-int/lit8 v9, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v10, v7, 0x2

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v4, v10

    int-to-byte v4, v4

    .line 107
    aput-byte v4, v2, v9

    add-int/lit8 v4, v3, 0x2

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 109
    aput-byte v7, v2, v4

    goto :goto_2

    :cond_6
    if-ne v7, v5, :cond_7

    shl-int/lit8 v7, v10, 0x2

    shr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    .line 112
    aput-byte v4, v2, v3

    goto :goto_2

    :cond_7
    if-ne v8, v5, :cond_8

    .line 115
    sget-object v8, Lcom/google/android/a/a/b;->a:[B

    aget-byte v7, v8, v7

    shl-int/lit8 v8, v10, 0x2

    shr-int/lit8 v9, v4, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    .line 117
    aput-byte v8, v2, v3

    add-int/lit8 v8, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v4, v7

    int-to-byte v4, v4

    .line 118
    aput-byte v4, v2, v8

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return-object v2
.end method
