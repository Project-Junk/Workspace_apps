.class public Lcom/coloros/commons/utils/LogUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:J = 0x6400000L

.field public static b:J = 0xc800000L

.field private static c:I = 0x2

.field private static d:I = 0x4

.field private static e:Lorg/apache/log4j/Logger; = null

.field private static f:Z = false

.field private static g:Z = false

.field private static h:Z = true

.field private static i:Ljava/lang/String; = "LogUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.assert.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    sput v2, Lcom/coloros/commons/utils/LogUtils;->c:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    sput v2, Lcom/coloros/commons/utils/LogUtils;->c:I

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/coloros/commons/utils/LogUtils;->g:Z

    const-string v2, "LogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qeOff: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], qeOffMtk: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isDevolopMode: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/coloros/commons/utils/LogUtils;->g:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/commons/utils/LogUtils;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/coloros/commons/utils/LogUtils;->d:I

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->e:Lorg/apache/log4j/Logger;

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

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/commons/utils/LogUtils;->f:Z

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/coloros/commons/utils/LogUtils;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/coloros/commons/utils/LogUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/coloros/commons/utils/LogUtils;->d:I

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/coloros/commons/utils/LogUtils;->e:Lorg/apache/log4j/Logger;

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
