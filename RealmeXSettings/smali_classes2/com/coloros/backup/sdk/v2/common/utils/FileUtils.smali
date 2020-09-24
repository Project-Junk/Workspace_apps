.class public Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 135
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    const/4 v1, 0x0

    .line 138
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    .line 139
    :try_start_1
    new-array p1, p1, [B

    .line 141
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 142
    invoke-virtual {v2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p0, :cond_2

    .line 155
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_2
    :goto_1
    if-eqz v1, :cond_3

    .line 152
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz p0, :cond_4

    .line 155
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    :goto_2
    return v0

    :catch_3
    move-exception p1

    .line 147
    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v2, :cond_5

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    if-eqz p0, :cond_6

    .line 155
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw p1

    :cond_7
    :goto_5
    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p1, 0x400

    .line 171
    :try_start_2
    new-array p1, p1, [B

    .line 173
    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 174
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_0
    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-object v2, v1

    :catch_4
    :goto_2
    if-eqz v1, :cond_4

    .line 185
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 188
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_3
    return v0

    :catch_5
    move-exception p1

    move-object v2, v1

    .line 180
    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v1, :cond_6

    .line 185
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 188
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    throw p1
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 73
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 77
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 78
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v4, :cond_1

    .line 85
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->nioTransferCopy(Ljava/io/File;Ljava/io/File;)Z

    .line 87
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static deleteFileOrFolder(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 52
    array-length v3, v1

    move v4, v2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, v1, v2

    .line 53
    invoke-static {v5}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    move v4, v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    .line 58
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_6

    move v2, v0

    :cond_6
    return v2

    :catch_0
    const-string p0, "FileUtils"

    const-string v1, "deleteFileOrFolder exception"

    .line 63
    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isEmptyFolder(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 213
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 214
    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->isEmptyFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 25
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    .line 32
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "file.renameTo false, "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileUtils"

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public static nioTransferCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 105
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 106
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 108
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v2

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v8

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p1, p0

    move-object p0, v0

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_0

    :catchall_3
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    goto :goto_1

    :catch_3
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    .line 111
    :goto_0
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_1
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz p0, :cond_4

    .line 120
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 123
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    throw v2
.end method

.method public static setPermissionsReadOnly(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x1fd

    .line 197
    invoke-static {p0, v1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method
