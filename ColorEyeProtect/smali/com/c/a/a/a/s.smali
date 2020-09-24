.class public Lcom/c/a/a/a/s;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field private final d:Ljava/lang/StringBuffer;

.field private e:I

.field private final f:Ljava/io/Reader;

.field private final g:[I

.field private h:Z

.field private i:C


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/c/a/a/a/s;->a:I

    iput v0, p0, Lcom/c/a/a/a/s;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/c/a/a/a/s;->g:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/s;->h:Z

    iput-char v0, p0, Lcom/c/a/a/a/s;->i:C

    iput-object p1, p0, Lcom/c/a/a/a/s;->f:Ljava/io/Reader;

    :goto_0
    iget-object p1, p0, Lcom/c/a/a/a/s;->g:[I

    array-length p1, p1

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a/a/s;->a()I

    return-void

    :cond_0
    const/16 p1, 0x41

    if-gt p1, v0, :cond_1

    const/16 p1, 0x5a

    if-le v0, p1, :cond_3

    :cond_1
    const/16 p1, 0x61

    if-gt p1, v0, :cond_2

    const/16 p1, 0x7a

    if-le v0, p1, :cond_3

    :cond_2
    const/16 p1, 0x2d

    if-ne v0, p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/c/a/a/a/s;->g:[I

    const/4 v1, -0x3

    aput v1, p1, v0

    goto :goto_1

    :cond_4
    const/16 p1, 0x30

    if-gt p1, v0, :cond_5

    const/16 p1, 0x39

    if-gt v0, p1, :cond_5

    iget-object p1, p0, Lcom/c/a/a/a/s;->g:[I

    const/4 v1, -0x2

    aput v1, p1, v0

    goto :goto_1

    :cond_5
    if-ltz v0, :cond_6

    const/16 p1, 0x20

    if-gt v0, p1, :cond_6

    iget-object p1, p0, Lcom/c/a/a/a/s;->g:[I

    const/4 v1, -0x5

    aput v1, p1, v0

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/c/a/a/a/s;->g:[I

    aput v0, p1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 10

    iget-boolean v0, p0, Lcom/c/a/a/a/s;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/c/a/a/a/s;->h:Z

    iget p0, p0, Lcom/c/a/a/a/s;->a:I

    return p0

    :cond_0
    iget v0, p0, Lcom/c/a/a/a/s;->e:I

    iput v0, p0, Lcom/c/a/a/a/s;->a:I

    :cond_1
    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/c/a/a/a/s;->f:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-char v4, p0, Lcom/c/a/a/a/s;->i:C

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unterminated quote"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v4, p0, Lcom/c/a/a/a/s;->g:[I

    aget v4, v4, v2

    :goto_0
    iget-char v5, p0, Lcom/c/a/a/a/s;->i:C

    const/4 v6, -0x5

    const/4 v7, 0x1

    if-nez v5, :cond_5

    if-ne v4, v6, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    if-nez v0, :cond_7

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v7

    :goto_3
    if-nez v5, :cond_2

    const/16 v5, 0x22

    const/16 v8, 0x27

    if-eq v4, v8, :cond_8

    if-ne v4, v5, :cond_a

    :cond_8
    iget-char v9, p0, Lcom/c/a/a/a/s;->i:C

    if-nez v9, :cond_9

    int-to-char v9, v4

    iput-char v9, p0, Lcom/c/a/a/a/s;->i:C

    goto :goto_4

    :cond_9
    iget-char v9, p0, Lcom/c/a/a/a/s;->i:C

    if-ne v9, v4, :cond_a

    iput-char v1, p0, Lcom/c/a/a/a/s;->i:C

    :cond_a
    :goto_4
    iget-char v9, p0, Lcom/c/a/a/a/s;->i:C

    if-eqz v9, :cond_b

    iget-char v4, p0, Lcom/c/a/a/a/s;->i:C

    :cond_b
    if-nez v0, :cond_e

    iget v0, p0, Lcom/c/a/a/a/s;->a:I

    if-lt v0, v3, :cond_c

    iget v0, p0, Lcom/c/a/a/a/s;->a:I

    if-eq v0, v8, :cond_c

    iget v0, p0, Lcom/c/a/a/a/s;->a:I

    if-ne v0, v5, :cond_e

    :cond_c
    iget v0, p0, Lcom/c/a/a/a/s;->a:I

    if-eq v0, v4, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_6

    :cond_e
    :goto_5
    move v0, v7

    :goto_6
    if-eqz v0, :cond_11

    iget v3, p0, Lcom/c/a/a/a/s;->a:I

    if-eq v3, v5, :cond_f

    if-eq v3, v8, :cond_f

    packed-switch v3, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v3, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/c/a/a/a/s;->b:I

    goto :goto_8

    :pswitch_1
    iget-object v3, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    iput-object v3, p0, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    :goto_8
    iget-object v3, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_9

    :cond_f
    iget-object v3, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :goto_9
    if-eq v4, v6, :cond_11

    const/4 v3, -0x6

    if-ne v4, v3, :cond_10

    move v3, v2

    goto :goto_a

    :cond_10
    move v3, v4

    :goto_a
    iput v3, p0, Lcom/c/a/a/a/s;->e:I

    :cond_11
    if-eq v4, v5, :cond_12

    if-eq v4, v8, :cond_12

    packed-switch v4, :pswitch_data_1

    goto :goto_b

    :cond_12
    :pswitch_2
    iget-object v3, p0, Lcom/c/a/a/a/s;->d:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_b
    if-eqz v0, :cond_1

    iget p0, p0, Lcom/c/a/a/a/s;->a:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(C)V
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/s;->g:[I

    aput p1, p0, p1

    return-void
.end method

.method public a(CC)V
    .locals 2

    :goto_0
    if-le p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/s;->g:[I

    const/4 v1, -0x3

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/s;->h:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/c/a/a/a/s;->a:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lcom/c/a/a/a/s;->a:I

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "(EOF)"

    return-object p0

    :pswitch_1
    iget p0, p0, Lcom/c/a/a/a/s;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
