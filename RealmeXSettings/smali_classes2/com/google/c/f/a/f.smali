.class final Lcom/google/c/f/a/f;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# instance fields
.field final a:Lcom/google/c/f/a/a;

.field final b:[Lcom/google/c/f/a/g;

.field c:Lcom/google/c/f/a/c;

.field final d:I


# direct methods
.method constructor <init>(Lcom/google/c/f/a/a;Lcom/google/c/f/a/c;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 1039
    iget p1, p1, Lcom/google/c/f/a/a;->a:I

    .line 37
    iput p1, p0, Lcom/google/c/f/a/f;->d:I

    .line 38
    iput-object p2, p0, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    .line 39
    iget p1, p0, Lcom/google/c/f/a/f;->d:I

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/google/c/f/a/g;

    iput-object p1, p0, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    return-void
.end method

.method static a(IILcom/google/c/f/a/d;)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    .line 175
    :cond_0
    invoke-virtual {p2}, Lcom/google/c/f/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p2, p0}, Lcom/google/c/f/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9076
    iput p0, p2, Lcom/google/c/f/a/d;->e:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method final a(Lcom/google/c/f/a/g;)V
    .locals 13

    if-eqz p1, :cond_f

    .line 56
    check-cast p1, Lcom/google/c/f/a/h;

    iget-object v0, p0, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 2081
    iget-object v1, p1, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 3081
    iget-object v2, p1, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 3035
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    .line 3037
    invoke-virtual {v6}, Lcom/google/c/f/a/d;->b()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1049
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/google/c/f/a/h;->a([Lcom/google/c/f/a/d;Lcom/google/c/f/a/a;)V

    .line 4077
    iget-object v2, p1, Lcom/google/c/f/a/g;->a:Lcom/google/c/f/a/c;

    .line 1051
    iget-boolean v3, p1, Lcom/google/c/f/a/h;->c:Z

    if-eqz v3, :cond_2

    .line 4161
    iget-object v3, v2, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    goto :goto_1

    .line 4165
    :cond_2
    iget-object v3, v2, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    .line 1052
    :goto_1
    iget-boolean v5, p1, Lcom/google/c/f/a/h;->c:Z

    if-eqz v5, :cond_3

    .line 4169
    iget-object v2, v2, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    goto :goto_2

    .line 4173
    :cond_3
    iget-object v2, v2, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    .line 5042
    :goto_2
    iget v3, v3, Lcom/google/c/q;->b:F

    float-to-int v3, v3

    .line 1053
    invoke-virtual {p1, v3}, Lcom/google/c/f/a/h;->b(I)I

    move-result v3

    .line 6042
    iget v2, v2, Lcom/google/c/q;->b:F

    float-to-int v2, v2

    .line 1054
    invoke-virtual {p1, v2}, Lcom/google/c/f/a/h;->b(I)I

    move-result p1

    const/4 v2, -0x1

    const/4 v5, 0x1

    move v6, v4

    move v7, v5

    :goto_3
    if-ge v3, p1, :cond_f

    .line 1062
    aget-object v8, v1, v3

    if-eqz v8, :cond_e

    .line 1065
    aget-object v8, v1, v3

    .line 6072
    iget v9, v8, Lcom/google/c/f/a/d;->e:I

    sub-int/2addr v9, v2

    if-nez v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_4
    if-ne v9, v5, :cond_5

    .line 1082
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7072
    iget v6, v8, Lcom/google/c/f/a/d;->e:I

    move v7, v2

    move v2, v6

    :goto_4
    move v6, v5

    goto :goto_8

    :cond_5
    const/4 v10, 0x0

    if-gez v9, :cond_6

    .line 1086
    aput-object v10, v1, v3

    goto :goto_8

    .line 8072
    :cond_6
    iget v11, v8, Lcom/google/c/f/a/d;->e:I

    .line 9047
    iget v12, v0, Lcom/google/c/f/a/a;->e:I

    if-lt v11, v12, :cond_7

    .line 1088
    aput-object v10, v1, v3

    goto :goto_8

    :cond_7
    if-le v9, v3, :cond_8

    .line 1090
    aput-object v10, v1, v3

    goto :goto_8

    :cond_8
    const/4 v11, 0x2

    if-le v7, v11, :cond_9

    add-int/lit8 v11, v7, -0x2

    mul-int/2addr v9, v11

    :cond_9
    if-lt v9, v3, :cond_a

    move v11, v5

    goto :goto_5

    :cond_a
    move v11, v4

    :goto_5
    move v12, v11

    move v11, v5

    :goto_6
    if-gt v11, v9, :cond_c

    if-nez v12, :cond_c

    sub-int v12, v3, v11

    .line 1102
    aget-object v12, v1, v12

    if-eqz v12, :cond_b

    move v12, v5

    goto :goto_7

    :cond_b
    move v12, v4

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    if-eqz v12, :cond_d

    .line 1105
    aput-object v10, v1, v3

    goto :goto_8

    .line 9072
    :cond_d
    iget v2, v8, Lcom/google/c/f/a/d;->e:I

    goto :goto_4

    :cond_e
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 270
    iget-object v0, p0, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 272
    iget v2, p0, Lcom/google/c/f/a/f;->d:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 274
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    move v4, v1

    .line 9081
    :goto_0
    iget-object v5, v2, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 275
    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 276
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "CW %3d:"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v1

    .line 277
    :goto_1
    iget v6, p0, Lcom/google/c/f/a/f;->d:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 278
    iget-object v6, p0, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v8, v6, v5

    const-string v9, "    |   "

    if-nez v8, :cond_1

    .line 279
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 282
    :cond_1
    aget-object v6, v6, v5

    .line 10081
    iget-object v6, v6, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 282
    aget-object v6, v6, v4

    if-nez v6, :cond_2

    .line 284
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 287
    :cond_2
    new-array v7, v7, [Ljava/lang/Object;

    .line 11072
    iget v8, v6, Lcom/google/c/f/a/d;->e:I

    .line 287
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 12068
    iget v6, v6, Lcom/google/c/f/a/d;->d:I

    .line 287
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, " %3d|%3d"

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 289
    :cond_3
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\n"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1
.end method
