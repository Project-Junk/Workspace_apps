.class public final Lcom/google/c/c/a/d;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/c/b/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/c/b/b/c;

    sget-object v1, Lcom/google/c/b/b/a;->f:Lcom/google/c/b/b/a;

    invoke-direct {v0, v1}, Lcom/google/c/b/b/c;-><init>(Lcom/google/c/b/b/a;)V

    iput-object v0, p0, Lcom/google/c/c/a/d;->a:Lcom/google/c/b/b/c;

    return-void
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/d;
        }
    .end annotation

    .line 117
    array-length v0, p1

    .line 119
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 121
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/google/c/c/a/d;->a:Lcom/google/c/b/b/c;

    invoke-virtual {v3, v1, v0}, Lcom/google/c/b/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/c/b/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 132
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 127
    :catch_0
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/c/b/b;)Lcom/google/c/b/e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/c/c/a/a;

    invoke-direct {v0, p1}, Lcom/google/c/c/a/a;-><init>(Lcom/google/c/b/b;)V

    .line 1047
    iget-object p1, v0, Lcom/google/c/c/a/a;->a:Lcom/google/c/c/a/e;

    .line 79
    invoke-virtual {v0}, Lcom/google/c/c/a/a;->a()[B

    move-result-object v0

    .line 81
    invoke-static {v0, p1}, Lcom/google/c/c/a/b;->a([BLcom/google/c/c/a/e;)[Lcom/google/c/c/a/b;

    move-result-object p1

    .line 83
    array-length v0, p1

    .line 87
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p1, v3

    .line 1110
    iget v5, v5, Lcom/google/c/c/a/b;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-array v1, v4, [B

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 94
    aget-object v4, p1, v3

    .line 1114
    iget-object v5, v4, Lcom/google/c/c/a/b;->b:[B

    .line 2110
    iget v4, v4, Lcom/google/c/c/a/b;->a:I

    .line 97
    invoke-direct {p0, v5, v4}, Lcom/google/c/c/a/d;->a([BI)V

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_1

    mul-int v7, v6, v0

    add-int/2addr v7, v3

    .line 100
    aget-byte v8, v5, v6

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v1}, Lcom/google/c/c/a/c;->a([B)Lcom/google/c/b/e;

    move-result-object p1

    return-object p1
.end method
