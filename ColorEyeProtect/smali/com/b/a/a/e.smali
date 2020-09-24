.class public final Lcom/b/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/b/a/b/a;)Lcom/b/a/b;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/b/a;->g()Lcom/b/a/b/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/b/a/b/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/b/a/a/a/a;->X:Lcom/b/a/j;

    invoke-virtual {v1, p0}, Lcom/b/a/j;->a(Lcom/b/a/b/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/b;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/b/a/b/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0}, Lcom/b/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/b/a/c;

    invoke-direct {v0, p0}, Lcom/b/a/c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0}, Lcom/b/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object p0, Lcom/b/a/d;->a:Lcom/b/a/d;

    return-object p0

    :cond_0
    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0}, Lcom/b/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/b/a/b;Lcom/b/a/b/c;)V
    .locals 1

    sget-object v0, Lcom/b/a/a/a/a;->X:Lcom/b/a/j;

    invoke-virtual {v0, p1, p0}, Lcom/b/a/j;->a(Lcom/b/a/b/c;Ljava/lang/Object;)V

    return-void
.end method
