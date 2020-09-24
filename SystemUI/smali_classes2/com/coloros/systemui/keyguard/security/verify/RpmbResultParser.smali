.class public Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;
.super Ljava/lang/Object;
.source "RpmbResultParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;,
        Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;
    }
.end annotation


# static fields
.field private static final INT_LEN:I = 0x4

.field private static final RESULT_HEAD_LEN:I = 0xc

.field private static final RESULT_PARAM_HEAD_LEN:I = 0x8

.field private static final TAG:Ljava/lang/String; = "RpmbResultParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse([B)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;
    .locals 13

    .line 32
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RpmbResultParser"

    if-eqz v0, :cond_0

    const-string p0, "parse(), buffer is empty"

    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 36
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;-><init>()V

    .line 37
    array-length v3, p0

    const/16 v4, 0xc

    if-lt v3, v4, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 41
    invoke-static {p0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 43
    invoke-static {v7}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v8

    if-nez v8, :cond_e

    .line 44
    invoke-static {v7}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->byteArrayToInt([B)I

    move-result v7

    if-lez v7, :cond_d

    .line 51
    invoke-static {v7}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->get(I)Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 53
    invoke-virtual {v0, v7}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->setMethodType(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V

    const/16 v7, 0x8

    .line 64
    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 66
    invoke-static {v6}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v8

    if-nez v8, :cond_b

    .line 67
    invoke-static {v6}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->byteArrayToInt([B)I

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x1

    .line 71
    invoke-virtual {v0, v6}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->setIsExeSuccess(Z)V

    .line 82
    invoke-static {p0, v7, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 84
    invoke-static {v6}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v7

    if-nez v7, :cond_9

    .line 85
    invoke-static {v6}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->byteArrayToInt([B)I

    move-result v6

    if-lez v6, :cond_8

    .line 92
    invoke-virtual {v0, v6}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->setParamsNum(I)V

    :goto_0
    if-ge v5, v6, :cond_10

    add-int/lit8 v7, v4, 0x8

    const-string v8, ", totalBufferNum = "

    if-ge v7, v3, :cond_7

    .line 96
    new-instance v7, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;

    invoke-direct {v7}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;-><init>()V

    add-int/lit8 v9, v4, 0x4

    .line 98
    invoke-static {p0, v4, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 100
    invoke-static {v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v10

    if-nez v10, :cond_6

    .line 101
    invoke-static {v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->byteArrayToInt([B)I

    move-result v4

    .line 102
    invoke-static {v4}, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->get(I)Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 104
    invoke-virtual {v7, v4}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->setMethodParamType(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)V

    add-int/lit8 v4, v9, 0x4

    .line 116
    invoke-static {p0, v9, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 118
    invoke-static {v10}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v11

    const-string v12, "parse(), bufferLenBytes is empty i = "

    if-nez v11, :cond_4

    .line 119
    invoke-static {v10}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->byteArrayToInt([B)I

    move-result v10

    if-lez v10, :cond_3

    .line 121
    invoke-virtual {v7, v10}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->setBufferLen(I)V

    .line 131
    invoke-virtual {v7}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getBufferLen()I

    move-result v9

    add-int v10, v4, v9

    if-gt v10, v3, :cond_2

    .line 133
    invoke-static {p0, v4, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 135
    invoke-static {v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v8

    if-nez v8, :cond_1

    .line 136
    invoke-virtual {v7, v4}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->setBuffer([B)V

    .line 137
    invoke-virtual {v0, v7}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->addResultParam(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;)V

    move v4, v10

    goto :goto_1

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse(), resultBuffer is empty i = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hasParsedBytesNum = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bufferlen = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 124
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse(), bufferLen is invalid, i = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 128
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 107
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse(), methodParamType is null, i = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 111
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse(), methodParamsTypeBytes is empty i = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 150
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse(), invalid (hasParsedBytesNum + RESULT_PARAM_HEAD_LEN) = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 156
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse(), invalid paramsNum = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string p0, "parse(), paramsNumBytes is empty"

    .line 88
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 73
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse(), exeResultCode = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    const-string p0, "parse(), isExeSuccessBytes is empty"

    .line 77
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_c
    const-string p0, "parse(), invalid methodType is null"

    .line 55
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 59
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse(), invalid methodTypeCode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_e
    const-string p0, "parse(), methodTypeBytes is empty"

    .line 47
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 159
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse(), totalBufferNum = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_2
    return-object v0
.end method
