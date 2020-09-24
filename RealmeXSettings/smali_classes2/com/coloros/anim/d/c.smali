.class public final Lcom/coloros/anim/d/c;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/coloros/anim/d/b;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/d/c;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    .line 34
    new-instance p1, Lcom/coloros/anim/d/b;

    iget-object v0, p0, Lcom/coloros/anim/d/c;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/coloros/anim/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/anim/d/c;->b:Lcom/coloros/anim/d/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/anim/e;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/e<",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation

    .line 1088
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1089
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 1091
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1094
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 1108
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4a67ee1e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0x29cf5b9

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "application/json"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_2
    const-string v3, "application/zip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v5

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    const-string v1, "Received json response."

    .line 1117
    invoke-static {v1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1118
    sget-object v1, Lcom/coloros/anim/d/a;->a:Lcom/coloros/anim/d/a;

    .line 1119
    iget-object v2, p0, Lcom/coloros/anim/d/c;->b:Lcom/coloros/anim/d/b;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/coloros/anim/d/b;->a(Ljava/io/InputStream;Lcom/coloros/anim/d/a;)Ljava/io/File;

    move-result-object v0

    .line 1120
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v1, "Handling zip response."

    .line 1110
    invoke-static {v1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 1111
    sget-object v1, Lcom/coloros/anim/d/a;->b:Lcom/coloros/anim/d/a;

    .line 1112
    iget-object v2, p0, Lcom/coloros/anim/d/c;->b:Lcom/coloros/anim/d/b;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/coloros/anim/d/b;->a(Ljava/io/InputStream;Lcom/coloros/anim/d/a;)Ljava/io/File;

    move-result-object v0

    .line 1113
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/coloros/anim/g;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object v0

    .line 2031
    :goto_1
    iget-object v2, v0, Lcom/coloros/anim/e;->a:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1125
    iget-object v2, p0, Lcom/coloros/anim/d/c;->b:Lcom/coloros/anim/d/b;

    .line 2107
    iget-object v3, v2, Lcom/coloros/anim/d/b;->b:Ljava/lang/String;

    invoke-static {v3, v1, v6}, Lcom/coloros/anim/d/b;->a(Ljava/lang/String;Lcom/coloros/anim/d/a;Z)Ljava/lang/String;

    move-result-object v1

    .line 2108
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/coloros/anim/d/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".temp"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2110
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 2112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Copying temp file to real file ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    if-nez v1, :cond_5

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to rename cache file "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/k;->b(Ljava/lang/String;)V

    .line 1128
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completed fetch from network. Success: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3031
    iget-object v2, v0, Lcom/coloros/anim/e;->a:Ljava/lang/Object;

    if-eqz v2, :cond_6

    move v5, v6

    .line 1128
    :cond_6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    return-object v0

    .line 1095
    :cond_7
    :goto_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1099
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1101
    :cond_8
    new-instance v1, Lcom/coloros/anim/e;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to fetch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/coloros/anim/e;

    invoke-direct {v1, v0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method
