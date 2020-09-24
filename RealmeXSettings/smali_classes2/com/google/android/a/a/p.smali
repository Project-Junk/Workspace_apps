.class public final Lcom/google/android/a/a/p;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static a:B = 0x3dt


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a([B)[B
    .locals 6

    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 44
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 45
    aget-byte v2, p0, v1

    .line 46
    sget-byte v3, Lcom/google/android/a/a/p;->a:B

    if-ne v2, v3, :cond_3

    const/16 v2, 0xd

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    .line 48
    :try_start_0
    aget-byte v5, p0, v3

    int-to-char v5, v5

    if-ne v2, v5, :cond_0

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0x2

    aget-byte v5, p0, v1

    int-to-char v5, v5

    if-ne v2, v5, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    aget-byte v1, p0, v3

    int-to-char v1, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    .line 54
    aget-byte v5, p0, v3

    int-to-char v5, v5

    invoke-static {v5, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_2

    :catch_0
    :cond_2
    :goto_1
    return-object v4

    .line 63
    :cond_3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
