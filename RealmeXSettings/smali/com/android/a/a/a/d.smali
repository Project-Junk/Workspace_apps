.class public final Lcom/android/a/a/a/d;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/a/a/a/c<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:I

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field protected final d:Z


# direct methods
.method private b(Ljava/lang/Object;)I
    .locals 3

    .line 319
    iget v0, p0, Lcom/android/a/a/a/d;->c:I

    invoke-static {v0}, Lcom/android/a/a/a/m;->b(I)I

    move-result v0

    .line 320
    iget v1, p0, Lcom/android/a/a/a/d;->a:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 325
    check-cast p1, Lcom/android/a/a/a/i;

    .line 326
    invoke-static {v0, p1}, Lcom/android/a/a/a/b;->b(ILcom/android/a/a/a/i;)I

    move-result p1

    return p1

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/a/a/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_1
    check-cast p1, Lcom/android/a/a/a/i;

    .line 323
    invoke-static {v0, p1}, Lcom/android/a/a/a/b;->a(ILcom/android/a/a/a/i;)I

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/Object;Lcom/android/a/a/a/b;)V
    .locals 2

    .line 263
    :try_start_0
    iget v0, p0, Lcom/android/a/a/a/d;->c:I

    invoke-virtual {p2, v0}, Lcom/android/a/a/a/b;->c(I)V

    .line 264
    iget v0, p0, Lcom/android/a/a/a/d;->a:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 273
    check-cast p1, Lcom/android/a/a/a/i;

    .line 274
    invoke-virtual {p2, p1}, Lcom/android/a/a/a/b;->b(Lcom/android/a/a/a/i;)V

    return-void

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/a/a/a/d;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_1
    check-cast p1, Lcom/android/a/a/a/i;

    .line 267
    iget v0, p0, Lcom/android/a/a/a/d;->c:I

    invoke-static {v0}, Lcom/android/a/a/a/m;->b(I)I

    move-result v0

    .line 1514
    invoke-virtual {p1, p2}, Lcom/android/a/a/a/i;->a(Lcom/android/a/a/a/b;)V

    const/4 p1, 0x4

    .line 270
    invoke-virtual {p2, v0, p1}, Lcom/android/a/a/a/b;->a(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 281
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 4

    .line 297
    iget-boolean v0, p0, Lcom/android/a/a/a/d;->d:Z

    if-eqz v0, :cond_2

    .line 2307
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2309
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2311
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/a/a/a/d;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 300
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/a/a/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method final a(Ljava/lang/Object;Lcom/android/a/a/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/android/a/a/a/d;->d:Z

    if-eqz v0, :cond_2

    .line 1287
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1289
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1291
    invoke-direct {p0, v2, p2}, Lcom/android/a/a/a/d;->b(Ljava/lang/Object;Lcom/android/a/a/a/b;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 256
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/a/a/a/d;->b(Ljava/lang/Object;Lcom/android/a/a/a/b;)V

    return-void
.end method
