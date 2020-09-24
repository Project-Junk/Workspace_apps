.class public abstract Lcom/google/c/e/x;
.super Lcom/google/c/e/q;
.source "UPCEANReader.java"


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[[I

.field static final e:[[I


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final f:Lcom/google/c/e/w;

.field private final g:Lcom/google/c/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    .line 53
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/c/e/x;->b:[I

    const/4 v1, 0x5

    .line 58
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/c/e/x;->c:[I

    const/16 v2, 0xa

    .line 63
    new-array v3, v2, [[I

    const/4 v4, 0x4

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x2

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    aput-object v0, v3, v4

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/4 v1, 0x6

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/4 v1, 0x7

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v1, 0x8

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v1, 0x9

    aput-object v0, v3, v1

    sput-object v3, Lcom/google/c/e/x;->d:[[I

    const/16 v0, 0x14

    .line 82
    new-array v1, v0, [[I

    sput-object v1, Lcom/google/c/e/x;->e:[[I

    .line 83
    sget-object v1, Lcom/google/c/e/x;->d:[[I

    sget-object v3, Lcom/google/c/e/x;->e:[[I

    invoke-static {v1, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v2, v0, :cond_1

    .line 85
    sget-object v1, Lcom/google/c/e/x;->d:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v1, v1, v3

    .line 86
    array-length v3, v1

    new-array v3, v3, [I

    move v4, v6

    .line 87
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 88
    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v7

    aget v5, v1, v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_0
    sget-object v1, Lcom/google/c/e/x;->e:[[I

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/google/c/e/q;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/c/e/x;->a:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lcom/google/c/e/w;

    invoke-direct {v0}, Lcom/google/c/e/w;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/x;->f:Lcom/google/c/e/w;

    .line 101
    new-instance v0, Lcom/google/c/e/l;

    invoke-direct {v0}, Lcom/google/c/e/l;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/x;->g:Lcom/google/c/e/l;

    return-void
.end method

.method static a(Lcom/google/c/b/a;[II[[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 322
    invoke-static {p0, p2, p1}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;I[I)V

    .line 325
    array-length p0, p3

    const/16 p2, 0x7a

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 327
    aget-object v2, p3, v1

    const/16 v3, 0xb3

    .line 328
    invoke-static {p1, v2, v3}, Lcom/google/c/e/x;->a([I[II)I

    move-result v2

    if-ge v2, p2, :cond_0

    move v0, v1

    move p2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    .line 337
    :cond_2
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    .line 228
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x2

    move v3, v1

    :goto_0
    const/16 v4, 0x9

    if-ltz v2, :cond_2

    .line 235
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_1

    if-gt v5, v4, :cond_1

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    :cond_2
    mul-int/lit8 v3, v3, 0x3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_4

    .line 243
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_3

    if-gt v5, v4, :cond_3

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 245
    :cond_3
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 249
    :cond_4
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method static a(Lcom/google/c/b/a;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/google/c/e/x;->b:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    .line 110
    sget-object v3, Lcom/google/c/e/x;->b:[I

    array-length v3, v3

    invoke-static {v0, v1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v3, Lcom/google/c/e/x;->b:[I

    invoke-static {p0, v4, v1, v3, v0}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;IZ[I[I)[I

    move-result-object v3

    .line 112
    aget v4, v3, v1

    const/4 v5, 0x1

    .line 113
    aget v5, v3, v5

    sub-int v6, v5, v4

    sub-int v6, v4, v6

    if-ltz v6, :cond_0

    .line 119
    invoke-virtual {p0, v6, v4}, Lcom/google/c/b/a;->a(II)Z

    move-result v2

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method static a(Lcom/google/c/b/a;IZ[I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 260
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;IZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/c/b/a;IZ[I[I)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 279
    array-length v0, p3

    .line 4040
    iget v1, p0, Lcom/google/c/b/a;->b:I

    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->d(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->c(I)I

    move-result p1

    :goto_0
    const/4 v2, 0x0

    move v4, p1

    move v3, v2

    :goto_1
    if-ge p1, v1, :cond_5

    .line 286
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->a(I)Z

    move-result v5

    xor-int/2addr v5, p2

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 287
    aget v5, p4, v3

    add-int/2addr v5, v6

    aput v5, p4, v3

    goto :goto_4

    :cond_1
    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_3

    const/16 v7, 0xb3

    .line 290
    invoke-static {p4, p3, v7}, Lcom/google/c/e/x;->a([I[II)I

    move-result v7

    const/16 v8, 0x7a

    const/4 v9, 0x2

    if-ge v7, v8, :cond_2

    .line 291
    new-array p0, v9, [I

    aput v4, p0, v2

    aput p1, p0, v6

    return-object p0

    .line 293
    :cond_2
    aget v7, p4, v2

    aget v8, p4, v6

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    add-int/lit8 v7, v0, -0x2

    .line 294
    invoke-static {p4, v9, p4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    aput v2, p4, v7

    .line 296
    aput v2, p4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 301
    :goto_2
    aput v6, p4, v3

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    move p2, v6

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 305
    :cond_5
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/c/b/a;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation
.end method

.method public a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation

    .line 128
    invoke-static {p2}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/c/e/x;->a(ILcom/google/c/b/a;[ILjava/util/Map;)Lcom/google/c/o;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/c/b/a;[ILjava/util/Map;)Lcom/google/c/o;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 142
    :cond_0
    sget-object v1, Lcom/google/c/e;->j:Lcom/google/c/e;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/c/r;

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 146
    new-instance v4, Lcom/google/c/q;

    aget v5, p3, v3

    aget v6, p3, v2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v1

    int-to-float v6, p1

    invoke-direct {v4, v5, v6}, Lcom/google/c/q;-><init>(FF)V

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/google/c/e/x;->a:Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    invoke-virtual {p0, p2, p3, v4}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;[ILjava/lang/StringBuilder;)I

    move-result v5

    if-eqz p4, :cond_2

    .line 156
    new-instance v6, Lcom/google/c/q;

    int-to-float v7, v5

    int-to-float v8, p1

    invoke-direct {v6, v7, v8}, Lcom/google/c/q;-><init>(FF)V

    .line 161
    :cond_2
    invoke-virtual {p0, p2, v5}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;I)[I

    move-result-object v5

    if-eqz p4, :cond_3

    .line 164
    new-instance p4, Lcom/google/c/q;

    aget v6, v5, v3

    aget v7, v5, v2

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v1

    int-to-float v7, p1

    invoke-direct {p4, v6, v7}, Lcom/google/c/q;-><init>(FF)V

    .line 172
    :cond_3
    aget p4, v5, v2

    .line 173
    aget v6, v5, v3

    sub-int v6, p4, v6

    add-int/2addr v6, p4

    .line 1040
    iget v7, p2, Lcom/google/c/b/a;->b:I

    if-ge v6, v7, :cond_c

    .line 174
    invoke-virtual {p2, p4, v6}, Lcom/google/c/b/a;->a(II)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 179
    invoke-virtual {p0, p4}, Lcom/google/c/e/x;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 183
    aget v4, p3, v2

    aget p3, p3, v3

    add-int/2addr v4, p3

    int-to-float p3, v4

    div-float/2addr p3, v1

    .line 184
    aget v4, v5, v2

    aget v6, v5, v3

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 185
    invoke-virtual {p0}, Lcom/google/c/e/x;->b()Lcom/google/c/a;

    move-result-object v1

    .line 186
    new-instance v6, Lcom/google/c/o;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/c/q;

    new-instance v8, Lcom/google/c/q;

    int-to-float v9, p1

    invoke-direct {v8, p3, v9}, Lcom/google/c/q;-><init>(FF)V

    aput-object v8, v7, v3

    new-instance p3, Lcom/google/c/q;

    invoke-direct {p3, v4, v9}, Lcom/google/c/q;-><init>(FF)V

    aput-object p3, v7, v2

    invoke-direct {v6, p4, v0, v7, v1}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 194
    :try_start_0
    iget-object p3, p0, Lcom/google/c/e/x;->f:Lcom/google/c/e/w;

    aget v4, v5, v2

    invoke-virtual {p3, p1, p2, v4}, Lcom/google/c/e/w;->a(ILcom/google/c/b/a;I)Lcom/google/c/o;

    move-result-object p1

    .line 195
    sget-object p2, Lcom/google/c/p;->h:Lcom/google/c/p;

    .line 1060
    iget-object p3, p1, Lcom/google/c/o;->a:Ljava/lang/String;

    .line 195
    invoke-virtual {v6, p2, p3}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 1092
    iget-object p2, p1, Lcom/google/c/o;->e:Ljava/util/Map;

    .line 196
    invoke-virtual {v6, p2}, Lcom/google/c/o;->a(Ljava/util/Map;)V

    .line 2076
    iget-object p1, p1, Lcom/google/c/o;->c:[Lcom/google/c/q;

    .line 2113
    iget-object p2, v6, Lcom/google/c/o;->c:[Lcom/google/c/q;

    if-nez p2, :cond_4

    .line 2115
    iput-object p1, v6, Lcom/google/c/o;->c:[Lcom/google/c/q;

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 2116
    array-length p3, p1

    if-lez p3, :cond_5

    .line 2117
    array-length p3, p2

    array-length v4, p1

    add-int/2addr p3, v4

    new-array p3, p3, [Lcom/google/c/q;

    .line 2118
    array-length v4, p2

    invoke-static {p2, v3, p3, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2119
    array-length p2, p2

    array-length v4, p1

    invoke-static {p1, v3, p3, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2120
    iput-object p3, v6, Lcom/google/c/o;->c:[Lcom/google/c/q;
    :try_end_0
    .catch Lcom/google/c/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :catch_0
    :cond_5
    :goto_1
    sget-object p1, Lcom/google/c/a;->h:Lcom/google/c/a;

    if-eq v1, p1, :cond_6

    sget-object p1, Lcom/google/c/a;->o:Lcom/google/c/a;

    if-ne v1, p1, :cond_a

    .line 203
    :cond_6
    iget-object p1, p0, Lcom/google/c/e/x;->g:Lcom/google/c/e/l;

    .line 3037
    invoke-virtual {p1}, Lcom/google/c/e/l;->a()V

    const/4 p2, 0x3

    .line 3038
    invoke-virtual {p4, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3039
    iget-object p3, p1, Lcom/google/c/e/l;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    move p4, v3

    :goto_2
    if-ge p4, p3, :cond_9

    .line 3041
    iget-object v1, p1, Lcom/google/c/e/l;->a:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 3042
    aget v4, v1, v3

    if-lt p2, v4, :cond_9

    .line 3046
    array-length v5, v1

    if-ne v5, v2, :cond_7

    goto :goto_3

    :cond_7
    aget v4, v1, v2

    :goto_3
    if-gt p2, v4, :cond_8

    .line 3048
    iget-object p1, p1, Lcom/google/c/e/l;->b:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_8
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 205
    sget-object p1, Lcom/google/c/p;->g:Lcom/google/c/p;

    invoke-virtual {v6, p1, v0}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    :cond_a
    return-object v6

    .line 180
    :cond_b
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object p1

    throw p1

    .line 175
    :cond_c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation

    .line 216
    invoke-static {p1}, Lcom/google/c/e/x;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method a(Lcom/google/c/b/a;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/google/c/e/x;->b:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;IZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method abstract b()Lcom/google/c/a;
.end method
