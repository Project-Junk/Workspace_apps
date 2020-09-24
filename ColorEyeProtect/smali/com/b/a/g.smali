.class public final Lcom/b/a/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/b/a;)Lcom/b/a/b;
    .locals 4

    invoke-virtual {p1}, Lcom/b/a/b/a;->a()Z

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/b/a/b/a;->a(Z)V

    :try_start_0
    invoke-static {p1}, Lcom/b/a/a/e;->a(Lcom/b/a/b/a;)Lcom/b/a/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p0}, Lcom/b/a/b/a;->a(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/b/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parsing JSON source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to Json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/b/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parsing JSON source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to Json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/b/a/b/a;->a(Z)V

    throw v0
.end method

.method public a(Ljava/io/Reader;)Lcom/b/a/b;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/b/a/b/a;

    invoke-direct {v0, p1}, Lcom/b/a/b/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/b/a/g;->a(Lcom/b/a/b/a;)Lcom/b/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/b;->h()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;

    move-result-object p1

    sget-object v0, Lcom/b/a/b/b;->j:Lcom/b/a/b/b;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/b/a/i;

    const-string p1, "Did not consume the entire document."

    invoke-direct {p0, p1}, Lcom/b/a/i;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/b/a/b/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/b/a/i;

    invoke-direct {p1, p0}, Lcom/b/a/i;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/b/a/c;

    invoke-direct {p1, p0}, Lcom/b/a/c;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/b/a/i;

    invoke-direct {p1, p0}, Lcom/b/a/i;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/b;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/b/a/g;->a(Ljava/io/Reader;)Lcom/b/a/b;

    move-result-object p0

    return-object p0
.end method
