.class public abstract Lcom/android/a/a/a/c;
.super Lcom/android/a/a/a/i;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/a/a/a/c<",
        "TM;>;>",
        "Lcom/android/a/a/a/i;"
    }
.end annotation


# instance fields
.field protected a:Lcom/android/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/a/a/a/i;-><init>()V

    return-void
.end method

.method private e()Lcom/android/a/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/android/a/a/a/i;->b()Lcom/android/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/a/c;

    .line 166
    invoke-static {p0, v0}, Lcom/android/a/a/a/g;->a(Lcom/android/a/a/a/c;Lcom/android/a/a/a/c;)V

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    invoke-virtual {v2}, Lcom/android/a/a/a/e;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    invoke-virtual {v2, v1}, Lcom/android/a/a/a/e;->a(I)Lcom/android/a/a/a/f;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/a/a/a/f;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public a(Lcom/android/a/a/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    invoke-virtual {v1}, Lcom/android/a/a/a/e;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    invoke-virtual {v1, v0}, Lcom/android/a/a/a/e;->a(I)Lcom/android/a/a/a/f;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/android/a/a/a/f;->a(Lcom/android/a/a/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final a(Lcom/android/a/a/a/a;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->e()I

    move-result v0

    .line 141
    invoke-virtual {p1, p2}, Lcom/android/a/a/a/a;->b(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 144
    :cond_0
    invoke-static {p2}, Lcom/android/a/a/a/m;->b(I)I

    move-result v1

    .line 145
    invoke-virtual {p1}, Lcom/android/a/a/a/a;->e()I

    move-result v3

    sub-int/2addr v3, v0

    if-nez v3, :cond_1

    .line 1568
    sget-object p1, Lcom/android/a/a/a/m;->h:[B

    goto :goto_0

    .line 1570
    :cond_1
    new-array v4, v3, [B

    .line 1571
    iget v5, p1, Lcom/android/a/a/a/a;->b:I

    add-int/2addr v5, v0

    .line 1572
    iget-object p1, p1, Lcom/android/a/a/a/a;->a:[B

    invoke-static {p1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    .line 147
    :goto_0
    new-instance v0, Lcom/android/a/a/a/l;

    invoke-direct {v0, p2, p1}, Lcom/android/a/a/a/l;-><init>(I[B)V

    .line 150
    iget-object p1, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 151
    new-instance p1, Lcom/android/a/a/a/e;

    invoke-direct {p1}, Lcom/android/a/a/a/e;-><init>()V

    iput-object p1, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    goto :goto_1

    .line 2075
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/a/a/a/e;->c(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 2077
    iget-object v4, p1, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object v4, v4, v3

    sget-object v5, Lcom/android/a/a/a/e;->a:Lcom/android/a/a/a/f;

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 2080
    :cond_3
    iget-object p1, p1, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object p1, p1, v3

    move-object p2, p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    if-nez p2, :cond_a

    .line 156
    new-instance p2, Lcom/android/a/a/a/f;

    invoke-direct {p2}, Lcom/android/a/a/a/f;-><init>()V

    .line 157
    iget-object v3, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    .line 2125
    invoke-virtual {v3, v1}, Lcom/android/a/a/a/e;->c(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 2128
    iget-object v1, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aput-object p2, v1, v4

    goto :goto_2

    :cond_5
    not-int v4, v4

    .line 2132
    iget v5, v3, Lcom/android/a/a/a/e;->e:I

    if-ge v4, v5, :cond_6

    iget-object v5, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aget-object v5, v5, v4

    sget-object v6, Lcom/android/a/a/a/e;->a:Lcom/android/a/a/a/f;

    if-ne v5, v6, :cond_6

    .line 2133
    iget-object v2, v3, Lcom/android/a/a/a/e;->c:[I

    aput v1, v2, v4

    .line 2134
    iget-object v1, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aput-object p2, v1, v4

    goto :goto_2

    .line 2138
    :cond_6
    iget-boolean v5, v3, Lcom/android/a/a/a/e;->b:Z

    if-eqz v5, :cond_7

    iget v5, v3, Lcom/android/a/a/a/e;->e:I

    iget-object v6, v3, Lcom/android/a/a/a/e;->c:[I

    array-length v6, v6

    if-lt v5, v6, :cond_7

    .line 2139
    invoke-virtual {v3}, Lcom/android/a/a/a/e;->a()V

    .line 2142
    invoke-virtual {v3, v1}, Lcom/android/a/a/a/e;->c(I)I

    move-result v4

    not-int v4, v4

    .line 2145
    :cond_7
    iget v5, v3, Lcom/android/a/a/a/e;->e:I

    iget-object v6, v3, Lcom/android/a/a/a/e;->c:[I

    array-length v6, v6

    if-lt v5, v6, :cond_8

    .line 2146
    iget v5, v3, Lcom/android/a/a/a/e;->e:I

    add-int/2addr v5, p1

    invoke-static {v5}, Lcom/android/a/a/a/e;->b(I)I

    move-result v5

    .line 2148
    new-array v6, v5, [I

    .line 2149
    new-array v5, v5, [Lcom/android/a/a/a/f;

    .line 2151
    iget-object v7, v3, Lcom/android/a/a/a/e;->c:[I

    iget-object v8, v3, Lcom/android/a/a/a/e;->c:[I

    array-length v8, v8

    invoke-static {v7, v2, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2152
    iget-object v7, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    iget-object v8, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    array-length v8, v8

    invoke-static {v7, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2154
    iput-object v6, v3, Lcom/android/a/a/a/e;->c:[I

    .line 2155
    iput-object v5, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    .line 2158
    :cond_8
    iget v2, v3, Lcom/android/a/a/a/e;->e:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_9

    .line 2159
    iget-object v2, v3, Lcom/android/a/a/a/e;->c:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lcom/android/a/a/a/e;->e:I

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2160
    iget-object v2, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    iget v6, v3, Lcom/android/a/a/a/e;->e:I

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2163
    :cond_9
    iget-object v2, v3, Lcom/android/a/a/a/e;->c:[I

    aput v1, v2, v4

    .line 2164
    iget-object v1, v3, Lcom/android/a/a/a/e;->d:[Lcom/android/a/a/a/f;

    aput-object p2, v1, v4

    .line 2165
    iget v1, v3, Lcom/android/a/a/a/e;->e:I

    add-int/2addr v1, p1

    iput v1, v3, Lcom/android/a/a/a/e;->e:I

    .line 3058
    :cond_a
    :goto_2
    iget-object p2, p2, Lcom/android/a/a/a/f;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public final synthetic b()Lcom/android/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/android/a/a/a/c;->e()Lcom/android/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/android/a/a/a/c;->e()Lcom/android/a/a/a/c;

    move-result-object v0

    return-object v0
.end method
