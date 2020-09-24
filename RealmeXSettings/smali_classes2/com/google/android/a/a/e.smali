.class public final Lcom/google/android/a/a/e;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:I

.field private b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 58
    iput p1, p0, Lcom/google/android/a/a/e;->a:I

    .line 59
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/a/a/e;->b:[B

    .line 60
    iget-object p1, p0, Lcom/google/android/a/a/e;->b:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "EncodedStringValue: Text-string is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "utf-8"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/a/a/e;->b:[B

    const/16 p1, 0x6a

    .line 76
    iput p1, p0, Lcom/google/android/a/a/e;->a:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "EncodedStringValue"

    const-string v1, "Default encoding must be supported."

    .line 78
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x6a

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/google/android/a/a/e;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    if-eqz p1, :cond_0

    .line 124
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/a/a/e;->b:[B

    .line 125
    iget-object v0, p0, Lcom/google/android/a/a/e;->b:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "EncodedStringValue: Text-string is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()[B
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/google/android/a/a/e;->b:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 109
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 136
    iget v0, p0, Lcom/google/android/a/a/e;->a:I

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/a/e;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 140
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/a/a/e;->b:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 147
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/a/e;->b:[B

    const-string v2, "iso-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 149
    :catch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/a/e;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/android/a/a/e;->b:[B

    array-length v1, v0

    .line 193
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 194
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    :try_start_0
    new-instance v0, Lcom/google/android/a/a/e;

    iget v1, p0, Lcom/google/android/a/a/e;->a:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/a/e;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 199
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to clone an EncodedStringValue: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EncodedStringValue"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
