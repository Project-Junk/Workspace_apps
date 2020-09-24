.class public final Lcom/coloros/partners/dirac/a/b;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 28
    sget-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 145
    sget-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 67
    sget-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 106
    sget-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 132
    sget-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 158
    sget-boolean v0, Lcom/coloros/partners/dirac/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
