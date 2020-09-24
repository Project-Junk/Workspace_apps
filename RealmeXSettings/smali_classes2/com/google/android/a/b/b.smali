.class public final Lcom/google/android/a/b/b;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# instance fields
.field private a:Landroid/drm/DrmManagerClient;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/a/b/b;->a:Landroid/drm/DrmManagerClient;

    .line 37
    iput p2, p0, Lcom/google/android/a/b/b;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/a/b/b;
    .locals 6

    const-string v0, "DrmConvertSession"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v3, ""

    .line 50
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    :try_start_0
    new-instance v3, Landroid/drm/DrmManagerClient;

    invoke-direct {v3, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "Could not access Open DrmFramework."

    .line 59
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Conversion of Mimetype: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_2
    move-object v3, v1

    :catch_3
    const-string p0, "DrmManagerClient didn\'t initialize properly."

    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-object v3, v1

    :catch_5
    const-string p0, "DrmManagerClient instance could not be created, context is Illegal."

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    if-gez v2, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p0, Lcom/google/android/a/b/b;

    invoke-direct {p0, v3, v2}, Lcom/google/android/a/b/b;-><init>(Landroid/drm/DrmManagerClient;I)V

    return-object p0

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 10

    const-string v0, "."

    const-string v1, "Failed to close File:"

    const-string v2, "DrmConvertSession"

    .line 127
    iget-object v3, p0, Lcom/google/android/a/b/b;->a:Landroid/drm/DrmManagerClient;

    const/16 v4, 0x1ec

    const/16 v5, 0x1eb

    if-eqz v3, :cond_3

    iget v6, p0, Lcom/google/android/a/b/b;->b:I

    if-ltz v6, :cond_3

    .line 129
    :try_start_0
    invoke-virtual {v3, v6}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 130
    iget v6, v3, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_10

    if-nez v6, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v6, 0x0

    .line 137
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    iget v8, v3, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    iget-object v3, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v3, 0xc8

    .line 156
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    move v4, v3

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move v4, v3

    goto/16 :goto_9

    :catch_1
    move-exception v3

    .line 159
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_f

    goto/16 :goto_b

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v3

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    move-object v7, v6

    goto/16 :goto_5

    :catch_6
    move-exception v3

    move-object v7, v6

    .line 151
    :goto_1
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Access to File: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was denied denied by SecurityManager."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_3

    .line 156
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_10

    goto/16 :goto_a

    :catch_7
    move-exception v3

    .line 159
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_f

    goto :goto_0

    :catchall_1
    move-exception v3

    goto/16 :goto_5

    :catch_8
    move-exception v3

    move-object v7, v6

    :goto_2
    :try_start_8
    const-string v5, "Could not open file in mode: rw"

    .line 149
    invoke-static {v2, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v7, :cond_4

    .line 156
    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_f

    goto/16 :goto_b

    :catch_9
    move-exception v3

    .line 159
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_0

    :catch_a
    move-exception v3

    move-object v7, v6

    .line 146
    :goto_3
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Could not access File: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v7, :cond_4

    .line 156
    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_f

    goto/16 :goto_b

    :catch_b
    move-exception v3

    .line 159
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_f

    goto/16 :goto_0

    :catch_c
    move-exception v3

    move-object v7, v6

    .line 143
    :goto_4
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "File: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " could not be found."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v7, :cond_4

    .line 156
    :try_start_f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_b

    :catch_d
    move-exception v3

    .line 159
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_f

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    move v5, v4

    :goto_5
    if-eqz v7, :cond_1

    .line 156
    :try_start_11
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_6

    :catch_e
    move-exception v5

    .line 159
    :try_start_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_1
    :goto_6
    move v4, v5

    .line 161
    :goto_7
    throw v3
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_f

    :catch_f
    move-exception v0

    goto :goto_9

    :cond_2
    :goto_8
    const/16 v4, 0x196

    goto :goto_b

    :catch_10
    move-exception v0

    move v4, v5

    .line 166
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not close convertsession. Convertsession: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/a/b/b;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :cond_3
    :goto_a
    move v4, v5

    :cond_4
    :goto_b
    return v4
.end method

.method public final a([BI)[B
    .locals 4

    const-string v0, "DrmConvertSession"

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 88
    :try_start_0
    array-length v2, p1

    if-eq p2, v2, :cond_0

    .line 89
    new-array v2, p2, [B

    const/4 v3, 0x0

    .line 90
    invoke-static {p1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object p1, p0, Lcom/google/android/a/b/b;->a:Landroid/drm/DrmManagerClient;

    iget p2, p0, Lcom/google/android/a/b/b;->b:I

    invoke-virtual {p1, p2, v2}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/google/android/a/b/b;->a:Landroid/drm/DrmManagerClient;

    iget v2, p0, Lcom/google/android/a/b/b;->b:I

    invoke-virtual {p2, v2, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 96
    iget p2, p1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    iget-object p2, p1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz p2, :cond_1

    .line 99
    iget-object p1, p1, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Could not convert data. Convertsession: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/a/b/b;->b:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Buffer with data to convert is illegal. Convertsession: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/a/b/b;->b:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v1

    .line 109
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter inBuffer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
