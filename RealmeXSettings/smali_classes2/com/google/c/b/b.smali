.class public final Lcom/google/c/b/b;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p1}, Lcom/google/c/b/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 50
    iput p1, p0, Lcom/google/c/b/b;->a:I

    .line 51
    iput p2, p0, Lcom/google/c/b/b;->b:I

    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    .line 52
    iput p1, p0, Lcom/google/c/b/b;->c:I

    .line 53
    iget p1, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/c/b/b;->d:[I

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(ILcom/google/c/b/a;)Lcom/google/c/b/a;
    .locals 4

    if-eqz p2, :cond_0

    .line 1040
    iget v0, p2, Lcom/google/c/b/a;->b:I

    .line 137
    iget v1, p0, Lcom/google/c/b/b;->a:I

    if-ge v0, v1, :cond_1

    .line 138
    :cond_0
    new-instance p2, Lcom/google/c/b/a;

    iget v0, p0, Lcom/google/c/b/b;->a:I

    invoke-direct {p2, v0}, Lcom/google/c/b/a;-><init>(I)V

    .line 140
    :cond_1
    iget v0, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr p1, v0

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget v1, p0, Lcom/google/c/b/b;->c:I

    if-ge v0, v1, :cond_2

    shl-int/lit8 v1, v0, 0x5

    .line 142
    iget-object v2, p0, Lcom/google/c/b/b;->d:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    .line 1134
    iget-object v3, p2, Lcom/google/c/b/a;->a:[I

    shr-int/lit8 v1, v1, 0x5

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final a()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 96
    iget-object v3, p0, Lcom/google/c/b/b;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    if-lez p4, :cond_3

    if-lez p3, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 117
    iget v0, p0, Lcom/google/c/b/b;->b:I

    if-gt p4, v0, :cond_2

    iget v0, p0, Lcom/google/c/b/b;->a:I

    if-gt p3, v0, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    .line 121
    iget v0, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr v0, p2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_0

    .line 123
    iget-object v2, p0, Lcom/google/c/b/b;->d:[I

    shr-int/lit8 v3, v1, 0x5

    add-int/2addr v3, v0

    aget v4, v2, v3

    and-int/lit8 v5, v1, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 65
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(II)V
    .locals 3

    .line 75
    iget v0, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 76
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public final b(ILcom/google/c/b/a;)V
    .locals 3

    .line 1288
    iget-object p2, p2, Lcom/google/c/b/a;->a:[I

    .line 152
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    iget v1, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr p1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()[I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/google/c/b/b;->d:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/google/c/b/b;->d:[I

    array-length v3, v2

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_1
    iget v3, p0, Lcom/google/c/b/b;->c:I

    div-int v4, v1, v3

    .line 222
    rem-int v3, v1, v3

    shl-int/lit8 v3, v3, 0x5

    .line 224
    aget v1, v2, v1

    move v2, v0

    :goto_1
    rsub-int/lit8 v5, v2, 0x1f

    shl-int v5, v1, v5

    if-nez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v2

    const/4 v1, 0x2

    .line 230
    new-array v1, v1, [I

    aput v3, v1, v0

    const/4 v0, 0x1

    aput v4, v1, v0

    return-object v1
.end method

.method public final c(II)V
    .locals 3

    .line 86
    iget v0, p0, Lcom/google/c/b/b;->c:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 87
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public final c()[I
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/google/c/b/b;->d:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_1
    iget v2, p0, Lcom/google/c/b/b;->c:I

    div-int v3, v0, v2

    .line 243
    rem-int v2, v0, v2

    shl-int/lit8 v2, v2, 0x5

    .line 245
    iget-object v4, p0, Lcom/google/c/b/b;->d:[I

    aget v0, v4, v0

    const/16 v4, 0x1f

    :goto_1
    ushr-int v5, v0, v4

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v4

    const/4 v0, 0x2

    .line 252
    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v2, v0, v4

    aput v3, v0, v1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 271
    instance-of v0, p1, Lcom/google/c/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 274
    :cond_0
    check-cast p1, Lcom/google/c/b/b;

    .line 275
    iget v0, p0, Lcom/google/c/b/b;->a:I

    iget v2, p1, Lcom/google/c/b/b;->a:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/google/c/b/b;->b:I

    iget v2, p1, Lcom/google/c/b/b;->b:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/google/c/b/b;->c:I

    iget v2, p1, Lcom/google/c/b/b;->c:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    array-length v0, v0

    iget-object v2, p1, Lcom/google/c/b/b;->d:[I

    array-length v2, v2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/google/c/b/b;->d:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 280
    aget v2, v2, v0

    iget-object v3, p1, Lcom/google/c/b/b;->d:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 289
    iget v0, p0, Lcom/google/c/b/b;->a:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 291
    iget v0, p0, Lcom/google/c/b/b;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 292
    iget v0, p0, Lcom/google/c/b/b;->c:I

    add-int/2addr v1, v0

    .line 293
    iget-object v0, p0, Lcom/google/c/b/b;->d:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/c/b/b;->b:I

    iget v2, p0, Lcom/google/c/b/b;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 302
    :goto_0
    iget v3, p0, Lcom/google/c/b/b;->b:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 303
    :goto_1
    iget v4, p0, Lcom/google/c/b/b;->a:I

    if-ge v3, v4, :cond_1

    .line 304
    invoke-virtual {p0, v3, v2}, Lcom/google/c/b/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "X "

    goto :goto_2

    :cond_0
    const-string v4, "  "

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
