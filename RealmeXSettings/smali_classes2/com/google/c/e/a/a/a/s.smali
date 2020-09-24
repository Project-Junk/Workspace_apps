.class final Lcom/google/c/e/a/a/a/s;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final a:Lcom/google/c/b/a;

.field private final b:Lcom/google/c/e/a/a/a/m;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/c/b/a;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/c/e/a/a/a/m;

    invoke-direct {v0}, Lcom/google/c/e/a/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 43
    iput-object p1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    return-void
.end method

.method static a(Lcom/google/c/b/a;II)I
    .locals 4

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    .line 113
    invoke-virtual {p0, v2}, Lcom/google/c/b/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a()Lcom/google/c/e/a/a/a/o;
    .locals 4

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 11049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 143
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    invoke-virtual {v1}, Lcom/google/c/e/a/a/a/m;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/google/c/e/a/a/a/s;->d()Lcom/google/c/e/a/a/a/l;

    move-result-object v1

    .line 11052
    iget-boolean v2, v1, Lcom/google/c/e/a/a/a/l;->b:Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    invoke-virtual {v1}, Lcom/google/c/e/a/a/a/m;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/google/c/e/a/a/a/s;->c()Lcom/google/c/e/a/a/a/l;

    move-result-object v1

    .line 12052
    iget-boolean v2, v1, Lcom/google/c/e/a/a/a/l;->b:Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/google/c/e/a/a/a/s;->b()Lcom/google/c/e/a/a/a/l;

    move-result-object v1

    .line 13052
    iget-boolean v2, v1, Lcom/google/c/e/a/a/a/l;->b:Z

    .line 154
    :goto_0
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 14049
    iget v3, v3, Lcom/google/c/e/a/a/a/m;->a:I

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v2, :cond_0

    .line 15048
    :cond_5
    iget-object v0, v1, Lcom/google/c/e/a/a/a/l;->a:Lcom/google/c/e/a/a/a/o;

    return-object v0
.end method

.method private a(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x7

    .line 73
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 4040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x4

    .line 74
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 5040
    iget v0, v0, Lcom/google/c/b/a;->b:I

    if-gt p1, v0, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    move v0, p1

    :goto_0
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    invoke-virtual {v1, v0}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    invoke-virtual {p1, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result p1

    return p1
.end method

.method private b()Lcom/google/c/e/a/a/a/l;
    .locals 5

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 15049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 164
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 16049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 165
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->b(I)Lcom/google/c/e/a/a/a/p;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 17041
    iget v2, v0, Lcom/google/c/e/a/a/a/q;->d:I

    .line 17053
    iput v2, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 168
    invoke-virtual {v0}, Lcom/google/c/e/a/a/a/p;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/google/c/e/a/a/a/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v0, Lcom/google/c/e/a/a/a/o;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 18049
    iget v1, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 171
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_0
    new-instance v1, Lcom/google/c/e/a/a/a/o;

    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 19049
    iget v3, v3, Lcom/google/c/e/a/a/a/m;->a:I

    .line 173
    iget-object v4, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19060
    iget v0, v0, Lcom/google/c/e/a/a/a/p;->b:I

    .line 173
    invoke-direct {v1, v3, v4, v0}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 175
    :goto_1
    new-instance v1, Lcom/google/c/e/a/a/a/l;

    invoke-direct {v1, v0, v2}, Lcom/google/c/e/a/a/a/l;-><init>(Lcom/google/c/e/a/a/a/o;Z)V

    return-object v1

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 20056
    iget v3, v0, Lcom/google/c/e/a/a/a/p;->a:I

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Lcom/google/c/e/a/a/a/p;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    new-instance v0, Lcom/google/c/e/a/a/a/o;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 21049
    iget v1, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 180
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 181
    new-instance v1, Lcom/google/c/e/a/a/a/l;

    invoke-direct {v1, v0, v2}, Lcom/google/c/e/a/a/a/l;-><init>(Lcom/google/c/e/a/a/a/o;Z)V

    return-object v1

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 21060
    iget v0, v0, Lcom/google/c/e/a/a/a/p;->b:I

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 22049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 186
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 22077
    sget v1, Lcom/google/c/e/a/a/a/m$a;->b:I

    iput v1, v0, Lcom/google/c/e/a/a/a/m;->b:I

    .line 188
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/c/e/a/a/a/m;->a(I)V

    .line 190
    :cond_4
    new-instance v0, Lcom/google/c/e/a/a/a/l;

    invoke-direct {v0}, Lcom/google/c/e/a/a/a/l;-><init>()V

    return-object v0
.end method

.method private b(I)Lcom/google/c/e/a/a/a/p;
    .locals 3

    add-int/lit8 v0, p1, 0x7

    .line 87
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 6040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Lcom/google/c/e/a/a/a/p;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 7040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    .line 90
    invoke-direct {p1, v1, v0, v0}, Lcom/google/c/e/a/a/a/p;-><init>(III)V

    return-object p1

    .line 92
    :cond_0
    new-instance v1, Lcom/google/c/e/a/a/a/p;

    iget-object v2, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 8040
    iget v2, v2, Lcom/google/c/b/a;->b:I

    add-int/lit8 p1, p1, -0x1

    .line 92
    invoke-direct {v1, v2, p1, v0}, Lcom/google/c/e/a/a/a/p;-><init>(III)V

    return-object v1

    :cond_1
    const/4 v1, 0x7

    .line 94
    invoke-virtual {p0, p1, v1}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    .line 96
    div-int/lit8 v1, p1, 0xb

    .line 97
    rem-int/lit8 p1, p1, 0xb

    .line 99
    new-instance v2, Lcom/google/c/e/a/a/a/p;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/c/e/a/a/a/p;-><init>(III)V

    return-object v2
.end method

.method private c()Lcom/google/c/e/a/a/a/l;
    .locals 3

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 23049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 194
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 24049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 195
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->d(I)Lcom/google/c/e/a/a/a/n;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 25041
    iget v2, v0, Lcom/google/c/e/a/a/a/q;->d:I

    .line 25053
    iput v2, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 198
    invoke-virtual {v0}, Lcom/google/c/e/a/a/a/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Lcom/google/c/e/a/a/a/o;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 26049
    iget v1, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 199
    iget-object v2, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 200
    new-instance v1, Lcom/google/c/e/a/a/a/l;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/c/e/a/a/a/l;-><init>(Lcom/google/c/e/a/a/a/o;Z)V

    return-object v1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 27045
    iget-char v0, v0, Lcom/google/c/e/a/a/a/n;->a:C

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 27049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 205
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/c/e/a/a/a/m;->a(I)V

    .line 207
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 27073
    sget v1, Lcom/google/c/e/a/a/a/m$a;->a:I

    iput v1, v0, Lcom/google/c/e/a/a/a/m;->b:I

    goto :goto_2

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 28049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 208
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 29049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 209
    iget-object v2, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 30040
    iget v2, v2, Lcom/google/c/b/a;->b:I

    if-ge v0, v2, :cond_3

    .line 210
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/google/c/e/a/a/a/m;->a(I)V

    goto :goto_1

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 31040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    .line 31053
    iput v1, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 31077
    sget v1, Lcom/google/c/e/a/a/a/m$a;->b:I

    iput v1, v0, Lcom/google/c/e/a/a/a/m;->b:I

    .line 217
    :cond_4
    :goto_2
    new-instance v0, Lcom/google/c/e/a/a/a/l;

    invoke-direct {v0}, Lcom/google/c/e/a/a/a/l;-><init>()V

    return-object v0
.end method

.method private c(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x5

    .line 249
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 41040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v0, :cond_1

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x7

    .line 258
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 42040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x7

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    const/16 v1, 0x74

    if-ge v0, v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, p1, 0x8

    .line 267
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 43040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    if-le v0, v1, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x8

    .line 271
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result p1

    const/16 v0, 0xe8

    if-lt p1, v0, :cond_5

    const/16 v0, 0xfd

    if-ge p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private d()Lcom/google/c/e/a/a/a/l;
    .locals 3

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 32049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 221
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 33049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 222
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->f(I)Lcom/google/c/e/a/a/a/n;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 34041
    iget v2, v0, Lcom/google/c/e/a/a/a/q;->d:I

    .line 34053
    iput v2, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 225
    invoke-virtual {v0}, Lcom/google/c/e/a/a/a/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Lcom/google/c/e/a/a/a/o;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 35049
    iget v1, v1, Lcom/google/c/e/a/a/a/m;->a:I

    .line 226
    iget-object v2, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 227
    new-instance v1, Lcom/google/c/e/a/a/a/l;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/c/e/a/a/a/l;-><init>(Lcom/google/c/e/a/a/a/o;Z)V

    return-object v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    .line 36045
    iget-char v0, v0, Lcom/google/c/e/a/a/a/n;->a:C

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 36049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 233
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/c/e/a/a/a/m;->a(I)V

    .line 235
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 36073
    sget v1, Lcom/google/c/e/a/a/a/m$a;->a:I

    iput v1, v0, Lcom/google/c/e/a/a/a/m;->b:I

    goto :goto_2

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 37049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 236
    invoke-direct {p0, v0}, Lcom/google/c/e/a/a/a/s;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 38049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 237
    iget-object v2, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 39040
    iget v2, v2, Lcom/google/c/b/a;->b:I

    if-ge v0, v2, :cond_3

    .line 238
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/google/c/e/a/a/a/m;->a(I)V

    goto :goto_1

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 40040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    .line 40053
    iput v1, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 40081
    sget v1, Lcom/google/c/e/a/a/a/m$a;->c:I

    iput v1, v0, Lcom/google/c/e/a/a/a/m;->b:I

    .line 245
    :cond_4
    :goto_2
    new-instance v0, Lcom/google/c/e/a/a/a/l;

    invoke-direct {v0}, Lcom/google/c/e/a/a/a/l;-><init>()V

    return-object v0
.end method

.method private d(I)Lcom/google/c/e/a/a/a/n;
    .locals 4

    const/4 v0, 0x5

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 279
    new-instance v1, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v1

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 283
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_1
    const/4 v0, 0x7

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v1, v2, :cond_2

    if-ge v1, v3, :cond_2

    .line 289
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_2
    if-lt v1, v3, :cond_3

    const/16 v2, 0x74

    if-ge v1, v2, :cond_3

    .line 293
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_3
    const/16 v0, 0x8

    .line 296
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 363
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Decoding invalid ISO/IEC 646 value: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3e

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x3d

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x3c

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x3b

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x3a

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x2b

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x2a

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x29

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x28

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x27

    goto :goto_0

    :pswitch_11
    const/16 v1, 0x26

    goto :goto_0

    :pswitch_12
    const/16 v1, 0x25

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x22

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x21

    .line 365
    :goto_0
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 369
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 44040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 374
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_1

    if-ge v1, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x6

    .line 379
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 45040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x6

    .line 383
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result p1

    if-lt p1, v4, :cond_3

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method private f(I)Lcom/google/c/e/a/a/a/n;
    .locals 3

    const/4 v0, 0x5

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 390
    new-instance v1, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v1

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 394
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_1
    const/4 v0, 0x6

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/google/c/e/a/a/a/s;->a(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_2

    .line 400
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x21

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 421
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Decoding invalid alphanumeric value: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x2a

    .line 423
    :goto_0
    new-instance v2, Lcom/google/c/e/a/a/a/n;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/google/c/e/a/a/a/n;-><init>(IC)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 427
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 46040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    .line 431
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 47040
    iget v3, v3, Lcom/google/c/b/a;->b:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 433
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    invoke-virtual {v3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private h(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 446
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 48040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 451
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    invoke-virtual {v1, p1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private i(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 461
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 49040
    iget v1, v1, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int v1, v0, p1

    .line 465
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    .line 50040
    iget v3, v3, Lcom/google/c/b/a;->b:I

    if-ge v1, v3, :cond_2

    .line 466
    iget-object v3, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    invoke-virtual {v3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final a(II)I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->a:Lcom/google/c/b/a;

    invoke-static {v0, p1, p2}, Lcom/google/c/e/a/a/a/s;->a(Lcom/google/c/b/a;II)I

    move-result p1

    return p1
.end method

.method final a(ILjava/lang/String;)Lcom/google/c/e/a/a/a/o;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 8053
    iput p1, p2, Lcom/google/c/e/a/a/a/m;->a:I

    .line 130
    invoke-direct {p0}, Lcom/google/c/e/a/a/a/s;->a()Lcom/google/c/e/a/a/a/o;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8058
    iget-boolean p2, p1, Lcom/google/c/e/a/a/a/o;->c:Z

    if-eqz p2, :cond_1

    .line 132
    new-instance p2, Lcom/google/c/e/a/a/a/o;

    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 9049
    iget v0, v0, Lcom/google/c/e/a/a/a/m;->a:I

    .line 132
    iget-object v1, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9062
    iget p1, p1, Lcom/google/c/e/a/a/a/o;->b:I

    .line 132
    invoke-direct {p2, v0, v1, p1}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;I)V

    return-object p2

    .line 134
    :cond_1
    new-instance p1, Lcom/google/c/e/a/a/a/o;

    iget-object p2, p0, Lcom/google/c/e/a/a/a/s;->b:Lcom/google/c/e/a/a/a/m;

    .line 10049
    iget p2, p2, Lcom/google/c/e/a/a/a/m;->a:I

    .line 134
    iget-object v0, p0, Lcom/google/c/e/a/a/a/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/c/e/a/a/a/o;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method final a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 50
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/google/c/e/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/c/e/a/a/a/o;

    move-result-object v1

    .line 1054
    iget-object v2, v1, Lcom/google/c/e/a/a/a/o;->a:Ljava/lang/String;

    .line 51
    invoke-static {v2}, Lcom/google/c/e/a/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_0
    iget-boolean v2, v1, Lcom/google/c/e/a/a/a/o;->c:Z

    if-eqz v2, :cond_1

    .line 1062
    iget v2, v1, Lcom/google/c/e/a/a/a/o;->b:I

    .line 56
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 2041
    :goto_1
    iget v3, v1, Lcom/google/c/e/a/a/a/q;->d:I

    if-eq p2, v3, :cond_2

    .line 3041
    iget p2, v1, Lcom/google/c/e/a/a/a/q;->d:I

    move-object v1, v2

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
