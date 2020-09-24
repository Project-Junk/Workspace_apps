.class public final Lcom/coloros/settings/privacy/a/d;
.super Ljava/lang/Object;
.source "MethodBuffer.java"


# instance fields
.field private a:Lcom/coloros/settings/privacy/a/f;

.field private b:I

.field private c:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/d;->a:Lcom/coloros/settings/privacy/a/f;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/coloros/settings/privacy/a/d;->b:I

    .line 25
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/d;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/coloros/settings/privacy/a/f;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/d;->a:Lcom/coloros/settings/privacy/a/f;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/coloros/settings/privacy/a/d;->b:I

    .line 25
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/d;->c:[B

    .line 31
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/d;->a:Lcom/coloros/settings/privacy/a/f;

    return-void
.end method

.method private a([B)Lcom/coloros/settings/privacy/a/d;
    .locals 1

    .line 75
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/privacy/a/d;->c:[B

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/privacy/a/d;->c:[B

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/settings/privacy/a/d;->a([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/a/d;->c:[B

    .line 81
    :goto_0
    iget p1, p0, Lcom/coloros/settings/privacy/a/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/settings/privacy/a/d;->b:I

    goto :goto_1

    :cond_1
    const-string p1, "MethodBuffer"

    const-string v0, "appendBytes bytes is empty"

    .line 83
    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private static a([B[B)[B
    .locals 3

    if-eqz p0, :cond_3

    .line 111
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 114
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v1, v0, p0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private static a([B[B[B)[B
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/coloros/settings/privacy/a/d;->a([B[B)[B

    move-result-object p0

    .line 124
    invoke-static {p0, p2}, Lcom/coloros/settings/privacy/a/d;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/coloros/settings/privacy/a/e;[B)[B
    .locals 3

    const-string v0, "MethodBuffer"

    if-eqz p0, :cond_1

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1054
    iget p0, p0, Lcom/coloros/settings/privacy/a/e;->t:I

    .line 92
    invoke-static {p0}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object p0

    .line 93
    array-length v1, p1

    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v1

    .line 94
    invoke-static {p0}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-static {p0, v1, p1}, Lcom/coloros/settings/privacy/a/d;->a([B[B[B)[B

    move-result-object p0

    goto :goto_2

    :cond_0
    const-string p0, "getParamBuffer at least one array is empty"

    .line 98
    invoke-static {v0, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 101
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getParamBuffer methodParamType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", paramBuffer = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {v0, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getParamBuffer e = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;
    .locals 0

    .line 47
    invoke-static {p2}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/d;->b(Lcom/coloros/settings/privacy/a/e;[B)[B

    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/a/d;->a([B)Lcom/coloros/settings/privacy/a/d;

    return-object p0
.end method

.method public final a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;
    .locals 0

    .line 59
    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/d;->b(Lcom/coloros/settings/privacy/a/e;[B)[B

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/a/d;->a([B)Lcom/coloros/settings/privacy/a/d;

    return-object p0
.end method

.method public final a()[B
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/privacy/a/d;->a:Lcom/coloros/settings/privacy/a/f;

    if-eqz v0, :cond_0

    .line 1044
    iget v0, v0, Lcom/coloros/settings/privacy/a/f;->j:I

    .line 68
    invoke-static {v0}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v0

    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/a/d;->a([B[B)[B

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/privacy/a/d;->b:I

    .line 69
    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->a(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/privacy/a/d;->c:[B

    .line 68
    invoke-static {v0, v1, v2}, Lcom/coloros/settings/privacy/a/d;->a([B[B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
