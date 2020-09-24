.class public final Lcom/coloros/settings/privacy/a/i;
.super Ljava/lang/Object;
.source "RpmbResultParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/a/i$a;,
        Lcom/coloros/settings/privacy/a/i$b;
    }
.end annotation


# direct methods
.method public static a([B)Lcom/coloros/settings/privacy/a/i$b;
    .locals 13

    .line 26
    invoke-static {p0}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RpmbResultParser"

    if-eqz v0, :cond_0

    const-string p0, "buffer is empty"

    .line 27
    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 30
    :cond_0
    new-instance v0, Lcom/coloros/settings/privacy/a/i$b;

    invoke-direct {v0}, Lcom/coloros/settings/privacy/a/i$b;-><init>()V

    .line 31
    array-length v3, p0

    const/16 v4, 0xc

    if-lt v3, v4, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 35
    invoke-static {p0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 37
    invoke-static {v7}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v8

    if-nez v8, :cond_e

    .line 38
    invoke-static {v7}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v7

    if-lez v7, :cond_d

    .line 45
    invoke-static {v7}, Lcom/coloros/settings/privacy/a/f;->a(I)Lcom/coloros/settings/privacy/a/f;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1167
    iput-object v7, v0, Lcom/coloros/settings/privacy/a/i$b;->a:Lcom/coloros/settings/privacy/a/f;

    const/16 v7, 0x8

    .line 58
    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 60
    invoke-static {v6}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v8

    if-nez v8, :cond_b

    .line 61
    invoke-static {v6}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x1

    .line 1179
    iput-boolean v6, v0, Lcom/coloros/settings/privacy/a/i$b;->b:Z

    .line 76
    invoke-static {p0, v7, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 78
    invoke-static {v6}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v7

    if-nez v7, :cond_9

    .line 79
    invoke-static {v6}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v6

    if-lez v6, :cond_8

    .line 1183
    iput v6, v0, Lcom/coloros/settings/privacy/a/i$b;->c:I

    :goto_0
    if-ge v5, v6, :cond_10

    add-int/lit8 v7, v4, 0x8

    const-string v8, ", totalBufferNum = "

    if-ge v7, v3, :cond_7

    .line 90
    new-instance v7, Lcom/coloros/settings/privacy/a/i$a;

    invoke-direct {v7}, Lcom/coloros/settings/privacy/a/i$a;-><init>()V

    add-int/lit8 v9, v4, 0x4

    .line 92
    invoke-static {p0, v4, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 94
    invoke-static {v4}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v10

    if-nez v10, :cond_6

    .line 95
    invoke-static {v4}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v4

    .line 96
    invoke-static {v4}, Lcom/coloros/settings/privacy/a/e;->a(I)Lcom/coloros/settings/privacy/a/e;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1214
    iput-object v4, v7, Lcom/coloros/settings/privacy/a/i$a;->a:Lcom/coloros/settings/privacy/a/e;

    add-int/lit8 v4, v9, 0x4

    .line 111
    invoke-static {p0, v9, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 113
    invoke-static {v10}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v11

    const-string v12, "parse bufferLenBytes is empty i = "

    if-nez v11, :cond_4

    .line 114
    invoke-static {v10}, Lcom/coloros/settings/privacy/a/k;->a([B)I

    move-result v10

    if-lez v10, :cond_3

    .line 1222
    iput v10, v7, Lcom/coloros/settings/privacy/a/i$a;->b:I

    .line 1226
    iget v9, v7, Lcom/coloros/settings/privacy/a/i$a;->b:I

    add-int v10, v4, v9

    if-gt v10, v3, :cond_2

    .line 128
    invoke-static {p0, v4, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 130
    invoke-static {v4}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1230
    iput-object v4, v7, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 132
    invoke-virtual {v0, v7}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/i$a;)V

    move v4, v10

    goto :goto_1

    .line 135
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "parse resultBuffer is empty i = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 139
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 119
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "parse bufferLen is invalid, i = "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/settings/privacy/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v9

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 123
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v12, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 102
    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "parse methodParamType is null, i = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 106
    :cond_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "parse methodParamsTypeBytes is empty i = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "parse invalid (hasParsedBytesNum + RESULT_PARAM_HEAD_LEN) = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 151
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parse invalid paramsNum = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string p0, "parse paramsNumBytes is empty"

    .line 82
    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 67
    :cond_a
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parse exeResultCode = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    const-string p0, "parse isExeSuccessBytes is empty"

    .line 71
    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_c
    const-string p0, "parse invalid methodType is null"

    .line 49
    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 53
    :cond_d
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "parse invalid methodTypeCode = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_e
    const-string p0, "parse methodTypeBytes is empty"

    .line 41
    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 154
    :cond_f
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parse totalBufferNum = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/privacy/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_2
    return-object v0
.end method
