.class public final Lcom/google/b/p;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/b/d/a;)Lcom/google/b/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;,
            Lcom/google/b/s;
        }
    .end annotation

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 1333
    iget-boolean v2, p0, Lcom/google/b/d/a;->a:Z

    const/4 v3, 0x1

    .line 2326
    iput-boolean v3, p0, Lcom/google/b/d/a;->a:Z

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/google/b/b/l;->a(Lcom/google/b/d/a;)Lcom/google/b/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    iput-boolean v2, p0, Lcom/google/b/d/a;->a:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 88
    :try_start_1
    new-instance v4, Lcom/google/b/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/b/o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 86
    new-instance v4, Lcom/google/b/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/b/o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4326
    :goto_0
    iput-boolean v2, p0, Lcom/google/b/d/a;->a:Z

    .line 90
    throw v0
.end method

.method private static a(Ljava/io/Reader;)Lcom/google/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;,
            Lcom/google/b/s;
        }
    .end annotation

    .line 58
    :try_start_0
    new-instance v0, Lcom/google/b/d/a;

    invoke-direct {v0, p0}, Lcom/google/b/d/a;-><init>(Ljava/io/Reader;)V

    .line 59
    invoke-static {v0}, Lcom/google/b/p;->a(Lcom/google/b/d/a;)Lcom/google/b/k;

    move-result-object p0

    .line 1075
    instance-of v1, p0, Lcom/google/b/m;

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/b/d/b;->j:Lcom/google/b/d/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Lcom/google/b/s;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/google/b/s;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/b/d/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 69
    new-instance v0, Lcom/google/b/s;

    invoke-direct {v0, p0}, Lcom/google/b/s;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 67
    new-instance v0, Lcom/google/b/l;

    invoke-direct {v0, p0}, Lcom/google/b/l;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 65
    new-instance v0, Lcom/google/b/s;

    invoke-direct {v0, p0}, Lcom/google/b/s;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/s;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/b/p;->a(Ljava/io/Reader;)Lcom/google/b/k;

    move-result-object p0

    return-object p0
.end method
