.class public final Lcom/google/android/a/a/u;
.super Lcom/google/android/a/a/g;
.source "SendReq.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/google/android/a/a/g;-><init>()V

    const/16 v0, 0x80

    .line 31
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/a/a/u;->a(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/a/a/u;->c()V

    const-string v0, "application/vnd.wap.multipart.related"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lcom/google/android/a/a/u;->a:Lcom/google/android/a/a/l;

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Lcom/google/android/a/a/l;->a([BI)V

    .line 36
    new-instance v0, Lcom/google/android/a/a/e;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/a/e;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/android/a/a/u;->a(Lcom/google/android/a/a/e;)V

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "T"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2047
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2294
    iget-object v1, p0, Lcom/google/android/a/a/u;->a:Lcom/google/android/a/a/l;

    const/16 v2, 0x98

    invoke-virtual {v1, v0, v2}, Lcom/google/android/a/a/l;->a([BI)V
    :try_end_0
    .catch Lcom/google/android/a/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    .line 40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/j;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/a/a/g;-><init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/j;)V

    return-void
.end method
