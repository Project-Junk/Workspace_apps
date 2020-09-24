.class final Lcom/google/c/c/c/n;
.super Lcom/google/c/c/c/c;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/c/c/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method final a(CLjava/lang/StringBuilder;)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_1

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v1, 0x30

    if-lt p1, v1, :cond_4

    const/16 v2, 0x39

    if-gt p1, v2, :cond_4

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v1, 0x41

    if-lt p1, v1, :cond_5

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_5

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_5
    invoke-static {p1}, Lcom/google/c/c/c/j;->c(C)V

    :goto_0
    return v0
.end method

.method public final a(Lcom/google/c/c/c/h;)V
    .locals 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/c/c/c/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/c/c/c/h;->a()C

    move-result v1

    .line 32
    iget v2, p1, Lcom/google/c/c/c/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/c/c/c/h;->f:I

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/google/c/c/c/n;->a(CLjava/lang/StringBuilder;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    .line 37
    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 38
    invoke-static {p1, v0}, Lcom/google/c/c/c/n;->a(Lcom/google/c/c/c/h;Ljava/lang/StringBuilder;)V

    .line 1062
    iget-object v1, p1, Lcom/google/c/c/c/h;->a:Ljava/lang/String;

    .line 40
    iget v3, p1, Lcom/google/c/c/c/h;->f:I

    invoke-static {v1, v3, v2}, Lcom/google/c/c/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 3098
    iput v1, p1, Lcom/google/c/c/c/h;->g:I

    .line 47
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/c/c/c/n;->b(Lcom/google/c/c/c/h;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method final b(Lcom/google/c/c/c/h;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 72
    invoke-virtual {p1}, Lcom/google/c/c/c/h;->d()V

    .line 3118
    iget-object v0, p1, Lcom/google/c/c/c/h;->h:Lcom/google/c/c/c/k;

    .line 3214
    iget v0, v0, Lcom/google/c/c/c/k;->b:I

    .line 4090
    iget-object v1, p1, Lcom/google/c/c/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 v1, 0xfe

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Lcom/google/c/c/c/h;->a(C)V

    .line 77
    iget p2, p1, Lcom/google/c/c/c/h;->f:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/google/c/c/c/h;->f:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 80
    iget p2, p1, Lcom/google/c/c/c/h;->f:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/google/c/c/c/h;->f:I

    if-le v0, v2, :cond_1

    .line 82
    invoke-virtual {p1, v1}, Lcom/google/c/c/c/h;->a(C)V

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 5098
    iput p2, p1, Lcom/google/c/c/c/h;->g:I

    :cond_2
    return-void
.end method
