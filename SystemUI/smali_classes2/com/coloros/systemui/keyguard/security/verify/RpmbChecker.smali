.class public Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;
.super Ljava/lang/Object;
.source "RpmbChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckTokenCallback;,
        Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;
    }
.end annotation


# static fields
.field private static final CHALLENGE_LENGTH:I = 0x40

.field private static final PASSWORD_QUALITY_COMPLEX:I = 0x4

.field private static final PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x3

.field private static final PASSWORD_QUALITY_NUMERIC_FOUR:I = 0x1

.field private static final PASSWORD_QUALITY_NUMERIC_SIX:I = 0x2

.field private static final PASSWORD_QUALITY_PATTERN:I = 0x5

.field private static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field private static final SCREEN_LOCK_SYSTEM_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RpmbChecker"

.field private static final VERIFY_TOKEN_TYPE_DEFAULT:I = 0x8

.field private static final VERIFY_TOKEN_TYPE_REBOOT_SILENCE:I = 0x9

.field private static sSystemType:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 4

    .line 257
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 258
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 263
    new-array v0, v0, [B

    .line 264
    array-length v2, v0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 265
    new-instance p0, Ljava/lang/String;

    array-length v2, v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method static checkPassword([BZLcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;)V
    .locals 5

    if-eqz p1, :cond_0

    const/16 p0, 0x9

    const/16 p1, 0xa

    .line 41
    new-array p1, p1, [B

    move-object v4, p1

    move p1, p0

    move-object p0, v4

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    const-string v0, "RpmbChecker"

    if-eqz p0, :cond_1

    .line 43
    sget v1, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->sSystemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "checkPassword Illegal"

    .line 44
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;-><init>(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    sget v3, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->sSystemType:I

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 48
    invoke-virtual {v1, v2, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p1

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 49
    invoke-virtual {p1, v1, p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytesParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->buildBuffer()[B

    move-result-object p0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->getInstance()Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->processCmdV2([B)[B

    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;->parse([B)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;

    move-result-object p0

    .line 54
    sget-object p1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->isMethodExecuteSuccess(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;Lcom/coloros/systemui/keyguard/security/verify/MethodType;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p0, :cond_7

    .line 56
    sget-object p1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_CHALLENGE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->getResultParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "checkPassword, failed, getResultParam null."

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "resultParamNull"

    .line 59
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    return-void

    .line 62
    :cond_3
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getBuffer()[B

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "checkPassword succeed"

    .line 64
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 66
    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_INFO_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->getResultParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getBuffer()[B

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 70
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 71
    invoke-interface {p2, v1, p1, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;->onChecked(Z[BLjava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "passwordBufferEmpty"

    .line 73
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string p0, "resultSummaryGetResultParamNull"

    .line 76
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    :goto_1
    return-void

    :cond_6
    const-string p0, "resultParamBufferEmpty"

    .line 81
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPassword e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    :cond_7
    :goto_2
    const-string p0, "checkPassword fail"

    .line 89
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    const/4 p0, 0x0

    const/4 p1, 0x0

    const-string v0, ""

    .line 91
    invoke-interface {p2, p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;->onChecked(Z[BLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method static checkToken([BLcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckTokenCallback;)V
    .locals 4

    const-string v0, "RpmbChecker"

    if-eqz p0, :cond_4

    .line 96
    sget v1, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->sSystemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->isScreenLockGetInfoSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;-><init>(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    sget v3, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->sSystemType:I

    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/16 v3, 0x8

    .line 104
    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_VERIFY_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 105
    invoke-virtual {v1, v2, p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytesParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->buildBuffer()[B

    move-result-object p0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->getInstance()Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->processCmdV2([B)[B

    move-result-object p0

    const-string v1, "checkToken(), processCmdV2 ok"

    .line 109
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;->parse([B)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;

    move-result-object p0

    const-string v1, "checkToken(), RpmbResultParser.parse ok"

    .line 111
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_VERIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->isMethodExecuteSuccess(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;Lcom/coloros/systemui/keyguard/security/verify/MethodType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_CHALLENGE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->getResultParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "checkToken, failed, getResultParam null."

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "checkToken(), getResultParam ok"

    .line 118
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getBuffer()[B

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "checkToken succeed"

    .line 121
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 123
    invoke-interface {p1, v1, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckTokenCallback;->onChecked(Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToken e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p0, "checkToken fail"

    .line 131
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-interface {p1, p0, v0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckTokenCallback;->onChecked(Z[B)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p0, "checkToken(), Illegal"

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getUserPasswordType(I)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/high16 v1, 0x10000

    if-eq p0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq p0, v1, :cond_4

    const/high16 v1, 0x30000

    if-eq p0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq p0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method private static isMethodExecuteSuccess(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;Lcom/coloros/systemui/keyguard/security/verify/MethodType;)Z
    .locals 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMethodExecuteSuccess(), methodType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpmbChecker"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "isMethodExecuteSuccess(), resultSummary is null"

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "resultSummaryNull"

    .line 175
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "isMethodExecuteSuccess(), methodType is null"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "methodTypeNull"

    .line 180
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    return v0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->getMethodType()Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "isMethodExecuteSuccess(), resultMethodType is null"

    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "resultMethodTypeNull"

    .line 186
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    return v0

    .line 189
    :cond_2
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->getCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->getCode()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMethodExecuteSuccess(), resultMethodType = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", methodType = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "methodTypeCodeDiff"

    .line 192
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    return v0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->isExeSuccess()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "isMethodExecuteSuccess isExeSuccess = false"

    .line 198
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "resultSummaryIsExeFailed"

    .line 199
    sput-object p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->sRpmbCheckFailedReason:Ljava/lang/String;

    return v0
.end method

.method private static isScreenLockGetInfoSuccess()Z
    .locals 4

    const-string v0, "RpmbChecker"

    .line 206
    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_GET_INFO:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;-><init>(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    sget v3, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->sSystemType:I

    .line 207
    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->buildBuffer()[B

    move-result-object v1

    .line 210
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->getInstance()Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->processCmdV2([B)[B

    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;->parse([B)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_GET_INFO:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->isMethodExecuteSuccess(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;Lcom/coloros/systemui/keyguard/security/verify/MethodType;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScreenLockGetInfoSuccess(), e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 218
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScreenLockGetInfoSuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static modifyPasswordPrivacyByChallenge([BILjava/lang/String;)V
    .locals 4

    const-string v0, "RpmbChecker"

    if-eqz p0, :cond_3

    .line 139
    array-length v1, p0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_MODIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;-><init>(Lcom/coloros/systemui/keyguard/security/verify/MethodType;)V

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    sget v3, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->sSystemType:I

    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object v1

    sget-object v2, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_CHALLENGE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 145
    invoke-virtual {v1, v2, p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytesParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p0

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_INFO_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    const/4 v2, 0x1

    .line 146
    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p0

    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_PWD_TYPE_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 147
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->getUserPasswordType(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendIntParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;I)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p0

    sget-object p1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_INFO_BUFFER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    .line 148
    invoke-static {p2}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->appendBytesParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;[B)Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/MethodBuffer;->buildBuffer()[B

    move-result-object p0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->getInstance()Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->processCmdV2([B)[B

    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser;->parse([B)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;

    move-result-object p0

    .line 153
    sget-object p1, Lcom/coloros/systemui/keyguard/security/verify/MethodType;->CE_CMD_PMS_MODIFY:Lcom/coloros/systemui/keyguard/security/verify/MethodType;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker;->isMethodExecuteSuccess(Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;Lcom/coloros/systemui/keyguard/security/verify/MethodType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    sget-object p1, Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;->PMS_HANDLER_T:Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultSummary;->getResultParam(Lcom/coloros/systemui/keyguard/security/verify/MethodParamType;)Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "modifyPasswordPrivacyByChallenge, failed, getResultParam null."

    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbResultParser$ResultParam;->getBuffer()[B

    move-result-object p0

    .line 160
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isArrayEmpty([B)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "modifyPasswordPrivacyByChallenge succeed"

    .line 161
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "modifyPasswordPrivacyByChallenge e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p0, "modifyPasswordPrivacyByChallenge fail"

    .line 168
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "modifyPasswordPrivacyByChallenge challenge null"

    .line 140
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 3

    const/16 v0, 0x20

    .line 249
    new-array v0, v0, [B

    .line 250
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 251
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method
