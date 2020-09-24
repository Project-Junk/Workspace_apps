.class public final Lcom/android/a/a/a/k$a;
.super Lcom/android/a/a/a/c;
.source "ProtobufEccData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/a/a/a/c<",
        "Lcom/android/a/a/a/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public d:[Lcom/android/a/a/a/k$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 377
    invoke-direct {p0}, Lcom/android/a/a/a/c;-><init>()V

    const/4 v0, 0x0

    .line 1382
    iput v0, p0, Lcom/android/a/a/a/k$a;->c:I

    .line 1383
    invoke-static {}, Lcom/android/a/a/a/k$b;->e()[Lcom/android/a/a/a/k$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    const/4 v0, 0x0

    .line 1384
    iput-object v0, p0, Lcom/android/a/a/a/k$a;->a:Lcom/android/a/a/a/e;

    const/4 v0, -0x1

    .line 1385
    iput v0, p0, Lcom/android/a/a/a/k$a;->b:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .line 408
    invoke-super {p0}, Lcom/android/a/a/a/c;->a()I

    move-result v0

    .line 409
    iget v1, p0, Lcom/android/a/a/a/k$a;->c:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 5609
    invoke-static {v2}, Lcom/android/a/a/a/b;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/a/a/a/b;->a(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 415
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 418
    invoke-static {v3, v2}, Lcom/android/a/a/a/b;->b(ILcom/android/a/a/a/i;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/android/a/a/a/a;)Lcom/android/a/a/a/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->a()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 6435
    invoke-virtual {p0, p1, v0}, Lcom/android/a/a/a/k$a;->a(Lcom/android/a/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6446
    :cond_1
    invoke-static {p1, v1}, Lcom/android/a/a/a/m;->a(Lcom/android/a/a/a/a;I)I

    move-result v0

    .line 6447
    iget-object v1, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 6448
    new-array v0, v0, [Lcom/android/a/a/a/k$b;

    if-eqz v1, :cond_3

    .line 6451
    iget-object v3, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6453
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 6454
    new-instance v2, Lcom/android/a/a/a/k$b;

    invoke-direct {v2}, Lcom/android/a/a/a/k$b;-><init>()V

    aput-object v2, v0, v1

    .line 6455
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/a/a/a/a;->a(Lcom/android/a/a/a/i;)V

    .line 6456
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6459
    :cond_4
    new-instance v2, Lcom/android/a/a/a/k$b;

    invoke-direct {v2}, Lcom/android/a/a/a/k$b;-><init>()V

    aput-object v2, v0, v1

    .line 6460
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/a/a/a/a;->a(Lcom/android/a/a/a/i;)V

    .line 6461
    iput-object v0, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    goto :goto_0

    .line 7169
    :cond_5
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->c()I

    move-result v0

    .line 6441
    iput v0, p0, Lcom/android/a/a/a/k$a;->c:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final a(Lcom/android/a/a/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget v0, p0, Lcom/android/a/a/a/k$a;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2123
    invoke-virtual {p1, v2, v1}, Lcom/android/a/a/a/b;->a(II)V

    if-ltz v0, :cond_0

    .line 2281
    invoke-virtual {p1, v0}, Lcom/android/a/a/a/b;->c(I)V

    goto :goto_1

    :cond_0
    int-to-long v2, v0

    :goto_0
    const-wide/16 v4, -0x80

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 3987
    invoke-virtual {p1, v0}, Lcom/android/a/a/a/b;->a(B)V

    goto :goto_1

    :cond_1
    long-to-int v0, v2

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 4987
    invoke-virtual {p1, v0}, Lcom/android/a/a/a/b;->a(B)V

    const/4 v0, 0x7

    ushr-long/2addr v2, v0

    goto :goto_0

    .line 395
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 396
    :goto_2
    iget-object v0, p0, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 397
    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {p1, v0}, Lcom/android/a/a/a/b;->a(Lcom/android/a/a/a/i;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 403
    :cond_4
    invoke-super {p0, p1}, Lcom/android/a/a/a/c;->a(Lcom/android/a/a/a/b;)V

    return-void
.end method
