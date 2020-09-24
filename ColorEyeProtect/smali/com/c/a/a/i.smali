.class public abstract Lcom/c/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/c/a/a/d;

.field private b:Lcom/c/a/a/f;

.field private c:Lcom/c/a/a/i;

.field private d:Lcom/c/a/a/i;

.field private e:Ljava/lang/Object;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/i;->a:Lcom/c/a/a/d;

    iput-object v0, p0, Lcom/c/a/a/i;->b:Lcom/c/a/a/f;

    iput-object v0, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/i;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/i;->f:I

    return-void
.end method

.method protected static a(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_1

    if-ge v2, v0, :cond_0

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/16 v4, 0x22

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_0
    const-string v3, "&#39;"

    goto :goto_1

    :pswitch_1
    const-string v3, "&amp;"

    goto :goto_1

    :cond_3
    const-string v3, "&gt;"

    goto :goto_1

    :cond_4
    const-string v3, "&lt;"

    goto :goto_1

    :cond_5
    const-string v3, "&quot;"

    :goto_1
    if-eqz v3, :cond_6

    sub-int v4, v1, v2

    invoke-virtual {p0, p1, v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/c/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/i;->a:Lcom/c/a/a/d;

    return-void
.end method

.method abstract a(Ljava/io/Writer;)V
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/i;->f:I

    iget-object v0, p0, Lcom/c/a/a/i;->a:Lcom/c/a/a/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/c/a/a/i;->a:Lcom/c/a/a/d;

    invoke-virtual {p0}, Lcom/c/a/a/d;->b()V

    :cond_0
    return-void
.end method

.method b(Lcom/c/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/i;->b:Lcom/c/a/a/f;

    return-void
.end method

.method abstract b(Ljava/io/Writer;)V
.end method

.method protected abstract c()I
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method d(Lcom/c/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    :cond_0
    return-void
.end method

.method public f()Lcom/c/a/a/d;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/i;->a:Lcom/c/a/a/d;

    return-object p0
.end method

.method public g()Lcom/c/a/a/f;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/i;->b:Lcom/c/a/a/f;

    return-object p0
.end method

.method public h()Lcom/c/a/a/i;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/c/a/a/i;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a/i;->c()I

    move-result v0

    iput v0, p0, Lcom/c/a/a/i;->f:I

    :cond_0
    iget p0, p0, Lcom/c/a/a/i;->f:I

    return p0
.end method

.method public i()Lcom/c/a/a/i;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    return-object p0
.end method

.method j()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    iget-object v1, p0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    iput-object v1, v0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    iget-object v1, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    iput-object v1, v0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/i;->d:Lcom/c/a/a/i;

    iput-object v0, p0, Lcom/c/a/a/i;->c:Lcom/c/a/a/i;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/c/a/a/i;->b(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/c/a/a/i;->a(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
