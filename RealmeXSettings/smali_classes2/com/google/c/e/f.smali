.class public final Lcom/google/c/e/f;
.super Lcom/google/c/e/r;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/c/e/r;-><init>()V

    return-void
.end method

.method private static a(I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int v2, v1, v0

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    .line 85
    :goto_1
    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/c/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/c/g;",
            "*>;)",
            "Lcom/google/c/b/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/c/a;->c:Lcom/google/c/a;

    if-ne p2, v0, :cond_0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/c/e/r;->a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode CODE_39, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .locals 11

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    const/16 v1, 0x9

    .line 53
    new-array v2, v1, [I

    add-int/lit8 v3, v0, 0x19

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    if-ge v3, v0, :cond_2

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 60
    sget-object v7, Lcom/google/c/e/e;->a:[I

    aget v6, v7, v6

    invoke-static {v6, v2}, Lcom/google/c/e/f;->a(I[I)V

    move v6, v5

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_0

    .line 61
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bad contents: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-array v1, v5, [Z

    .line 66
    sget-object v3, Lcom/google/c/e/e;->a:[I

    const/16 v5, 0x27

    aget v3, v3, v5

    invoke-static {v3, v2}, Lcom/google/c/e/f;->a(I[I)V

    const/4 v3, 0x1

    .line 67
    invoke-static {v1, v4, v2, v3}, Lcom/google/c/e/f;->a([ZI[IZ)I

    move-result v7

    .line 68
    new-array v8, v3, [I

    aput v3, v8, v4

    .line 69
    invoke-static {v1, v7, v8, v4}, Lcom/google/c/e/f;->a([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_3

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 73
    sget-object v10, Lcom/google/c/e/e;->a:[I

    aget v9, v10, v9

    invoke-static {v9, v2}, Lcom/google/c/e/f;->a(I[I)V

    .line 74
    invoke-static {v1, v7, v2, v3}, Lcom/google/c/e/f;->a([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    .line 75
    invoke-static {v1, v7, v8, v4}, Lcom/google/c/e/f;->a([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 77
    :cond_3
    sget-object p1, Lcom/google/c/e/e;->a:[I

    aget p1, p1, v5

    invoke-static {p1, v2}, Lcom/google/c/e/f;->a(I[I)V

    .line 78
    invoke-static {v1, v7, v2, v3}, Lcom/google/c/e/f;->a([ZI[IZ)I

    return-object v1

    .line 49
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
