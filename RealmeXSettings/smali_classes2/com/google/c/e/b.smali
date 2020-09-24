.class public final Lcom/google/c/e/b;
.super Lcom/google/c/e/r;
.source "CodaBarWriter.java"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 28
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/c/e/b;->a:[C

    .line 29
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/c/e/b;->b:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/c/e/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[Z
    .locals 10

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 40
    sget-object v4, Lcom/google/c/e/b;->a:[C

    invoke-static {v4, v1}, Lcom/google/c/e/a;->a([CC)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/c/e/b;->a:[C

    invoke-static {v4, v2}, Lcom/google/c/e/a;->a([CC)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    .line 43
    :goto_0
    sget-object v5, Lcom/google/c/e/b;->b:[C

    invoke-static {v5, v1}, Lcom/google/c/e/a;->a([CC)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/c/e/b;->b:[C

    invoke-static {v1, v2}, Lcom/google/c/e/a;->a([CC)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Codabar should start/end with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/c/e/b;->a:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or start/end with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/c/e/b;->b:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    const/16 v1, 0x14

    const/4 v2, 0x4

    .line 54
    new-array v2, v2, [C

    fill-array-data v2, :array_0

    move v4, v1

    move v1, v3

    .line 55
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_7

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-ne v5, v6, :cond_4

    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v2, v5}, Lcom/google/c/e/a;->a([CC)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0xa

    goto :goto_5

    .line 63
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot encode : \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x9

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 67
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/2addr v4, v1

    .line 69
    new-array v1, v4, [Z

    move v2, v0

    move v4, v2

    .line 71
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_13

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v2, v6, :cond_c

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_b

    const/16 v6, 0x45

    if-eq v5, v6, :cond_a

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_9

    const/16 v6, 0x54

    if-eq v5, v6, :cond_8

    goto :goto_7

    :cond_8
    const/16 v5, 0x41

    goto :goto_7

    :cond_9
    const/16 v5, 0x42

    goto :goto_7

    :cond_a
    const/16 v5, 0x44

    goto :goto_7

    :cond_b
    const/16 v5, 0x43

    :cond_c
    :goto_7
    move v6, v0

    .line 91
    :goto_8
    sget-object v7, Lcom/google/c/e/a;->a:[C

    array-length v7, v7

    if-ge v6, v7, :cond_e

    .line 93
    sget-object v7, Lcom/google/c/e/a;->a:[C

    aget-char v7, v7, v6

    if-ne v5, v7, :cond_d

    .line 94
    sget-object v5, Lcom/google/c/e/a;->b:[I

    aget v5, v5, v6

    goto :goto_9

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    move v5, v0

    :goto_9
    move v8, v0

    move v7, v3

    move v6, v4

    move v4, v8

    :goto_a
    const/4 v9, 0x7

    if-ge v4, v9, :cond_11

    .line 102
    aput-boolean v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    rsub-int/lit8 v9, v4, 0x6

    shr-int v9, v5, v9

    and-int/2addr v9, v3

    if-eqz v9, :cond_10

    if-ne v8, v3, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    move v8, v0

    goto :goto_a

    .line 112
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_12

    .line 113
    aput-boolean v0, v1, v6

    add-int/lit8 v6, v6, 0x1

    :cond_12
    move v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return-object v1

    .line 35
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Codabar should start/end with start/stop symbols"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method
