.class Lcom/c/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private b:I

.field private c:I


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/c/a/a/b;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lcom/c/a/a/b;->c:I

    iget-object v2, p0, Lcom/c/a/a/b;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/c/a/a/b;->a:[I

    array-length v1, v1

    iget v2, p0, Lcom/c/a/a/b;->c:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/c/a/a/b;->a:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v2, p0, Lcom/c/a/a/b;->b:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/c/a/a/b;->a:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iget-object v3, p0, Lcom/c/a/a/b;->a:[I

    aget v2, v3, v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
