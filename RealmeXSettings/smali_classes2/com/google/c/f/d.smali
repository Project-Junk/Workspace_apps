.class public final Lcom/google/c/f/d;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/c/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([[BI)Lcom/google/c/b/b;
    .locals 7

    .line 134
    new-instance v0, Lcom/google/c/b/b;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/c/b/b;-><init>(II)V

    .line 135
    invoke-virtual {v0}, Lcom/google/c/b/b;->a()V

    .line 8266
    iget v2, v0, Lcom/google/c/b/b;->b:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    move v2, v1

    .line 136
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_2

    move v5, v1

    .line 137
    :goto_1
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 139
    aget-object v6, p0, v2

    aget-byte v6, v6, v5

    if-ne v6, v3, :cond_0

    add-int v6, v5, p1

    .line 140
    invoke-virtual {v0, v6, v4}, Lcom/google/c/b/b;->b(II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a([[B)[[B
    .locals 7

    const/4 v0, 0x0

    .line 151
    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v2, v0

    .line 152
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 155
    array-length v3, p0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    .line 156
    :goto_1
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 157
    aget-object v5, v1, v4

    aget-object v6, p0, v2

    aget-byte v6, v6, v4

    aput-byte v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/c/a;IILjava/util/Map;)Lcom/google/c/b/b;
    .locals 6
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

    .line 47
    sget-object v0, Lcom/google/c/a;->k:Lcom/google/c/a;

    if-ne p2, v0, :cond_a

    .line 51
    new-instance p2, Lcom/google/c/f/c/e;

    invoke-direct {p2}, Lcom/google/c/f/c/e;-><init>()V

    const/16 v0, 0x1e

    if-eqz p5, :cond_3

    .line 55
    sget-object v1, Lcom/google/c/g;->g:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/google/c/g;->g:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1749
    iput-boolean v1, p2, Lcom/google/c/f/c/e;->b:Z

    .line 58
    :cond_0
    sget-object v1, Lcom/google/c/g;->h:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lcom/google/c/g;->h:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/f/c/c;

    .line 2742
    iput-object v1, p2, Lcom/google/c/f/c/e;->c:Lcom/google/c/f/c/c;

    .line 61
    :cond_1
    sget-object v1, Lcom/google/c/g;->i:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Lcom/google/c/g;->i:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/f/c/d;

    .line 3043
    iget v2, v1, Lcom/google/c/f/c/d;->b:I

    .line 4039
    iget v3, v1, Lcom/google/c/f/c/d;->a:I

    .line 4051
    iget v4, v1, Lcom/google/c/f/c/d;->d:I

    .line 5047
    iget v1, v1, Lcom/google/c/f/c/d;->c:I

    .line 5732
    iput v2, p2, Lcom/google/c/f/c/e;->e:I

    .line 5733
    iput v3, p2, Lcom/google/c/f/c/e;->d:I

    .line 5734
    iput v4, p2, Lcom/google/c/f/c/e;->f:I

    .line 5735
    iput v1, p2, Lcom/google/c/f/c/e;->g:I

    .line 68
    :cond_2
    sget-object v1, Lcom/google/c/g;->f:Lcom/google/c/g;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget-object v0, Lcom/google/c/g;->f:Lcom/google/c/g;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 6093
    :cond_3
    invoke-virtual {p2, p1}, Lcom/google/c/f/c/e;->a(Ljava/lang/String;)V

    .line 6535
    iget-object p1, p2, Lcom/google/c/f/c/e;->a:Lcom/google/c/f/c/a;

    const/16 p5, 0x8

    const/4 v1, 0x2

    .line 6097
    invoke-virtual {p1, v1, p5}, Lcom/google/c/f/c/a;->a(II)[[B

    move-result-object p1

    const/4 p5, 0x1

    const/4 v2, 0x0

    if-le p4, p3, :cond_4

    move v3, p5

    goto :goto_0

    :cond_4
    move v3, v2

    .line 6099
    :goto_0
    aget-object v4, p1, v2

    array-length v4, v4

    array-length v5, p1

    if-ge v4, v5, :cond_5

    move v4, p5

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 6100
    invoke-static {p1}, Lcom/google/c/f/d;->a([[B)[[B

    move-result-object p1

    move v3, p5

    goto :goto_2

    :cond_6
    move v3, v2

    .line 6104
    :goto_2
    aget-object v2, p1, v2

    array-length v2, v2

    div-int/2addr p3, v2

    .line 6105
    array-length v2, p1

    div-int/2addr p4, v2

    if-lt p3, p4, :cond_7

    move p3, p4

    :cond_7
    if-le p3, p5, :cond_9

    .line 7535
    iget-object p1, p2, Lcom/google/c/f/c/e;->a:Lcom/google/c/f/c/a;

    mul-int/lit8 p2, p3, 0x2

    mul-int/lit8 p3, p3, 0x4

    mul-int/2addr p3, v1

    .line 6115
    invoke-virtual {p1, p2, p3}, Lcom/google/c/f/c/a;->a(II)[[B

    move-result-object p1

    if-eqz v3, :cond_8

    .line 6118
    invoke-static {p1}, Lcom/google/c/f/d;->a([[B)[[B

    move-result-object p1

    .line 6120
    :cond_8
    invoke-static {p1, v0}, Lcom/google/c/f/d;->a([[BI)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 6122
    :cond_9
    invoke-static {p1, v0}, Lcom/google/c/f/d;->a([[BI)Lcom/google/c/b/b;

    move-result-object p1

    return-object p1

    .line 48
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode PDF_417, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
