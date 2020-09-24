.class public final Lcom/google/c/g/b;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/c/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/c/g/c/f;III)Lcom/google/c/b/b;
    .locals 9

    .line 1058
    iget-object p0, p0, Lcom/google/c/g/c/f;->e:Lcom/google/c/g/c/b;

    if-eqz p0, :cond_3

    .line 2042
    iget v0, p0, Lcom/google/c/g/c/b;->b:I

    .line 3038
    iget v1, p0, Lcom/google/c/g/c/b;->c:I

    const/4 v2, 0x1

    shl-int/2addr p3, v2

    add-int v3, v0, p3

    add-int/2addr p3, v1

    .line 95
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 96
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 98
    div-int v3, p1, v3

    div-int p3, p2, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v3, v0, p3

    sub-int v3, p1, v3

    .line 103
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, p3

    sub-int v4, p2, v4

    .line 104
    div-int/lit8 v4, v4, 0x2

    .line 106
    new-instance v5, Lcom/google/c/b/b;

    invoke-direct {v5, p1, p2}, Lcom/google/c/b/b;-><init>(II)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v1, :cond_2

    move v6, p1

    move v7, v3

    :goto_1
    if-ge v6, v0, :cond_1

    .line 111
    invoke-virtual {p0, v6, p2}, Lcom/google/c/g/c/b;->a(II)B

    move-result v8

    if-ne v8, v2, :cond_0

    .line 112
    invoke-virtual {v5, v7, v4, p3, p3}, Lcom/google/c/b/b;->a(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, p3

    goto :goto_0

    :cond_2
    return-object v5

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;
    .locals 2
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

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 58
    sget-object v0, Lcom/google/c/a;->l:Lcom/google/c/a;

    if-ne p2, v0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 67
    sget-object p2, Lcom/google/c/g/a/f;->a:Lcom/google/c/g/a/f;

    const/4 v0, 0x4

    if-eqz p5, :cond_1

    .line 70
    sget-object v1, Lcom/google/c/g;->a:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/g/a/f;

    if-eqz v1, :cond_0

    move-object p2, v1

    .line 74
    :cond_0
    sget-object v1, Lcom/google/c/g;->f:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    :cond_1
    invoke-static {p1, p2, p5}, Lcom/google/c/g/c/c;->a(Ljava/lang/String;Lcom/google/c/g/a/f;Ljava/util/Map;)Lcom/google/c/g/c/f;

    move-result-object p1

    .line 81
    invoke-static {p1, p3, p4, v0}, Lcom/google/c/g/b;->a(Lcom/google/c/g/c/f;III)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions are too small: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode QR_CODE, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
