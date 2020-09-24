.class public Lcom/coloros/commons/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final DFLT_TAG:Ljava/lang/String; = "LogUtils"

.field private static final LOG_LIMIT_NUM:I = 0x1

.field public static LOG_LIMIT_SIZE:J = 0x6400000L

.field public static LOG_LIMIT_SIZE_SYSTEM:J = 0xc800000L

.field private static sIsDeleteFile:Z = true

.field private static sIsDevolopMode:Z = false

.field private static sLevel:I = 0x2

.field private static sLogToSD:Z = false

.field private static sLogger:Lorg/apache/log4j/Logger; = null

.field private static sSDLevel:I = 0x4

.field private static sTag:Ljava/lang/String; = "LogUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.sys.assert.panic"

    .line 32
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.assert.enable"

    .line 33
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    .line 35
    sput v2, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lcom/coloros/commons/utils/LogUtils;->sIsDevolopMode:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 38
    sput v2, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v2, 0x1

    .line 39
    sput-boolean v2, Lcom/coloros/commons/utils/LogUtils;->sIsDevolopMode:Z

    .line 42
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qeOff: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], qeOffMtk: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isDevolopMode: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/coloros/commons/utils/LogUtils;->sIsDevolopMode:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLogger()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/coloros/commons/utils/LogUtils;->sLogToSD:Z

    .line 88
    invoke-static {}, Lorg/apache/log4j/LogManager;->shutdown()V

    return-void
.end method

.method public static configFileOutLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phoneclone_log"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x3

    .line 55
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, v1}, Lcom/coloros/commons/utils/LogUtils;->configFileOutLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static configFileOutLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    sput-object p1, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    .line 63
    :cond_0
    sput p3, Lcom/coloros/commons/utils/LogUtils;->sSDLevel:I

    .line 65
    :try_start_0
    new-instance p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;

    invoke-direct {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>()V

    .line 66
    invoke-virtual {p0, p2}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setFileName(Ljava/lang/String;)V

    .line 67
    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setRootLevel(Lorg/apache/log4j/Level;)V

    const-string p1, "org.apache"

    .line 68
    sget-object p2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {p0, p1, p2}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)V

    const-string p1, "%d %-5p [%c{2}]-[%L] %m%n"

    .line 69
    invoke-virtual {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setFilePattern(Ljava/lang/String;)V

    .line 70
    sget-wide p1, Lcom/coloros/commons/utils/LogUtils;->LOG_LIMIT_SIZE:J

    invoke-virtual {p0, p1, p2}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setMaxFileSize(J)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setMaxBackupSize(I)V

    .line 72
    invoke-virtual {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setImmediateFlush(Z)V

    .line 73
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->configure()V

    .line 75
    sget-object p0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p0

    sput-object p0, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    sget-object p1, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initLogger Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 78
    sput-boolean p0, Lcom/coloros/commons/utils/LogUtils;->sLogToSD:Z

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 118
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/commons/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, v0}, Lcom/coloros/commons/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 126
    sget v0, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_1
    :goto_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->isLogToSD()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/coloros/commons/utils/LogUtils;->sSDLevel:I

    if-gt v0, v1, :cond_3

    const-string v0, " "

    if-nez p2, :cond_2

    .line 136
    sget-object p2, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 138
    :cond_2
    sget-object v1, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 172
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/coloros/commons/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-static {p0, p1, v0}, Lcom/coloros/commons/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 184
    sget v0, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_1
    :goto_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->isLogToSD()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/coloros/commons/utils/LogUtils;->sSDLevel:I

    if-gt v0, v1, :cond_3

    const-string v0, " "

    if-nez p2, :cond_2

    .line 194
    sget-object p2, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    goto :goto_1

    .line 196
    :cond_2
    sget-object v1, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 180
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/coloros/commons/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/commons/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 148
    sget v0, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->isLogToSD()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/coloros/commons/utils/LogUtils;->sSDLevel:I

    if-gt v0, v1, :cond_1

    .line 153
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static isDeleteFile()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/coloros/commons/utils/LogUtils;->sIsDeleteFile:Z

    return v0
.end method

.method public static isDevelopMode()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/coloros/commons/utils/LogUtils;->sIsDevolopMode:Z

    return v0
.end method

.method public static isLogToSD()Z
    .locals 1

    .line 100
    sget-boolean v0, Lcom/coloros/commons/utils/LogUtils;->sLogToSD:Z

    return v0
.end method

.method public static setLogToSD(Z)V
    .locals 0

    .line 83
    sput-boolean p0, Lcom/coloros/commons/utils/LogUtils;->sLogToSD:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 104
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/commons/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    sget v0, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->isLogToSD()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/coloros/commons/utils/LogUtils;->sSDLevel:I

    if-gt v0, v1, :cond_1

    .line 113
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coloros/commons/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    sget v0, Lcom/coloros/commons/utils/LogUtils;->sLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->isLogToSD()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/coloros/commons/utils/LogUtils;->sSDLevel:I

    if-gt v0, v1, :cond_1

    .line 167
    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->sLogger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
