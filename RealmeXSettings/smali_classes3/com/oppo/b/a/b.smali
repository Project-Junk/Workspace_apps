.class public final Lcom/oppo/b/a/b;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field a:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/fonts_base.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/format_unclear/font/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/font/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createFontDirectory filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme_JAR"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/b/a/b;->a(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "chmod 777 "

    .line 61
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 64
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot chmod"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9

    const-string v0, "IOException : "

    const-string v1, "Theme_JAR"

    const-string v2, ""

    const-wide/16 v3, 0x0

    .line 84
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 90
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 91
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    .line 95
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x400

    .line 97
    new-array v6, v6, [B

    .line 100
    :goto_0
    invoke-virtual {p2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v8, 0x0

    .line 101
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 105
    iget-object v6, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 118
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_5

    .line 122
    iget-object p2, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 125
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 108
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_3

    .line 112
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 114
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 118
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_4
    iget-object p2, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_5

    .line 122
    iget-object p2, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/oppo/b/a/b;->a(Ljava/lang/String;)V

    .line 131
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-nez p1, :cond_6

    .line 135
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_6
    return-void

    :goto_2
    if-eqz p2, :cond_7

    .line 118
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_7
    iget-object p2, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_8

    .line 122
    iget-object p2, p0, Lcom/oppo/b/a/b;->a:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 125
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_8
    :goto_3
    throw p1
.end method
