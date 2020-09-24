.class public final Lcom/google/c/g/a/e;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/c/b/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/c/b/b/c;

    sget-object v1, Lcom/google/c/b/b/a;->e:Lcom/google/c/b/b/a;

    invoke-direct {v0, v1}, Lcom/google/c/b/b/c;-><init>(Lcom/google/c/b/b/a;)V

    iput-object v0, p0, Lcom/google/c/g/a/e;->a:Lcom/google/c/b/b/c;

    return-void
.end method

.method private a(Lcom/google/c/g/a/a;Ljava/util/Map;)Lcom/google/c/b/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/g/a/a;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/b/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/google/c/g/a/a;->b()Lcom/google/c/g/a/j;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/google/c/g/a/a;->a()Lcom/google/c/g/a/g;

    move-result-object v1

    .line 4150
    iget-object v1, v1, Lcom/google/c/g/a/g;->a:Lcom/google/c/g/a/f;

    .line 157
    invoke-virtual {p1}, Lcom/google/c/g/a/a;->c()[B

    move-result-object p1

    .line 159
    invoke-static {p1, v0, v1}, Lcom/google/c/g/a/b;->a([BLcom/google/c/g/a/j;Lcom/google/c/g/a/f;)[Lcom/google/c/g/a/b;

    move-result-object p1

    .line 163
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 5115
    iget v6, v6, Lcom/google/c/g/a/b;->a:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-array v2, v5, [B

    .line 170
    array-length v4, p1

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    .line 5119
    iget-object v8, v7, Lcom/google/c/g/a/b;->b:[B

    .line 6115
    iget v7, v7, Lcom/google/c/g/a/b;->a:I

    .line 173
    invoke-direct {p0, v8, v7}, Lcom/google/c/g/a/e;->a([BI)V

    move v9, v6

    move v6, v3

    :goto_2
    if-ge v6, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 175
    aget-byte v11, v8, v6

    aput-byte v11, v2, v9

    add-int/lit8 v6, v6, 0x1

    move v9, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_1

    .line 180
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/google/c/g/a/d;->a([BLcom/google/c/g/a/j;Lcom/google/c/g/a/f;Ljava/util/Map;)Lcom/google/c/b/e;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/d;
        }
    .end annotation

    .line 192
    array-length v0, p1

    .line 194
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 196
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 200
    :try_start_0
    iget-object v3, p0, Lcom/google/c/g/a/e;->a:Lcom/google/c/b/b/c;

    invoke-virtual {v3, v1, v0}, Lcom/google/c/b/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/c/b/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 207
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 202
    :catch_0
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/c/b/b;Ljava/util/Map;)Lcom/google/c/b/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/b;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/b/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/c/g/a/a;

    invoke-direct {v0, p1}, Lcom/google/c/g/a/a;-><init>(Lcom/google/c/b/b;)V

    const/4 p1, 0x0

    .line 91
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/c/g/a/e;->a(Lcom/google/c/g/a/a;Ljava/util/Map;)Lcom/google/c/b/e;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/c/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/c/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    .line 1211
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/google/c/g/a/a;->c:Lcom/google/c/g/a/g;

    if-eqz v3, :cond_0

    .line 1214
    iget-object v3, v0, Lcom/google/c/g/a/a;->c:Lcom/google/c/g/a/g;

    .line 2154
    iget-byte v3, v3, Lcom/google/c/g/a/g;->b:B

    .line 1214
    invoke-static {v3}, Lcom/google/c/g/a/c;->a(I)Lcom/google/c/g/a/c;

    move-result-object v3

    .line 1215
    iget-object v4, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    .line 2266
    iget v4, v4, Lcom/google/c/b/b;->b:I

    .line 1216
    iget-object v5, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v3, v5, v4}, Lcom/google/c/g/a/c;->a(Lcom/google/c/b/b;I)V

    .line 3228
    :cond_0
    iput-object p1, v0, Lcom/google/c/g/a/a;->b:Lcom/google/c/g/a/j;

    .line 3229
    iput-object p1, v0, Lcom/google/c/g/a/a;->c:Lcom/google/c/g/a/g;

    const/4 p1, 0x1

    .line 3230
    iput-boolean p1, v0, Lcom/google/c/g/a/a;->d:Z

    .line 107
    invoke-virtual {v0}, Lcom/google/c/g/a/a;->b()Lcom/google/c/g/a/j;

    .line 110
    invoke-virtual {v0}, Lcom/google/c/g/a/a;->a()Lcom/google/c/g/a/g;

    const/4 p1, 0x0

    .line 3235
    :goto_1
    iget-object v3, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    .line 3259
    iget v3, v3, Lcom/google/c/b/b;->a:I

    if-ge p1, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    move v4, v3

    .line 3236
    :goto_2
    iget-object v5, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    .line 3266
    iget v5, v5, Lcom/google/c/b/b;->b:I

    if-ge v4, v5, :cond_2

    .line 3237
    iget-object v5, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/c/b/b;->a(II)Z

    move-result v5

    iget-object v6, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v6, v4, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 3238
    iget-object v5, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v5, v4, p1}, Lcom/google/c/b/b;->c(II)V

    .line 3239
    iget-object v5, v0, Lcom/google/c/g/a/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/c/b/b;->c(II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_1

    .line 121
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/google/c/g/a/e;->a(Lcom/google/c/g/a/a;Ljava/util/Map;)Lcom/google/c/b/e;

    move-result-object p1

    .line 124
    new-instance p2, Lcom/google/c/g/a/i;

    invoke-direct {p2}, Lcom/google/c/g/a/i;-><init>()V

    .line 4085
    iput-object p2, p1, Lcom/google/c/b/e;->g:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/c/h; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/c/d; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    .line 144
    throw v2

    .line 146
    :cond_4
    throw p1

    .line 141
    :cond_5
    throw v1

    :catch_3
    move-exception p1

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    .line 134
    throw v2

    .line 136
    :cond_6
    throw p1

    .line 131
    :cond_7
    throw v1
.end method
