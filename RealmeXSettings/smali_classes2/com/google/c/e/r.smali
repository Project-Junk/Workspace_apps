.class public abstract Lcom/google/c/e/r;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/c/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([ZI[IZ)I
    .locals 7

    .line 106
    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    move v3, p3

    move p1, v1

    move p3, p1

    :goto_0
    if-ge p1, v0, :cond_2

    aget v4, p2, p1

    move v5, v2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 108
    aput-boolean v3, p0, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_1

    :cond_0
    add-int/2addr p3, v4

    if-nez v3, :cond_1

    const/4 v2, 0x1

    move v3, v2

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move v2, v5

    goto :goto_0

    :cond_2
    return p3
.end method

.method private static a([ZIII)Lcom/google/c/b/b;
    .locals 5

    .line 78
    array-length v0, p0

    add-int/2addr p3, v0

    .line 81
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    .line 82
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 84
    div-int p3, p1, p3

    mul-int v1, v0, p3

    sub-int v1, p1, v1

    .line 85
    div-int/lit8 v1, v1, 0x2

    .line 87
    new-instance v2, Lcom/google/c/b/b;

    invoke-direct {v2, p1, p2}, Lcom/google/c/b/b;-><init>(II)V

    const/4 p1, 0x0

    move v3, v1

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    aget-boolean v4, p0, v1

    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v2, v3, p1, p3, p2}, Lcom/google/c/b/b;->a(IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, p3

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;
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

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/google/c/e/r;->a()I

    move-result p2

    if-eqz p5, :cond_0

    .line 64
    sget-object v0, Lcom/google/c/g;->f:Lcom/google/c/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    if-eqz p5, :cond_0

    .line 66
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/c/e/r;->a(Ljava/lang/String;)[Z

    move-result-object p1

    .line 71
    invoke-static {p1, p3, p4, p2}, Lcom/google/c/e/r;->a([ZIII)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Negative size is not allowed. Input: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Ljava/lang/String;)[Z
.end method
