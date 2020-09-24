.class public Lcom/heytap/cloud/sdk/base/CloudLogUtils;
.super Ljava/lang/Object;
.source "CloudLogUtils.java"


# static fields
.field public static DEBUG_DATA_COLLECTION:Z = false

.field private static DEBUG_THREAD:Z = false

.field private static final HEAD_ROOT:Ljava/lang/String; = "Cloud."

.field private static final LOG_LEVEL_DEBUG:B = 0x2t

.field private static final LOG_LEVEL_ERROR:B = 0x5t

.field private static final LOG_LEVEL_INFO:B = 0x3t

.field private static final LOG_LEVEL_VERBOSE:B = 0x1t

.field private static final LOG_LEVEL_WARN:B = 0x4t

.field public static sDebug:Z = true

.field public static sLogOn:Z = true

.field public static sQeAssert:Z = true

.field public static sVerbose:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const-string v1, "Cloud."

    .line 52
    invoke-static {v0, v1, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 57
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const-string v1, "Cloud."

    .line 58
    invoke-static {v0, v1, p0, p1, p2}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 63
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static detailE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 172
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static detailI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 160
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-gt v0, v1, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0x3e8

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "info:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 136
    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    const-string v3, "-v"

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 142
    sput-boolean v4, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sVerbose:Z

    goto :goto_0

    :cond_0
    const-string v3, "-d"

    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    sput-boolean v4, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->DEBUG_THREAD:Z

    .line 145
    sput-boolean v4, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sDebug:Z

    .line 146
    sput-boolean v4, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->DEBUG_DATA_COLLECTION:Z

    const-string p1, "sDebug open..."

    .line 147
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "-h"

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "Cloud dump options:"

    .line 150
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    d[debug]: open all debug switch."

    .line 151
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown argument: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; use -h for help"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "Cloud."

    .line 81
    invoke-static {v0, v1, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    const-string v0, "Cloud."

    invoke-static {p2, v0, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "Cloud."

    .line 68
    invoke-static {v0, v1, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    sget-boolean p2, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->DEBUG_THREAD:Z

    if-eqz p2, :cond_0

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 p2, 0x1

    if-ne p2, p0, :cond_1

    .line 99
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne p2, p0, :cond_2

    .line 101
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p2, 0x3

    if-ne p2, p0, :cond_3

    .line 103
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p2, 0x4

    if-ne p2, p0, :cond_4

    .line 105
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 p2, 0x5

    if-ne p2, p0, :cond_5

    .line 107
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    sget-boolean p2, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->DEBUG_THREAD:Z

    if-eqz p2, :cond_0

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 p2, 0x1

    if-ne p2, p0, :cond_1

    .line 121
    invoke-static {p1, p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    const/4 p2, 0x2

    if-ne p2, p0, :cond_2

    .line 123
    invoke-static {p1, p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    const/4 p2, 0x3

    if-ne p2, p0, :cond_3

    .line 125
    invoke-static {p1, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    const/4 p2, 0x4

    if-ne p2, p0, :cond_4

    .line 127
    invoke-static {p1, p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4
    const/4 p2, 0x5

    if-ne p2, p0, :cond_5

    .line 129
    invoke-static {p1, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method public static updatePrintLogFlag(Z)V
    .locals 1

    .line 37
    sput-boolean p0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "updateQeAssert sQeAssert = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cloud..CloudLogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sQeAssert:Z

    if-eqz v0, :cond_1

    .line 43
    sget-boolean v0, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->sVerbose:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "Cloud."

    .line 46
    invoke-static {v0, v1, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Cloud."

    .line 73
    invoke-static {v0, v1, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const-string v0, "Cloud."

    invoke-static {p2, v0, p0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
