.class public Lcom/b/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/io/Writer;

.field private d:[I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    sget-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    sget-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/b/c;->d:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/c;->e:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/b/a/b/c;->a(I)V

    const-string v0, ":"

    iput-object v0, p0, Lcom/b/a/b/c;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/c;->k:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(IILjava/lang/String;)Lcom/b/a/b/c;
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b/c;->f()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    if-nez p1, :cond_3

    iget p1, p0, Lcom/b/a/b/c;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/b/a/b/c;->e:I

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lcom/b/a/b/c;->h()V

    :cond_2
    iget-object p1, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dangling name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/lang/String;)Lcom/b/a/b/c;
    .locals 0

    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    invoke-direct {p0, p1}, Lcom/b/a/b/c;->a(I)V

    iget-object p1, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Lcom/b/a/b/c;->e:I

    iget-object v1, p0, Lcom/b/a/b/c;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/b/c;->e:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/b/a/b/c;->d:[I

    iget v2, p0, Lcom/b/a/b/c;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/b/a/b/c;->d:[I

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/c;->d:[I

    iget v1, p0, Lcom/b/a/b/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/b/a/b/c;->e:I

    aput p1, v0, v1

    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/c;->d:[I

    iget p0, p0, Lcom/b/a/b/c;->e:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/b/a/b/c;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/b/c;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/b/a/b/c;->a:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    aget-object v4, v0, v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_1
    const/16 v5, 0x2028

    if-ne v4, v5, :cond_2

    const-string v4, "\\u2028"

    goto :goto_2

    :cond_2
    const/16 v5, 0x2029

    if-ne v4, v5, :cond_5

    const-string v4, "\\u2029"

    :cond_3
    :goto_2
    if-ge v3, v2, :cond_4

    iget-object v5, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    sub-int v6, v2, v3

    invoke-virtual {v5, p1, v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4
    iget-object v3, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-ge v3, v1, :cond_7

    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    sub-int/2addr v1, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_7
    iget-object p0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/c;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/c;->d:[I

    iget p0, p0, Lcom/b/a/b/c;->e:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/c;->i()V

    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/b/a/b/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/b/a/b/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/b/a/b/c;->e:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    iget-object v3, p0, Lcom/b/a/b/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/b/c;->f()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/b/a/b/c;->h()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/b/a/b/c;->b(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j()V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/b/c;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-boolean v0, p0, Lcom/b/a/b/c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    iget-object v1, p0, Lcom/b/a/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    :goto_1
    invoke-direct {p0, v0}, Lcom/b/a/b/c;->b(I)V

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_2

    :pswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/b/a/b/c;->b(I)V

    :goto_2
    invoke-direct {p0}, Lcom/b/a/b/c;->h()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/b/a/b/c;
    .locals 2

    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    const-string v0, "["

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/b/a/b/c;->a(ILjava/lang/String;)Lcom/b/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method public a(J)Lcom/b/a/b/c;
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/b/a/b/c;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/b/a/b/c;->h:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    iget-object p1, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/b/c;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/b/a/b/c;->e:I

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JsonWriter is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/b/c;->h:Z

    return-void
.end method

.method public b()Lcom/b/a/b/c;
    .locals 3

    const-string v0, "]"

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/b/a/b/c;->a(IILjava/lang/String;)Lcom/b/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/b/a/b/c;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/b/c;->e()Lcom/b/a/b/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    invoke-direct {p0, p1}, Lcom/b/a/b/c;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/b/a/b/c;
    .locals 1

    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Lcom/b/a/b/c;
    .locals 2

    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    const-string v0, "{"

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/b/a/b/c;->a(ILjava/lang/String;)Lcom/b/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/b/a/b/c;->e:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/b/a/b/c;->d:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/b/c;->e:I

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lcom/b/a/b/c;
    .locals 3

    const-string v0, "}"

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/b/a/b/c;->a(IILjava/lang/String;)Lcom/b/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/b/a/b/c;
    .locals 2

    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a/b/c;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/c;->j:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public flush()V
    .locals 1

    iget v0, p0, Lcom/b/a/b/c;->e:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/b/a/b/c;->c:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
