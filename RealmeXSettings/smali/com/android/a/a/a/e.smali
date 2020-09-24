.class public final Lcom/android/a/a/a/e;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Lcom/android/a/a/a/f;


# instance fields
.field b:Z

.field c:[I

.field d:[Lcom/android/a/a/a/f;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/android/a/a/a/f;

    invoke-direct {v0}, Lcom/android/a/a/a/f;-><init>()V

    sput-object v0, Lcom/android/a/a/a/e;->a:Lcom/android/a/a/a/f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 55
    invoke-direct {p0, v0}, Lcom/android/a/a/a/e;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/a/a/a/e;->b:Z

    .line 64
    invoke-static {p1}, Lcom/android/a/a/a/e;->b(I)I

    move-result p1

    .line 65
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/a/a/a/e;->c:[I

    .line 66
    new-array p1, p1, [Lcom/android/a/a/a/f;

    iput-object p1, p0, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    .line 67
    iput v0, p0, Lcom/android/a/a/a/e;->e:I

    return-void
.end method

.method static b(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 229
    invoke-static {p0}, Lcom/android/a/a/a/e;->d(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static d(I)I
    .locals 2

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method


# virtual methods
.method final a(I)Lcom/android/a/a/a/f;
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/a/a/a/e;->b:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/a/a/a/e;->a()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final a()V
    .locals 8

    .line 97
    iget v0, p0, Lcom/android/a/a/a/e;->e:I

    .line 99
    iget-object v1, p0, Lcom/android/a/a/a/e;->c:[I

    .line 100
    iget-object v2, p0, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 103
    aget-object v6, v2, v4

    .line 105
    sget-object v7, Lcom/android/a/a/a/e;->a:Lcom/android/a/a/a/f;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 107
    aget v7, v1, v4

    aput v7, v1, v5

    .line 108
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 109
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v3, p0, Lcom/android/a/a/a/e;->b:Z

    .line 117
    iput v5, p0, Lcom/android/a/a/a/e;->e:I

    return-void
.end method

.method final b()I
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/a/a/a/e;->b:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/a/a/a/e;->a()V

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/a/a/a/e;->e:I

    return v0
.end method

.method final c(I)I
    .locals 4

    .line 242
    iget v0, p0, Lcom/android/a/a/a/e;->e:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 246
    iget-object v3, p0, Lcom/android/a/a/a/e;->c:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    not-int p1, v1

    return p1
.end method

.method public final c()Lcom/android/a/a/a/e;
    .locals 5

    .line 280
    invoke-virtual {p0}, Lcom/android/a/a/a/e;->b()I

    move-result v0

    .line 281
    new-instance v1, Lcom/android/a/a/a/e;

    invoke-direct {v1, v0}, Lcom/android/a/a/a/e;-><init>(I)V

    .line 282
    iget-object v2, p0, Lcom/android/a/a/a/e;->c:[I

    iget-object v3, v1, Lcom/android/a/a/a/e;->c:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v4, v0, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, v1, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/a/a/a/f;->b()Lcom/android/a/a/a/f;

    move-result-object v2

    aput-object v2, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iput v0, v1, Lcom/android/a/a/a/e;->e:I

    return-object v1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/android/a/a/a/e;->c()Lcom/android/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 203
    :cond_0
    instance-of v1, p1, Lcom/android/a/a/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 207
    :cond_1
    check-cast p1, Lcom/android/a/a/a/e;

    .line 208
    invoke-virtual {p0}, Lcom/android/a/a/a/e;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/a/a/a/e;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/android/a/a/a/e;->c:[I

    iget-object v3, p1, Lcom/android/a/a/a/e;->c:[I

    iget v4, p0, Lcom/android/a/a/a/e;->e:I

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    .line 1261
    aget v6, v1, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    .line 211
    iget-object v1, p0, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    iget-object p1, p1, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    iget v3, p0, Lcom/android/a/a/a/e;->e:I

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    .line 1270
    aget-object v5, v1, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/android/a/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 217
    iget-boolean v0, p0, Lcom/android/a/a/a/e;->b:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/a/a/a/e;->a()V

    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 221
    :goto_0
    iget v2, p0, Lcom/android/a/a/a/e;->e:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget-object v2, p0, Lcom/android/a/a/a/e;->c:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-object v2, p0, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/a/a/a/f;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
