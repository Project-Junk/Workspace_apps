.class public final Lcom/coloros/settings/utils/ak;
.super Ljava/lang/Object;
.source "OppoSettingsLog.java"


# static fields
.field private static a:I = 0x2

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.sys.assert.panic"

    .line 36
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.assert.enable"

    .line 37
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LogMsg: qeOff: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mtk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OppoSettingsLog"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "true"

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 41
    sput v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/coloros/settings/utils/ak;->b:Z

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogMsg: log level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/coloros/settings/utils/ak;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDevolopMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/coloros/settings/utils/ak;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a()I
    .locals 1

    .line 52
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 134
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "OppoSettingsLog"

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 62
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 122
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 123
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 146
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 147
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 110
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    sget v0, Lcom/coloros/settings/utils/ak;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
