.class public Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;
.super Ljava/lang/Object;
.source "MethodBuffer.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MethodBuffer"


# instance fields
.field private mBuffer:[B

.field private mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

.field private mParamNum:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    return-void
.end method

.method private appendBytes([B)V
    .locals 1

    .line 71
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mBuffer:[B

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mBuffer:[B

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->concat([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mBuffer:[B

    .line 77
    :goto_0
    iget p1, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mParamNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mParamNum:I

    goto :goto_1

    :cond_1
    const-string p0, "MethodBuffer"

    const-string p1, "appendBytes bytes is empty"

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static concat([B[B)[B
    .locals 3

    if-eqz p0, :cond_3

    .line 107
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 110
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 114
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

.method private static concat([B[B[B)[B
    .locals 0

    .line 119
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->concat([B[B)[B

    move-result-object p0

    .line 120
    invoke-static {p0, p2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->concat([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static getParamBuffer(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)[B
    .locals 5

    const-string v0, "MethodBuffer"

    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v2

    if-eqz p0, :cond_1

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->getCode()I

    move-result p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->intToByteArray(I)[B

    move-result-object p0

    .line 89
    array-length v3, p1

    invoke-static {v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->intToByteArray(I)[B

    move-result-object v3

    .line 90
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-static {p0, v3, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->concat([B[B[B)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string p0, "getParamBuffer at least one array is empty"

    .line 94
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamBuffer methodParamType = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isParamBufferArrayEmpty = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParamBuffer e = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method


# virtual methods
.method appendBytesParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;
    .locals 0

    .line 55
    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->getParamBuffer(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)[B

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytes([B)V

    return-object p0
.end method

.method appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;
    .locals 0

    .line 49
    invoke-static {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->intToByteArray(I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->getParamBuffer(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)[B

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytes([B)V

    return-object p0
.end method

.method appendStringParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;Ljava/lang/String;)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->getParamBuffer(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)[B

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytes([B)V

    :cond_0
    return-object p0
.end method

.method buildBuffer()[B
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mMethodType:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->intToByteArray(I)[B

    move-result-object v0

    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->intToByteArray(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->concat([B[B)[B

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mParamNum:I

    .line 65
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->intToByteArray(I)[B

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mBuffer:[B

    .line 64
    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->concat([B[B[B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getParamNum()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->mParamNum:I

    return p0
.end method
